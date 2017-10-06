NAME := $(shell finger "${USER}" | sed -e '/Name/!d' -e 's/.*Name: //' | tr -d ' ')

.PHONY: all watch clean

all: $(NAME).pdf

$(NAME).pdf: ./src/resume.tex
	latexmk -pdf -pdflatex="pdflatex -interaction=batchmode" -use-make -outdir=build $(WATCH) $<
	cp ./build/resume.pdf $(NAME).pdf

watch:
	@$(MAKE) WATCH=-pvc

clean:
	rm -rf build *.pdf
