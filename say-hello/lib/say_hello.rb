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

    end
    def run

    end
  end

  class Question
    attr_accessor :body,:runtime
    def initialize runtime:,body:
      @runtime = runtime
      @body = body
    end
    def ask?
      runtime.out body
      runtime.in
    end
  end
end