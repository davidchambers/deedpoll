NPM = npm
XYZ = node_modules/.bin/xyz --repo git@github.com:davidchambers/deedpoll.git


.PHONY: build
build:


.PHONY: release-major release-minor release-patch
release-major: LEVEL = major
release-minor: LEVEL = minor
release-patch: LEVEL = patch

release-major release-minor release-patch:
	@$(XYZ) --increment $(LEVEL)


.PHONY: setup
setup:
	$(NPM) install
