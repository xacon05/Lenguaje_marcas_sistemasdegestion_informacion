<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>
    <xsl:key name="orden" match="ciclo" use="nombre"/>

    <xsl:template match="/">
        <html>
            <body>
            <p>Nombre del alumno/a: Adrian Sanchez Chacon</p>
                <ol>
                    <xsl:for-each select="//ciclo">
                        <xsl:sort select="nombre" order="descending"/>
                        <li>"<xsl:value-of select="nombre"/>"
                            (<xsl:value-of select="grado"/>)
                        </li>
                    </xsl:for-each>
                </ol>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
