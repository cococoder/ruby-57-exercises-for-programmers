require 'test/unit'
require "test/unit/rr"
require_relative '../say-hello/lib/say_hello'

class QuestionTest < Test::Unit::TestCase
  def test_ask
    #Given
    name = "Brian"
    body = "What is your name?"
    runtime = mock!
    #expect

    mock(runtime).out(body)
    mock(runtime).in

    question = SayHello::Question.new runtime: runtime, body: body
    #when
    question.ask?

  end
end



