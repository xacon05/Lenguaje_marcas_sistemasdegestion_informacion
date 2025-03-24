<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>

    <xsl:template match="/">
        <html>
            <head>
            <p>Nombre del alumno/a: Adrian Sanchez Chacon</p>
                <style>
                    .green { color: green; }
                    .blue { color: blue; }
                    .red { color: red; }
                </style>
            </head>
            <body>
                <h1><xsl:value-of select="/ies/@nombre"/></h1>
                <table border="1">
                    <tr>
                        <th>Nombre del ciclo</th>
                        <th>Año</th>
                    </tr>
                    <xsl:apply-templates select="//ciclo"/>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="ciclo">
        <tr>
            <td><xsl:value-of select="nombre"/></td>
            <td>
                <xsl:variable name="anio" select="decretoTitulo/@año"/>
                <xsl:attribute name="class">
                    <xsl:choose>
                        <xsl:when test="$anio > 2009">green</xsl:when>
                        <xsl:when test="$anio = 2009">blue</xsl:when>
                        <xsl:otherwise>red</xsl:otherwise>
                    </xsl:choose>
                </xsl:attribute>
                <xsl:value-of select="$anio"/>
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
