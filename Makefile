.PHONY: all watch clean

all: build/resume.pdf

build/resume.pdf: src/resume.tex
	@latexmk $<

watch:
	@env WATCH=1 $(MAKE)

clean:
	rm -rf build
