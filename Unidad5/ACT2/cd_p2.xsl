<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>

    <xsl:template match="/">
        <html>
            <body>
                <h2>Canciones de Pink Floyd</h2>
                <table border="1">
                    <tr>
                        <th>Título de la Canción</th>
                        <th>Duración</th>
                    </tr>
                    <xsl:for-each select="catalogo/cd[artista='Pink Floyd']/canciones/cancion">
                        <tr>
                            <td><xsl:value-of select="titulo"/></td>
                            <td><xsl:value-of select="duracion"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
