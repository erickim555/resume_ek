all: cv_ek.pdf resume_ek.pdf

cv_ek.pdf: cv_ek.tex
	pdflatex cv_ek.tex

resume_ek.pdf: resume_ek.tex
	pdflatex resume_ek.tex

.PHONY: clean cleanest

clean:
	rm -f *.log *.aux

cleanest:
	rm -f *.pdf
