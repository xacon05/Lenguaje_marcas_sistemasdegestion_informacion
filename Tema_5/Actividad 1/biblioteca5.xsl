<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Mi biblioteca personal</title>
                <style>
                    table {
                        border-collapse: collapse;
                        width: 100%;
                        background-color: #f0f8ff;
                    }
                    th, td {
                        border: 1px solid black;
                        padding: 8px;
                        text-align: left;
                    }
                    th {
                        background-color: #4682b4;
                        color: white;
                    }
                    .barato {
                        background-color: lightgreen;
                    }
                    .caro {
                        background-color: lightcoral;
                    }
                    .paginas-altas {
                        color: red;
                        font-weight: bold;
                    }
                </style>
            </head>
            <body>
                <h2>Mi biblioteca personal</h2>

                <table>
                    <tr>
                        <th>ISBN</th>
                        <th>Título</th>
                        <th>Autor</th>
                        <th>Número de Páginas</th>
                        <th>Precio (€)</th>
                    </tr>
                    <xsl:for-each select="biblioteca/libro">
                        <xsl:sort select="precio" data-type="number"/>
                        <tr>
                      
                            <xsl:attribute name="class">
                                <xsl:choose>
                                    <xsl:when test="precio &gt; 25">caro</xsl:when>
                                    <xsl:otherwise>barato</xsl:otherwise>
                                </xsl:choose>
                            </xsl:attribute>
                            <td><xsl:value-of select="ISBN"/></td>
                            <td><xsl:value-of select="titulo"/></td>
                            <td><xsl:value-of select="autor"/></td>
                            <td>
                                <xsl:apply-templates select="numPaginas"/>
                            </td>
                            <td><xsl:value-of select="precio"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

    
    <xsl:template match="numPaginas">
        <xsl:choose>
            <xsl:when test=". &gt; 150">
                <span class="paginas-altas"><xsl:value-of select="."/></span>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="."/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
