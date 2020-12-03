require 'exercise-3'

describe SayHello do
  describe "#run" do
    it "sends hello to a friend" do
      message_double = double :message, send: nil
      emailclient_class = double :emailclient_class, message: message_double
      say_hello = SayHello.new(emailclient_class)
      expect(message_double).to receive(:send).with("friend@example.com", "HELLO!")
      say_hello.run
    end
  end
end