require 'socket'

server = TCPServer.open(2000) 		#port 2000
loop {
	client = server.accept 					#WAit for connection
	client.puts(Time.now.ctime) 		#Send them the time
	client.puts "Closing the connection. Bye!"
	client.close
}