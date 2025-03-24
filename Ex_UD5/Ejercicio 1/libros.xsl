<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" />
    <xsl:template match="/">
        <html>
            <head>
                <title>Lista de Libros</title>
            </head>
            <body>
                <h1>Lista de Libros</h1>
                <p>Nombre del alumno/a: <strong>Adrian Sanchez Chacon</strong></p>
                <ul>
                    <xsl:apply-templates select="bib/book"/>
                </ul>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="book">
        <li>
            <xsl:value-of select="title"/> -
            "<xsl:value-of select="publisher"/>" 
            (<xsl:value-of select="year"/>)
        </li>
    </xsl:template>
</xsl:stylesheet>
