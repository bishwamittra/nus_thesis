PAPERNAME=main_template
#PAPERNAME_extended=draft_extended
#PAPERNAME_response=response
TEXFILES =  *.tex *.bib *.sty

all:
	pdflatex $(PAPERNAME)
	bibtex $(PAPERNAME)
	pdflatex $(PAPERNAME)
	pdflatex $(PAPERNAME)
	rm -f *.ps $(PAPERNAME).dvi *.loa *.lof *lot *.aux *.log *.blg *.bbl *~ *.ilg *.idx *.out *.in
clean:
	rm -f *.ps $(PAPERNAME).pdf *.loa *.lof *lot *.dvi *.aux *.log *.blg *.bbl *~ *.ilg *.idx *.out *.in *.bcf *.xml *.toc
	rm -f $(PAPERNAME).synctex*
	rm -f $(PAPERNAME)*-blx.bib
#	rm -f *.ps $(PAPERNAME_extended).pdf *.dvi *.aux *.log *.blg *.bbl *~ *.ilg *.idx *.out *.in
#	rm -f $(PAPERNAME_extended).synctex.gz
#	rm -f *.ps $(PAPERNAME_response).pdf *.dvi *.aux *.log *.blg *.bbl *~ *.ilg *.idx *.out *.in
#	rm -f $(PAPERNAME_response).synctex.gz


#extended:
#	pdflatex $(PAPERNAME_extended)
#	bibtex $(PAPERNAME_extended)
#	pdflatex $(PAPERNAME_extended)
#	pdflatex $(PAPERNAME_extended)
#	rm -f *.ps $(PAPERNAME_extended).dvi *.aux *.log *.blg *.bbl *~ *.ilg *.idx *.out *.in

#response:
#	pdflatex $(PAPERNAME_response)
#	bibtex $(PAPERNAME_response)
#	pdflatex $(PAPERNAME_response)
#	pdflatex $(PAPERNAME_response)
#	rm -f *.ps $(PAPERNAME_response).dvi *.aux *.log *.blg *.bbl *~ *.ilg *.idx *.out *.in


