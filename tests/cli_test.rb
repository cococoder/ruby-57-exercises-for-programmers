require 'test/unit'
require "test/unit/rr"
require_relative '../say-hello/lib/say_hello'

class CliTest < Test::Unit::TestCase
  def test_run
    #Given
    name = "Brian"
    runtime = mock!

    #expect
    mock(runtime).out("What is your name?")
    mock(runtime).in { name }
    mock(runtime).out ("Hello, Brian, nice to meet you!")
    @cli = SayHello::Cli.new runtime: runtime
    #when
    @cli.run

  end
end



