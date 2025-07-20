### you need to compile the .proto:
```grpc_tools_ruby_protoc -I . --ruby_out=. --grpc_out=. greeter.proto```

### run server
```ruby server.rb```

### run client (send request)
```ruby client.rb desired name ```