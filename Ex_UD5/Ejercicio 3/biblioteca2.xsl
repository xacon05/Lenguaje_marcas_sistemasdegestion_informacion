<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" />
    <xsl:template match="/">
        <html>
            <head>
                <title>Lista de Libros (Precios &lt; 100)</title>
            </head>
            <body>
                <h1>Lista de Libros con Precios Menores a 100</h1>
                <p>Nombre del alumno/a: Adrian Sanchez Chacon</p>
                <ol>
                    <xsl:for-each select="bib/libro">
                        <xsl:if test="precio &lt; 100">
                            <li><xsl:value-of select="titulo" /></li>
                        </xsl:if>
                    </xsl:for-each>
                </ol>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
