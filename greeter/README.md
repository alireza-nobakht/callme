### you need to compile the .proto:
```grpc_tools_ruby_protoc -I . --ruby_out=. --grpc_out=. greeter.proto```

This will create two Ruby files:
	-	greeter_pb.rb (message classes)
	-	greeter_services_pb.rb (service classes)


Then you need to implement server and client
	-	server.rb implements the service logic.
	-	client.rb calls the service remotely.
 
### run server
```ruby server.rb```

### run client (send request)
```ruby client.rb desired name ```
