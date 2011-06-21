require "bundler/capistrano" # runs bundle:install automatically

set :application, "mojito"

set :scm, :git
set :scm_verbose, true
set :repository,  "git@github.com:tnitsche/mojito.git"
set :branch, "master"
set :repository_cache, "git_master"
set :deploy_via, :remote_cache
set :deploy_to, "/var/www/roots/mojito"

set :use_sudo, false
set :ssh_options, { :forward_agent => true }
 
role :app, "moji.to"
role :web, "moji.to"
role :db,  "moji.to", :primary => true

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end

        require './config/boot'
        require 'hoptoad_notifier/capistrano'
