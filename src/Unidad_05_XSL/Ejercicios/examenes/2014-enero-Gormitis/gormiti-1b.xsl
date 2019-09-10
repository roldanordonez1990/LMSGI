<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="html" encoding="iso-8859-1"/>
    
    <xsl:template match="/gormitis">
        <table width="500px" style="background: url('{/gormitis/tablero/@url}') no-repeat;" align="center">
            <tr>
                <xsl:call-template name="celda">
                    <xsl:with-param name="x">1</xsl:with-param>
                    <xsl:with-param name="y">1</xsl:with-param>
                </xsl:call-template>
                <xsl:call-template name="celda">
                    <xsl:with-param name="x">1</xsl:with-param>
                    <xsl:with-param name="y">2</xsl:with-param>
                </xsl:call-template>
                <xsl:call-template name="celda">
                    <xsl:with-param name="x">1</xsl:with-param>
                    <xsl:with-param name="y">3</xsl:with-param>
                </xsl:call-template>
            </tr>
            <tr>
                <xsl:call-template name="celda">
                    <xsl:with-param name="x">2</xsl:with-param>
                    <xsl:with-param name="y">1</xsl:with-param>
                </xsl:call-template>
                <xsl:call-template name="celda">
                    <xsl:with-param name="x">2</xsl:with-param>
                    <xsl:with-param name="y">2</xsl:with-param>
                </xsl:call-template>
                <xsl:call-template name="celda">
                    <xsl:with-param name="x">2</xsl:with-param>
                    <xsl:with-param name="y">3</xsl:with-param>
                </xsl:call-template>
            </tr>
            <tr>
                <xsl:call-template name="celda">
                    <xsl:with-param name="x">3</xsl:with-param>
                    <xsl:with-param name="y">1</xsl:with-param>
                </xsl:call-template>
                <xsl:call-template name="celda">
                    <xsl:with-param name="x">3</xsl:with-param>
                    <xsl:with-param name="y">2</xsl:with-param>
                </xsl:call-template>
                <xsl:call-template name="celda">
                    <xsl:with-param name="x">3</xsl:with-param>
                    <xsl:with-param name="y">3</xsl:with-param>
                </xsl:call-template>
            </tr>
        </table>
    </xsl:template>
    
    
    <xsl:template name="celda">
        <xsl:param name="x"/>
        <xsl:param name="y"/>
        <td>
            <xsl:for-each select="tablero/gormitiEnMapa">
                <xsl:if test="($x = @x) and ($y = @y)">
                    <xsl:call-template name="imagen">
                        <xsl:with-param name="tribu"><xsl:value-of select="@tribu"/></xsl:with-param>
                    </xsl:call-template>
                </xsl:if>
            </xsl:for-each>
        </td>
    </xsl:template>
    
    
    <xsl:template name="imagen">
        <xsl:param name="tribu"/>
        <xsl:for-each select="/gormitis/gormiti">
            <xsl:if test="@tribu = $tribu">
                <img src="{.}" width="150px"/>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>