<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" />
    <xsl:template match="/">
        <html>
            <head>
                <title>Lista de Autores</title>
            </head>
            <body>
                <h1>Lista de Autores</h1>
                <p>Nombre del alumno/a: Adrian Sanchez Chacon </p>
                <ol>
                    <xsl:for-each select="bib/libro/autor">
                        <xsl:sort select="apellido" order="ascending" />
                        <li><xsl:value-of select="apellido" />, <xsl:value-of select="nombre" /></li>
                    </xsl:for-each>
                </ol>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
