require 'rack'

app = lambda { |env|
  [
    200,
    {'Content-Type' => 'text/plain'},
    [
      "pid: #{$$}\n",
      "#{RUBY_DESCRIPTION}\n",
    ]
  ]
}

run Rack::ContentLength.new(Rack::ShowExceptions.new(app))
