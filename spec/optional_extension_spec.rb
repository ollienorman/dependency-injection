require 'optional_extension'

describe Greeter do
  describe "#greet" do
    it "returns a greeting" do
      kernel_double = double :kernel, gets: "Ollie"
      greeter = Greeter.new(kernel_double)
      expect { greeter.greet}.to output("What is your name?\nHello, Ollie\n").to_stdout
    end
  end
end