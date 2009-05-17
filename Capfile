load 'deploy' if respond_to?(:namespace) # cap2 differentiator
Dir['vendor/plugins/*/recipes/*.rb'].each { |plugin| load(plugin) }
load 'config/deploy'

default_run_options[:pty] = true

namespace :deploy do
  desc "Restart Application"
  task :restart, :roles => :app do
    run "touch #{current_path}/tmp/restart.txt"
  end

  desc "Not used with Passenger"
  task :start, :roles => :app do
    # nothing
  end

  desc "Not used with Passenger"
  task :stop, :roles => :app do
    # nothing
  end
end
