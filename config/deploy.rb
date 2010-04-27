set :stages, %w(demo production)
set :default_stage, 'demo'

require 'capistrano/ext/multistage'

namespace :deploy do
  desc "run 'bundle install' to install Bundler's packaged gems for the current deploy"
  task :bundle_install, :roles => :app do
    run "cd #{release_path} && bundle install"
  end
end

# load custom rake tasks after the default tasks
# load_paths << 'config/deploy'
# load 'common'

after "deploy:update_code", "deploy:bundle_install"
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
