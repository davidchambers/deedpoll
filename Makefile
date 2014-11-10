NPM = npm
XYZ = node_modules/.bin/xyz --repo git@github.com:davidchambers/deedpoll.git


.PHONY: build
build:


.PHONY: release-major release-minor release-patch
release-major release-minor release-patch:
	@$(XYZ) --increment $(@:release-%=%)


.PHONY: setup
setup:
	$(NPM) install


.PHONY: test
test:
	@./test
