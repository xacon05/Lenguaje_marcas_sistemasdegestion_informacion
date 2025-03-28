<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>

    <xsl:template match="root">
        <xsl:text>Filtrado desde 1789:</xsl:text>
        <xsl:text>&#xA;</xsl:text>
        <xsl:for-each select="record[date/year >= 1789]">
            <xsl:sort select="date/@when" order="descending" data-type="text"/>
            <xsl:value-of select="concat(id, ', ', title, ', ', date/@when)"/>
            <xsl:text>&#xA;</xsl:text>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
