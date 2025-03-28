<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>

    <xsl:template match="root">
        <xsl:text>Artículos:</xsl:text>
        <xsl:text>&#xA;</xsl:text>
        <xsl:for-each select="record">
            <xsl:value-of select="concat('[', id, '] ')" />
            <xsl:value-of select="text/p"/>
            <xsl:text>&#xA;</xsl:text>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
