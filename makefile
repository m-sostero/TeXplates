TEX = pandoc
src = letter-template.tex letter-content.md
FLAGS = --latex-engine=xelatex

letter.pdf : $(src)
	$(TEX) $(filter-out $<,$^ ) -o $@ --template=$< $(FLAGS)

.PHONY: clean
clean :
	rm letter.pdf
