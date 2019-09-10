<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    
    <xsl:template match="/gormitis">
        <html>
            <head>
                <title>Gormitis</title>
            </head>
            <body>
                <table align="center" border="1" width="500px">
                    <tr style="font-weight:bolder; color:#FFF; background:#3C08C9;">
                        <td></td>
                        <td>Gormiti</td>
                        <td>Tribu</td>
                    </tr>
                    <xsl:for-each select="gormiti">
                        <xsl:sort select="@tribu"/>
                        <xsl:choose>
                            <xsl:when test="position() mod 2 = 1">
                                <xsl:call-template name="filaGormiti">
                                    <xsl:with-param name="color">CFF</xsl:with-param>
                                </xsl:call-template>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:call-template name="filaGormiti">
                                    <xsl:with-param name="color">FFF</xsl:with-param>
                                </xsl:call-template>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:for-each>
                </table>
            </body>
        </html>
        
    </xsl:template>
    
    
    
    <xsl:template name="filaGormiti">
        <xsl:param name="color"/>
        
        <tr style="background:#{$color};">
            <td ><xsl:value-of select="position()"/></td>
            <td>
                <img style="width:150px;">
                    <xsl:attribute name="src"><xsl:value-of select="."/></xsl:attribute>
                </img>
            </td>
            <td><xsl:value-of select="@tribu"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>