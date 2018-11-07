require 'test/unit'
require "test/unit/rr"
require_relative '../say-hello/lib/say_hello'

class QuestionTest < Test::Unit::TestCase
  def test_ask
    #Given
    body = "What is your name?"
    runtime = mock!
    #expect

    mock(runtime).out(body)
    mock(runtime).in

    question = SayHello::Question.new runtime: runtime, body: body
    #when
    question.ask?

  end

  def test_ask_and_recieve_correct_answer
    #Given
    name = "Brian"
    body = "What is your name?"
    runtime = mock!
    #expect

    mock(runtime).out(body)
    mock(runtime).in { name}

    question = SayHello::Question.new runtime: runtime, body: body
    #when
    answer = question.ask?
    assert_equal(answer.to_s, name)
  end
end



