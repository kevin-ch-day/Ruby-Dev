#!/usr/bin/ruby -w

require 'socket'

server = TCPServer.open(5050)

loop {
	# Wait for a client to connect
	client = server.accept
	
	# Send the time to the client
	client.puts(Time.now.ctime)
	client.puts "Closing the connection. Bye!"
	
	# Disconnect from the client
	client.close
}
