#!/bin/bash

#update html
xsltproc --xinclude  --output ../3w.html  html.xsl 3w.xml
#prepare fo
xsltproc --xinclude --output 3w.fo fo.xsl 3w.xml 
#create the pdf
~/Downloads/fop-1.0/fop 3w.fo 3w.pdf
