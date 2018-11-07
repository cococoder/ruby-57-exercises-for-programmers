require 'test/unit'
require "test/unit/rr"
require_relative '../say-hello/lib/say_hello'

class QuestionTest < Test::Unit::TestCase
  def test_ask
    #Given
    name = "Brian"
    runtime = mock!
    #expect
    mock(runtime).out("What is your name?")
    question = SayHello::Question.new runtime: runtime
    #when
    question.ask?

  end
end



