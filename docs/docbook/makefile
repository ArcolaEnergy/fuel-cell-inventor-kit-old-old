all: 3w 12-30w
3w: 3w.html 3w.pdf
12-30w: 12-30w.html 12-30w.pdf

%.html: %.xml html.xsl
	xsltproc --xinclude  --output $@ html.xsl $<

%.fo: %.xml fo.xsl 
	xsltproc --xinclude --output $@ fo.xsl $<

%.pdf: %.fo
	~/Downloads/fop-1.0/fop $< $@

