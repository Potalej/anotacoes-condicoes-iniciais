TEX=pdflatex
BIB=biber
FILE=condicionamento

all:
	$(TEX) -output-directory=build $(FILE).tex
	$(BIB) --input-directory build $(FILE)
	$(TEX) -output-directory=build $(FILE).tex
	$(TEX) -output-directory=build $(FILE).tex

clean:
	del /q $(FILE).aux $(FILE).bbl $(FILE).bcf $(FILE).blg $(FILE).log $(FILE).run.xml $(FILE).toc
