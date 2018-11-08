require 'test/unit'
require "test/unit/rr"
require_relative '../say-hello/lib/say_hello'

class GreetingTest < Test::Unit::TestCase
  def test_greet
    #Given
    name = "Brian"
    template = "Hello, *, nice to meet you!"
    runtime = mock!
    #expect

    mock(runtime).out("Hello, Brian, nice to meet you!")
    greeting = SayHello::Greeting.new runtime: runtime, template: template
    #when
    greeted  = greeting.greet name: name

    assert_equal(true,greeted)
  end

end


