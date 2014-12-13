require 'bundler'
Bundler.require

set :application, "fn.lc"
set :domain, "raven.fn.lc"
set :deploy_to, "/srv/http/alphaproject.me"
set :repository, 'https://github.com/UBCAlphaProject/alpha-project-site.git'


task :deploy do
    deploy do
        invoke :'git:clone'
        queue 'ls'
        queue 'bundle'
        queue 'bower install'
    end
end
