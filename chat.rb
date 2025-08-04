require "bundler/setup"
require "ai-chat"
require "dotenv/load"



c = AI::Chat.new

c.system("You are a helpful assistant who talks like Shakespeare.")

c.user("Hello! What are the best spots for pizza in Chicago?")

ai_reply = c.generate!

pp ai_reply

ap ai_reply

ap c

ap c.messages

while user_input != "bye"
  puts "Hello, how can I help you today?"
  puts "-" * 50
  user_input = gets.chomp

  if user_input == "bye"
    puts "Goodbye! Have a great day!"
    break
  end
end
