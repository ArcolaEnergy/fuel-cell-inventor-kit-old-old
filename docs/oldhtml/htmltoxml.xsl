<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  version="1.0">

<xsl:output method="html"/>

<xsl:template match="a">
    <ulink>
        <xsl:attribute name="url">
            <xsl:value-of select="@href"/>
        </xsl:attribute>
        <xsl:value-of select="."/>
    </ulink>
</xsl:template>

<xsl:template match="section">
    <sect1>
        <xsl:attribute name="id">
            <xsl:value-of select="@name"/>
        </xsl:attribute>
    <xsl:apply-templates/>
    </sect1>
</xsl:template>

<xsl:template match="h3">
<title><xsl:apply-templates/></title>
</xsl:template>

<xsl:template match="b">
<important><xsl:apply-templates/></important>
</xsl:template>

<xsl:template match="p">
<para><xsl:apply-templates/></para>
</xsl:template>

<xsl:template match="PICTURE">
       <figure>
         <title>Figure Title</title>
         <mediaobject>
           <imageobject><imagedata fileref="figure.png" format="PNG" /></imageobject>
         </mediaobject>
       </figure>
</xsl:template>

<xsl:template match="ul">
<itemizedlist>
<xsl:apply-templates/>
</itemizedlist>
</xsl:template>

<xsl:template match="ol">
<orderedlist>
<xsl:apply-templates/>
</orderedlist>
</xsl:template>

<xsl:template match="li">
<listitem>
<xsl:apply-templates/>
</listitem>
</xsl:template>



</xsl:stylesheet>
