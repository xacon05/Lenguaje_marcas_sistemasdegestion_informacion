<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>

    <xsl:template match="/">
        <html>
            <body>
                <h2>Canciones con duración menor a 5 minutos</h2>
                <table border="1">
                    <tr>
                        <th>Artista</th>
                        <th>Título de la Canción</th>
                        <th>Duración</th>
                    </tr>
                    <xsl:for-each select="catalogo/cd/canciones/cancion">
                        <xsl:if test="substring-before(duracion, ':') &lt; 5 or (substring-before(duracion, ':') = 5 and substring-after(duracion, ':') &lt; 0)">
                            <tr>
                                <td><xsl:value-of select="parent::cd/artista"/></td>
                                <td><xsl:value-of select="titulo"/></td>
                                <td><xsl:value-of select="duracion"/></td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
