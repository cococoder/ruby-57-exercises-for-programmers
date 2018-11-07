require 'test/unit'
require "test/unit/rr"
require_relative '../say-hello/lib/say_hello'

class GreetingTest < Test::Unit::TestCase
  def test_build
    #Given
    name = "Brian"
    template = "Hello, *, nice to meet you!"
    runtime = mock!
    #expect

    mock(runtime).out("Hello, Brian, nice to meet you!")
    mock(runtime).in

    builder = SayHello::GreetingBuilder.new runtime: runtime, template: template

    #when
    greeting = builder.build

    #then
    assert_equal("Hello, Brian, nice to meet you!",greeting)
  end

end


