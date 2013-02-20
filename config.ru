require 'rack'

use Rack::ShowExceptions
use Rack::Lint
use Rack::ContentLength
run lambda { |env| [200, {'Content-Type' => 'text/plain'}, ["pid: #{$$}"]] }
