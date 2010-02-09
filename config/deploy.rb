set :stages, %w(demo production)
set :default_stage, 'demo'

require 'capistrano/ext/multistage'
#require 'mongrel_cluster/recipes'

#namespace :deploy do
#  task :geminstaller, :roles => :app do
#    sudo "geminstaller -c #{current_release}/config/geminstaller.yml"
#  end
#end

namespace :bundler do
  task :install do
    run("gem install bundler -v0.8.1 --source=http://gemcutter.org")
  end

  task :symlink_vendor do
    shared_gems = File.join(shared_path, 'vendor/bundler_gems/ruby/1.8')
    release_gems = "#{release_path}/vendor/bundler_gems/ruby/1.8"
    %w(cache gems specifications).each do |sub_dir|
      shared_sub_dir = File.join(shared_gems, sub_dir)
      run("mkdir -p #{shared_sub_dir} && mkdir -p #{release_gems} && ln -s #{shared_sub_dir} #{release_gems}/#{sub_dir}")
    end
  end

  task :bundle_new_release do
    bundler.symlink_vendor
    run("cd #{release_path} && gem bundle --only #{rails_env}")
  end
end

# hook into capistrano's deploy task
after 'deploy:update_code', 'bundler:bundle_new_release'

# load custom rake tasks after the default tasks
# load_paths << 'config/deploy'
# load 'common'

#after "deploy:update_code", "deploy:geminstaller"
before "deploy:migrate", "deploy:web:disable"
after "deploy:migrate", "deploy:web:enable"
after "deploy:migrate", "deploy:cleanup"

set :ssh_options, {:forward_agent => true}
on :start do `ssh-add` end

set :repository,  "git@github.com:dmgoud/gostaberling.git"
set :scm, "git"
set :scm_passphrase, "admin2day"
set :user, "david"

set :runner, "david"
set :use_sudo, false
set :group_writable, false
set :keep_releases, 3

role :app, "67.207.130.206"
role :web, "67.207.130.206"
role :db,  "67.207.130.206", :primary => true
