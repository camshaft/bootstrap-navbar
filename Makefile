
build: components bootstrap-navbar.css
	@component build --dev

bootstrap-navbar.css: bootstrap-navbar.less
	node_modules/.bin/recess bootstrap-navbar.less --compile > bootstrap-navbar.css

components: component.json
	@component install --dev

clean:
	rm -fr build components bootstrap-navbar.css

.PHONY: clean
