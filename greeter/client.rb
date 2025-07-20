# frozen_string_literal: true

require_relative './greeter_services_pb'

class Client 
  NOTSECURE = :this_channel_is_insecure
  def say_hello(name, host = 'localhost:50051')
    request = Greeter::HelloRequest.new(name: name)
    stub = Greeter::Greeter::Stub.new(host, NOTSECURE)
    stub.say_hello(request)
  end
end

name = ARGV[0] || 'World'  # Default to 'World' if no name is provided
response = Client.new.say_hello(name)
# Print the server's response
puts "🟡 Server responded: #{response.message}"
