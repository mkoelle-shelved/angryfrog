build:
	@echo "Building angryfrog at './bin/angryfrog' ..."
	@go build -o bin/angryfrog

clean:
	rm -rf ./bin

all:	vet	test	build

test:
	@echo "Running unit tests..."
	@go test -cover ./...

vet:
	@echo "Running vet..."
	@go vet ./...
