# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../lib/google_analytics',  __FILE__)
use Rack::GoogleAnalytics, 'UA-25804693-1'

require ::File.expand_path('../config/environment',  __FILE__)
run Surveys::Application
