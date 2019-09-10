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
                        <fo:table-column column-width="30%"/>
                        <fo:table-column/>

                        <fo:table-header>
                            <fo:table-cell  background-color="#3C08C9"><fo:block></fo:block></fo:table-cell>
                            <fo:table-cell background-color="#3C08C9" border="solid 0.1mm black" text-align="center" height="1.5cm" padding-before="0.3mm" display-align="center" padding-after="0.3mm" >
                                <fo:block  font-size="16pt" font-weight="bold">Gormiti</fo:block>
                            </fo:table-cell>
                            <fo:table-cell background-color="#3C08C9" border="solid 0.1mm black" text-align="center" height="1.5cm" padding-before="0.3mm" display-align="center" padding-after="0.3mm">
                                <fo:block font-size="16pt" font-weight="bold">Tribu</fo:block>
                            </fo:table-cell>
                        </fo:table-header>
                        
                        <fo:table-body>
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
                        </fo:table-body>
                    </fo:table>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
    
    
    
    <xsl:template name="filaGormiti">
        <xsl:param name="color"/>
        
        <fo:table-row>
            <fo:table-cell border="solid 0.1mm black" background-color="#{$color}">
                <fo:block text-align="right"><xsl:value-of select="position()"/></fo:block>
            </fo:table-cell>
            
            <fo:table-cell border="solid 0.1mm black" background-color="#{$color}">
                <fo:block text-align="right"><fo:external-graphic src="url({.})" content-height="150px" scaling="uniform"/></fo:block>
            </fo:table-cell>
            
            <fo:table-cell border="solid 0.1mm black" background-color="#{$color}">
                <fo:block text-align="right"><xsl:value-of select="@tribu"/></fo:block>
            </fo:table-cell>
            
        </fo:table-row>
    </xsl:template>
</xsl:stylesheet>