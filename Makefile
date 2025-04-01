.POSIX:
.SUFFIXES:

RM ?= rm -f

.PHONY: all
all: build/resume.pdf

.PHONY: watch
watch:
	@env WATCH=1 $(MAKE)

.PHONY: clean
clean:
	$(RM) -r build

build/resume.pdf: src/resume.tex
	@latexmk src/resume.tex
