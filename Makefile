dfly-multiboot.pdf: dfly-multiboot.md preamble.tex title.tex
	pandoc --include-in-header=preamble.tex \
		   --include-before-body=title.tex \
		   -o $@ $< \
