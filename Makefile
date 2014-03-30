BUILD := pandoc --include-in-header=preamble.tex \
				--include-before-body=title.tex \
				--standalone \
				--smart \
				--biblio lit.bib \
				--csl chicago-author-date.csl

all: pdf html

pdf: dfly-multiboot.pdf

tex: dfly-multiboot.tex

html: dfly-multiboot.html

dfly-multiboot.pdf \
dfly-multiboot.tex \
dfly-multiboot.html: dfly-multiboot.md preamble.tex title.tex
	$(BUILD) -o $@ $<
