# This file is used by Rack-based servers to start the application.

RAILS_RELATIVE_URL_ROOT="/ariue"
require_relative 'config/environment'

if RAILS_RELATIVE_URL_ROOT
  map RAILS_RELATIVE_URL_ROOT do
    run Rails.application
  end
else
  run Rails.application
end
