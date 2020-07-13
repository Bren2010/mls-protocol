# Automatically generated setup rules
Makefile: lib/template/Makefile
	mkdir -p $(dir $@)
	-cp $< $@
.gitignore: lib/template/.gitignore
	mkdir -p $(dir $@)
	-cp $< $@
CONTRIBUTING.md: lib/template/CONTRIBUTING.md
	mkdir -p $(dir $@)
	-cp $< $@
LICENSE.md: lib/template/LICENSE.md
	mkdir -p $(dir $@)
	-cp $< $@
.circleci/config.yml: lib/template/.circleci/config.yml
	mkdir -p $(dir $@)
	-cp $< $@
.github/workflows/ghpages.yml: lib/template/.github/workflows/ghpages.yml
	mkdir -p $(dir $@)
	-cp $< $@
.github/workflows/publish.yml: lib/template/.github/workflows/publish.yml
	mkdir -p $(dir $@)
	-cp $< $@
.github/workflows/archive.yml: lib/template/.github/workflows/archive.yml
	mkdir -p $(dir $@)
	-cp $< $@
