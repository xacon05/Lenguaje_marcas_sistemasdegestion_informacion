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
                        <tr>
                            <td><xsl:value-of select="ISBN"/></td>
                            <td><xsl:value-of select="titulo"/></td>
                            <td><xsl:value-of select="autor"/></td>
                            <td><xsl:value-of select="numPaginas"/></td>
                            <td><xsl:value-of select="precio"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
