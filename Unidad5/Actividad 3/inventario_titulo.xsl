<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>

    <xsl:template match="root">
        <xsl:text>Inventario de Títulos:</xsl:text>
        <xsl:text>&#xA;</xsl:text>
        <xsl:for-each select="record">
            <xsl:value-of select="title"/>
            <xsl:text>: </xsl:text>
            <xsl:value-of select="date/@when"/>
            <xsl:text>&#xA;</xsl:text>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
