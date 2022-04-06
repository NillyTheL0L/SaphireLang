require "http/server"
class Saf
	def self.server

server = HTTP::Server.new do |context|
  context.response.content_type = "text/plain"
  context.response.print "Hello world!"
end

address = server.bind_tcp 8080
puts "server started on on http://#{address}"
server.listen
	end
end