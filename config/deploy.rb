# encoding: utf-8

require 'bundler'
Bundler.require

set :application, "fn.lc"
set :domain, "raven.fn.lc"
set :deploy_to, "/srv/http/alphaproject.me"
set :repository, 'https://github.com/UBCAlphaProject/alpha-project-site.git'


task :deploy do
    deploy do
        invoke :'git:clone'
        queue 'bundle'
        queue 'bower install > /dev/null'
        queue 'jekyll build'
    end
end
