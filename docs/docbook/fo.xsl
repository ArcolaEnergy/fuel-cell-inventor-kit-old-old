<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    version="1.0">
<xsl:import href="http://docbook.sourceforge.net/release/xsl/current/fo/docbook.xsl"/>

<xsl:param name="paper.type">A4</xsl:param>

<!-- turn off the ruler under header -->
<xsl:param name="header.rule" select="0"/>
<!-- make enough room for the header -->
<xsl:param name="region.before.extent">2.0cm</xsl:param>
<xsl:param name="body.margin.top">2.5cm</xsl:param>

<xsl:template name="header.content">
    <xsl:param name="position" select="''"/>
    <xsl:param name="sequence" select="''"/>
    <fo:block>
    <xsl:choose>
        <xsl:when test="$position = 'center'">  
          <fo:external-graphic content-height="2.0cm" src="pics/smallheader.jpg"/>
        </xsl:when>
        <!--<xsl:when test="$sequence = 'first' and $position = 'center'"> 
        </xsl:when>-->
    </xsl:choose>
    </fo:block>
</xsl:template>

</xsl:stylesheet>
