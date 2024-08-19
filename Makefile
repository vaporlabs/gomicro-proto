.PHONY: gen-proto
gen-proto:
	protoc ./$(SERVICE_NAME)/*.proto \
		--go_out=./golang \
		--go-grpc_out=./golang \
		--go_opt=paths=source_relative \
		--go-grpc_opt=paths=source_relative \
		--proto_path=.