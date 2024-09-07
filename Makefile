build-BunAppFunction:
	bun build --compile --minify --sourcemap --target=bun-linux-x64 ./lambda.ts --outfile bootstrap
	cp ./bootstrap $(ARTIFACTS_DIR)/.