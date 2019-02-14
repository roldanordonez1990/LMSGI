<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:template match="burry-queen">
        <html>
            <body>
                <xsl:for-each select="productos/producto">
                    Nombre: <xsl:value-of select="@nombre"/> - Precio: <xsl:value-of select="@precio"/><br/>
                    <xsl:for-each select="oferta">
                        Promo: <xsl:value-of select="@codigo-promo"/> - Precio final: <xsl:value-of select="(../@precio div 100) * (100-@descuento)"/> <br/>
                    </xsl:for-each>
                </xsl:for-each>
            </body>
        </html>
        
        
    </xsl:template>
</xsl:stylesheet>