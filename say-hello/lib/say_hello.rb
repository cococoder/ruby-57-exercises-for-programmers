#Objective: “Create a program that prompts for your name and prints a greeting using your name.”
#Constraint: “Keep the input, string concatenation, and output separate”

#Psuedo code

#question = Question.new body: "What is your name?", ui: self
#answer = question.ask?
#greeting = Greeting.new name: answer, ui: self
#greeting.display

module SayHello
  class Cli
    def initialize runtime:
      @runtime = runtime
    end
    def run
      question = "What is your name?"
      template = "Hello, *, nice to meet you!"
      question = SayHello::Question.new runtime: @runtime, body: question
      answer = question.ask?
      greeting = SayHello::Greeting.new runtime: @runtime, template: template
      greeting.greet name: answer.to_s
    end
  end

  class Greeting
    def initialize runtime:,template:
      @runtime = runtime
      @template = template
    end
    def greet(name:)
      @runtime.out @template.gsub!("*",name)
      true
    end
  end
  class Question
    class Answer
      def initialize source
        @source = source
      end
      def to_s
        @source
      end
    end
    attr_accessor :body,:runtime
    def initialize runtime:,body:
      @runtime = runtime
      @body = body
    end
    def ask?
      runtime.out body
      Question::Answer.new runtime.in
    end
  end
end