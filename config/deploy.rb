# config valid only for current version of Capistrano
set :application, 'trial_site'
set :repo_url, 'git@github.com:stefanobkk/Trackstor.git'
set :rvm_ruby_version, '2.2.1'
set :deploy_to, '/home/stefanobkk/trial_site'
set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system', 'public/uploads')
set :keep_releases, 3

namespace :deploy do
  task :restart do
  on roles(:app), in: :sequence do
    execute :touch, release_path.join('tmp/restart.txt')
    end
  end
  after :publishing, :restart
end
