<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0"
    xmlns:fo="http://www.w3.org/1999/XSL/Format">
    
    
    <xsl:template match="/gormitis">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="A4" page-width="297mm" page-height="210mm" margin-top="1cm" margin-bottom="1cm" margin-left="1cm" margin-right="1cm">
                    <fo:region-body margin="1cm"/>
                    <fo:region-before extent="1cm"/>
                    <fo:region-after extent="1cm"/>
                    <fo:region-start extent="1cm"/>
                    <fo:region-end extent="1cm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="A4">
                <fo:title>Planilla de corrección</fo:title>
                <fo:static-content flow-name="xsl-region-before">
                    <fo:block font-family="Arial" font-size="9pt" text-align="right" text-decoration="underline"></fo:block>
                </fo:static-content>
                <fo:static-content flow-name="xsl-region-after">
                    <fo:block font-family="Arial" font-size="9pt" text-align="center" text-decoration="underline"></fo:block>
                </fo:static-content>
                <fo:static-content flow-name="xsl-region-start">
                    <fo:block-container reference-orientation="90">
                        <fo:block font-family="Arial" font-size="9pt" text-align="center"></fo:block>
                    </fo:block-container>            
                </fo:static-content>
                <fo:static-content flow-name="xsl-region-end">
                    <fo:block-container reference-orientation="270">
                        <fo:block font-family="Arial" font-size="9pt" text-align="center"></fo:block>
                    </fo:block-container>            
                </fo:static-content>
                
                <fo:flow flow-name="xsl-region-body">
                    
                    <fo:block><fo:leader /></fo:block>
                    
                    <fo:table border="solid 0.1mm black" width="100%">
                        <fo:table-column />
                        <fo:table-column/>
                        <fo:table-column/>
                        
                        <fo:table-body>
                            <fo:table-row>
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
                            </fo:table-row>
                            <fo:table-row>
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
                            </fo:table-row>
                            <fo:table-row>
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
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
    
    
    
    
    <xsl:template name="celda">
        <xsl:param name="x"/>
        <xsl:param name="y"/>
        <fo:table-cell border="solid 0.1mm black">
            <xsl:for-each select="tablero/gormitiEnMapa">
                <xsl:choose>
                    <xsl:when test="($x = @x) and ($y = @y)">
                        <xsl:call-template name="imagen">
                            <xsl:with-param name="tribu"><xsl:value-of select="@tribu"/></xsl:with-param>
                        </xsl:call-template>
                    </xsl:when>
                    <xsl:otherwise>
                        <fo:block> </fo:block>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:for-each>
        </fo:table-cell>
    </xsl:template>
    
    
    <xsl:template name="imagen">
        <xsl:param name="tribu"/>
        <xsl:for-each select="/gormitis/gormiti">
            <xsl:if test="@tribu = $tribu">
                <fo:block><fo:external-graphic src="url({.})" content-height="150px" scaling="uniform"/></fo:block>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
    
</xsl:stylesheet>