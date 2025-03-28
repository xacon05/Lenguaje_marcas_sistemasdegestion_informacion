<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h2>Libros Filtrados</h2>
                <ul>
                    <xsl:for-each select="libreria/libro">                       
                        <xsl:if test="precio &gt; 10">                            
                            <xsl:if test="autor = 'Juan Pérez'">                              
                                <xsl:if test="precio &gt; 12">
                                    <li>
                                        <b>Título:</b> <xsl:value-of select="titulo"/> <br/>
                                        <b>Autor:</b> <xsl:value-of select="autor"/> <br/>
                                        <b>Editor:</b> <xsl:value-of select="editor"/> <br/>
                                        <b>ISBN:</b> <xsl:value-of select="isbn"/> <br/>
                                        <b>Precio:</b> <xsl:value-of select="precio"/> € <br/>
                                    </li>
                                </xsl:if>
                            </xsl:if>
                        </xsl:if>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
