<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>

    <xsl:template match="/">
        <html>
            <body>
                <h2>Lista de CDs</h2>
                <table border="1">
                    <tr>
                        <th>Título</th>
                        <th>Artista</th>
                        <th>Canciones</th>
                        <th>Sello</th>
                        <th>Año</th>
                    </tr>
                    <xsl:for-each select="catalogo/cd">
                        <tr>
                            <td><xsl:value-of select="titulo"/></td>
                            <td><xsl:value-of select="artista"/></td>
                            <td>
                                <xsl:for-each select="canciones/cancion">
                                    <xsl:value-of select="titulo"/>
                                    (<xsl:value-of select="duracion"/>)<br/>
                                </xsl:for-each>
                            </td>
                            <td><xsl:value-of select="sello"/></td>
                            <td><xsl:value-of select="anio"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
