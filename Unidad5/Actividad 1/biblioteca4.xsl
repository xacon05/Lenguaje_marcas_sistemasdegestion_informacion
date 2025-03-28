<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
    <xsl:template match="/">
        <html>
            <head>
                <style>
                    table { border-collapse: collapse; width: 100%; }
                    th, td { padding: 8px; text-align: left; border: 1px solid #ddd; }
                    .rojo { background-color: red; }
                    .verde { background-color: green; }
                </style>
            </head>
            <body>
                <h2>Listado de Libros</h2>
                <table>
                    <tr>
                        <th>ISBN</th>
                        <th>Título</th>
                        <th>Autor</th>
                        <th>Editor</th>
                        <th>Precio</th>
                    </tr>                  
                    <xsl:for-each select="libreria/libro">
                        <tr>
                            <xsl:choose>
                                <xsl:when test="precio &gt; 25">
                                    <td class="rojo">
                                        <xsl:value-of select="isbn"/>
                                    </td>
                                    <td class="rojo">
                                        <xsl:value-of select="titulo"/>
                                    </td>
                                    <td class="rojo">
                                        <xsl:value-of select="autor"/>
                                    </td>
                                    <td class="rojo">
                                        <xsl:value-of select="editor"/>
                                    </td>
                                    <td class="rojo">
                                        <xsl:value-of select="precio"/>
                                    </td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td class="verde">
                                        <xsl:value-of select="isbn"/>
                                    </td>
                                    <td class="verde">
                                        <xsl:value-of select="titulo"/>
                                    </td>
                                    <td class="verde">
                                        <xsl:value-of select="autor"/>
                                    </td>
                                    <td class="verde">
                                        <xsl:value-of select="editor"/>
                                    </td>
                                    <td class="verde">
                                        <xsl:value-of select="precio"/>
                                    </td>
                                </xsl:otherwise>
                            </xsl:choose>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
