clean:
	bazelisk clean

build: clean
	bazelisk build --config=ios-release //:App

build-wmo: clean
	bazelisk build --config=ios-release --swiftcopt=-Xfrontend --swiftcopt=-whole-module-optimization //:App