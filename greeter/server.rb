# frozen_string_literal: true

require_relative './greeter_services_pb'

# Step 1: Implement the service
class GreeterServer < Greeter::Greeter::Service
  def say_hello(request, _unused_call)
    puts "Received request with name: #{request.name}"
    Greeter::HelloReply.new(message: "Hello #{request.name}")
  end
end

# Step 2: Start gRPC server
server = GRPC::RpcServer.new
server.add_http2_port('0.0.0.0:50051', :this_port_is_insecure)
server.handle(GreeterServer)

puts "🟢 gRPC server is running on port 50051..."
server.run_till_terminated