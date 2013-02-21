require 'rack'

app = lambda { |env|
  [
    200,
    {'Content-Type' => 'text/plain'},
    [
      "#{RUBY_DESCRIPTION}\n",
      "pid: #{$$}\n",
      "#{File.read('/proc/cpuinfo')}",
    ]
  ]
}

run Rack::ShowExceptions.new(Rack::Lint.new(Rack::ContentLength.new(app)))
