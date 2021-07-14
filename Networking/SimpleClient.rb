#!/usr/bin/ruby -w

require 'socket'

hostname = 'localhost'
port = 5050
s = TCPSocket.open(hostname, port)

# Read lines from the socket
# And print with platform line terminator
while line = s.gets
	puts line.chop
end
s.close	# Close the socket
