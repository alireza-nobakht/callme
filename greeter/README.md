### you need to compile the .proto:
```grpc_tools_ruby_protoc -I . --ruby_out=. --grpc_out=. greeter.proto```
This will create two Ruby files:
	•	greeter_pb.rb (message classes)
	•	greeter_services_pb.rb (service classes)

### run server
```ruby server.rb```

### run client (send request)
```ruby client.rb desired name ```
