<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="UTF-8"/>

    <xsl:template match="/">
        <xsl:apply-templates select="//ciclo/nombre"/>
    </xsl:template>

    <xsl:template match="nombre">
        "<xsl:value-of select="."/>"
        <xsl:text>&#10;</xsl:text>
    </xsl:template>
</xsl:stylesheet>
