XSLTOPTS=-v

all: 3w 12-30w
3w: 3w.html 3w.pdf
12-30w: 12-30w.html 12-30w.pdf
demo: remoteSense.html remoteSense.xml

%.html: %.xml html.xsl
	xsltproc $(XSLTOPTS) --xinclude  --output $@ html.xsl $<

%.fo: %.xml fo.xsl 
	xsltproc $(XSLTOPTS) --xinclude --output $@ fo.xsl $<

#fop can be got from: http://xmlgraphics.apache.org/fop/download.html
%.pdf: %.fo
	../fop-1.0/fop $< $@

clean:
	rm -f *pdf *html
