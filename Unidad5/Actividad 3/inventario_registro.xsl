<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>

    <xsl:template match="/">
        <xsl:text>Inventario de Registros:</xsl:text>
        <xsl:text>&#xA;</xsl:text>
        <xsl:for-each select="root/record">
            <xsl:value-of select="id"/>
            <xsl:text>, </xsl:text>
            <xsl:value-of select="title"/>
            <xsl:text>, </xsl:text>
            <xsl:value-of select="date/@when"/>
            <xsl:text>&#xA;</xsl:text>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
