rails_root = File.expand_path('../../', __FILE__)
rails_env = ENV['RAILS_ENV'] || "development"

worker_processes 1
working_directory rails_root

### unicorn standalone
#listen 8080

### unicorn & nginx
# using UNIX socket
listen "#{rails_root}/tmp/sockets/unicorn.sock"

pid "#{rails_root}/tmp/pids/unicorn.pid"

stderr_path = "#{rails_root}/log/#{rails_env}_error.log"
stdout_path = "#{rails_root}/log/#{rails_env}.log"
