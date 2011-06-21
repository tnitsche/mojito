# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
require 'rake'

# fix for some odd rake warnings; see 
# http://stackoverflow.com/questions/6199301/global-access-to-rake-dsl-methods-is-deprecated
include Rake::DSL 

Mojito::Application.load_tasks
