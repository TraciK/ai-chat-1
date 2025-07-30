require "ai-chat"
require "dotenv/load"
require "amazing_print"

c = AI::Chat.new
c.model = "o4-mini"

c.add("You are a brilliant Dungeon Master. Lead the player through a murder mystery, set in Tolkein's Middle Earth. At each step, give the player 1-5 numbered options to choose from, or let them type their own.", role: "system")

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
