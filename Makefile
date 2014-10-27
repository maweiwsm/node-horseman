test: node_modules
	@pkill phantomjs &
	@node_modules/.bin/mocha --require should -R spec
	@pkill phantomjs &

# After tests run this:
# kill $(ps aux | grep 'phantomjs' | awk '{print $2}')

node_modules: package.json
	@npm install

.PHONY: test