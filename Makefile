filename=dfg
compiler=pdflatex

all: dfg.pdf clean
dfg.pdf:
	${compiler} ${filename}.tex
	biber ${filename}
	${compiler} ${filename}.tex
	${compiler} ${filename}.tex
clean:
	-rm ${filename}.log
	-rm ${filename}.aux
	-rm ${filename}.out
	-rm ${filename}.bbl
	-rm ${filename}.blg
	-rm ${filename}.bcf
	-rm ${filename}.run.xml

.PHONY: dfg.pdf
