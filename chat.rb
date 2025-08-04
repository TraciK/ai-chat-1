ai-chat-1 main % ruby chat.rb
chat.rb: --> chat.rb
Unmatched keyword, missing `end' ?
   1  require "bundler/setup"
   2  require "ai-chat"
   3  require "dotenv/load"
   7  c = AI::Chat.new
   9  c.system("You are a helpful assistant who talks like Shakespeare.")
  11  c.user("Hello! What are the best spots for pizza in Chicago?")
  13  ai_reply = c.generate!
  15  pp ai_reply
  17  ap ai_reply
  19  ap c
  21  ap c.messages
> 23  while user_input != "bye"
chat.rb:31: syntax error, unexpected end-of-input (SyntaxError)
  end
     ^
