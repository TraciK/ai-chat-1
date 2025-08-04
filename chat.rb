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
