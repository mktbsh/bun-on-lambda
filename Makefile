BUILD_DIR=${PWD}

install:
	rm -rf node_modules
	bun install --silent

build:
	bun build --compile --minify --sourcemap --target=bun-linux-x64 ./lambda.ts --outfile bootstrap

artifacts:
	cp ./bootstrap $(ARTIFACTS_DIR)/.

build-BunAppFunction: install build artifacts