default: run

build-wasm:
	cd cmd/wasm; GOOS=js GOARCH=wasm go build -o ../../assets/json.wasm
	
serve: 
	cd cmd/server; go run main.go

browse:
	open 'http://localhost:9090'

run: build-wasm browse serve