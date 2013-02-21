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

run Rack::ShowExceptions.new(Rack::ContentLength.new(app))
