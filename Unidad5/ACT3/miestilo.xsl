<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>

    <!-- A. Inventario de los registros que contenga el identificador, el título y la fecha -->
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

    <!-- B. Documento con el texto de todos los artículos precedido por el número de identificador entre paréntesis cuadrados -->
    <xsl:template match="/root">
        <xsl:text>Artículos:</xsl:text>
        <xsl:text>&#xA;</xsl:text>
        <xsl:for-each select="record">
            <xsl:value-of select="concat('[', id, '] ')" />
            <xsl:value-of select="text/p"/>
            <xsl:text>&#xA;</xsl:text>
        </xsl:for-each>
    </xsl:template>

    <!-- C. Inventario de registros con el título seguido de la fecha de publicación -->
    <xsl:template match="/root">
        <xsl:text>Inventario de Títulos:</xsl:text>
        <xsl:text>&#xA;</xsl:text>
        <xsl:for-each select="record">
            <xsl:value-of select="title"/>
            <xsl:text>: </xsl:text>
            <xsl:value-of select="date/@when"/>
            <xsl:text>&#xA;</xsl:text>
        </xsl:for-each>
    </xsl:template>

    <!-- D. Documento con los artículos ordenados de más a menos recientes -->
    <xsl:template match="/root">
        <xsl:text>Artículos Ordenados:</xsl:text>
        <xsl:text>&#xA;</xsl:text>
        <xsl:for-each select="record">
            <xsl:sort select="date/@when" order="descending" data-type="text"/>
            <xsl:value-of select="concat('[', id, '] ')" />
            <xsl:value-of select="text/p"/>
            <xsl:text>&#xA;</xsl:text>
        </xsl:for-each>
    </xsl:template>

    <!-- E. Filtrar registros desde 1789 y ordenarlos de más reciente a más antiguo -->
    <xsl:template match="/root">
        <xsl:text>Filtrado desde 1789:</xsl:text>
        <xsl:text>&#xA;</xsl:text>
        <xsl:for-each select="record[date/year >= 1789]">
            <xsl:sort select="date/@when" order="descending" data-type="text"/>
            <xsl:value-of select="concat(id, ', ', title, ', ', date/@when)"/>
            <xsl:text>&#xA;</xsl:text>
        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>
