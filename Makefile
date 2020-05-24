all: consolation.pdf

consolation-signatures.pdf: consolation.pdf
	sh ./signatures.sh

consolation.pdf: consolation.tex
	xelatex consolation.tex
	xelatex consolation.tex

clean:
	rm -f *.aux *.log* *.out *.pdf *.toc
