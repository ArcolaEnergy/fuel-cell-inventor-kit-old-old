#!/bin/bash

#update html
xsltproc --xinclude  --output ../3w.html  html.xsl 3w.xml
xsltproc --xinclude  --output ../12-30w.html  html.xsl 12-30w.xml
#prepare fo
xsltproc --xinclude --output 3w.fo fo.xsl 3w.xml 
xsltproc --xinclude --output 12-30w.fo fo.xsl 12-30w.xml 
#create the pdf
~/Downloads/fop-1.0/fop 3w.fo ../3w.pdf
~/Downloads/fop-1.0/fop 12-30w.fo ../12-30w.pdf
