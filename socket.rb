require 'socket'
require './lib/notelist.rb'

server = TCPServer.new(2345)
loop do
  Thread.start(server.accept) do |client|
    notes = Notelist.new
    client.puts "What do you say?"
    they_said = client.gets.chomp
    while they_said != 'quit'
      client.puts "You said: #{they_said}!"
      if they_said == 'notes.list'
        client.puts notes.list
      end
      notes.add(they_said)
      client.puts "What do you say?"
      they_said = client.gets.chomp
    end
      client.puts "You said: #{they_said}. Goodbye!"
    client.close
  end
end
