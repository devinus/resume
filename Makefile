NAME := $(shell finger "${USER}" | sed -e '/Name/!d' -e 's/.*Name: //' | tr -d ' ')

.PHONY: all watch clean

all: $(NAME).pdf

build/resume.pdf: src/resume.tex
	@latexmk $<

$(NAME).pdf: ./build/resume.pdf
	cp ./build/resume.pdf $(NAME).pdf

watch:
	@env WATCH=1 $(MAKE)

clean:
	rm -rf build $(NAME).pdf
