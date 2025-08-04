require "ai-chat"
require "dotenv/load"
require "amazing_print"

c = AI::Chat.new
c.model = "o4-mini"

c.add("You are the narrator of 1001 Arabian Nights", role: "system")

puts "Welcome! Please wait a moment while I create an adventure just for you...."

user_prompt = nil

while user_prompt != "exit"
  puts
  puts "-"*25
  puts
  
  puts c.generate!
  
  puts
  puts "-"*25
  puts
  
  print ">> "
  user_prompt = gets.chomp
  
  c.add(user_prompt)
end
