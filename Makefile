BUILD := pandoc --include-in-header=preamble.tex \
				--include-before-body=title.tex

all: pdf

pdf: dfly-multiboot.pdf

tex: dfly-multiboot.tex

dfly-multiboot.pdf: dfly-multiboot.md preamble.tex title.tex
	$(BUILD) -o $@ $<

dfly-multiboot.tex: dfly-multiboot.md preamble.tex title.tex
	$(BUILD) -o $@ $<
