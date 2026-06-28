TEXINPUTS := .:./theme/:
ENGINE    := pdflatex

.PHONY: all clean

all: main.pdf main_pt.pdf

main.pdf: main.tex theme/*.sty
	TEXINPUTS="$(TEXINPUTS)" $(ENGINE) -interaction=nonstopmode main.tex
	TEXINPUTS="$(TEXINPUTS)" $(ENGINE) -interaction=nonstopmode main.tex

main_pt.pdf: main_pt.tex theme/*.sty
	TEXINPUTS="$(TEXINPUTS)" $(ENGINE) -interaction=nonstopmode main_pt.tex
	TEXINPUTS="$(TEXINPUTS)" $(ENGINE) -interaction=nonstopmode main_pt.tex

clean:
	rm -f main.pdf main.aux main.log main.nav main.out main.snm main.toc main.vrb
	rm -f main_pt.pdf main_pt.aux main_pt.log main_pt.nav main_pt.out main_pt.snm main_pt.toc main_pt.vrb
