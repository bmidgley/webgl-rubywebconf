#!/usr/bin/env ruby
require 'rubygems'
require 'em-websocket'

EventMachine::WebSocket.start(:host => "0.0.0.0", :port => 8080) do |ws|
 ws.onopen    { ws.send "Hello Client!"; puts "connect"}
 ws.onmessage { |msg| ws.send "Pong: #{msg}" ; puts "received #{msg}" }
 ws.onclose   { puts "WebSocket closed"; puts "closed" }
end

