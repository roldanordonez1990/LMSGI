<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0"
    xmlns:fo="http://www.w3.org/1999/XSL/Format">
    
    <xsl:output method="xml" encoding="iso-8859-1" indent="yes"/>
    
    <xsl:template match="/correccionExamen">
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
                    <fo:block font-family="Arial" font-size="9pt" text-align="right" text-decoration="underline">Planilla de corrección. Tema XSL</fo:block>
                </fo:static-content>
                <fo:static-content flow-name="xsl-region-after">
                    <fo:block font-family="Arial" font-size="9pt" text-align="center" text-decoration="underline">1º ASIR - IES Marqués de Comares - 2013-14</fo:block>
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
                        <fo:table-column column-width="30%"/>
                        <fo:table-column/>
                        <fo:table-column/>
                        <fo:table-column/>
                        <fo:table-column column-width="15%"/>
                        
                        <fo:table-header>
                            <fo:table-cell border="solid 0.1mm black" number-columns-spanned="5" text-align="center" height="1.5cm" padding-before="0.3mm" display-align="center" padding-after="0.3mm" >
                                <fo:block font-size="16pt" font-weight="bold"><xsl:value-of select="examen/@tema"/></fo:block>
                            </fo:table-cell>
                        </fo:table-header>
                        
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell border="solid 0.1mm black">
                                    <fo:block></fo:block>
                                </fo:table-cell>
                                <xsl:for-each select="examen/apartado">
                                    <xsl:sort select="@numApartado" order="ascending"/>
                                    <fo:table-cell border="solid 0.1mm black">
                                        <fo:block text-align="right"><xsl:value-of select="@descripcion"/></fo:block>
                                    </fo:table-cell>
                                </xsl:for-each>
                                <fo:table-cell border="solid 0.1mm black">
                                    <fo:block></fo:block>
                                </fo:table-cell>
                            </fo:table-row>

                            <fo:table-row>
                                <fo:table-cell border="solid 0.1mm black">
                                    <fo:block></fo:block>
                                </fo:table-cell>
                                <xsl:for-each select="examen/apartado">
                                    <xsl:sort select="@numApartado" order="ascending"/>
                                    <fo:table-cell border="solid 0.1mm black">
                                        <fo:block  text-align="right">Puntos: <xsl:value-of select="@valorPuntos"/></fo:block>
                                    </fo:table-cell>
                                </xsl:for-each>
                                <fo:table-cell border="solid 0.1mm black">
                                    <fo:block  text-align="right">Puntuación Total</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                    
                    
                            <xsl:for-each select="resultadosPorAlumno/alumno">
                                <xsl:sort select="@nombre" order="ascending"/>
                                
                                <xsl:choose>
                                    <xsl:when test="position() mod 2 = 1">
                                        <xsl:call-template name="FilaPorAlumno">
                                            <xsl:with-param name="color">CFF</xsl:with-param>
                                        </xsl:call-template>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:call-template name="FilaPorAlumno">
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



    <xsl:template name="FilaPorAlumno">
        <xsl:param name="color"/>
        <fo:table-row>
            <fo:table-cell border="solid 0.1mm black" background-color="#{$color}">
                <fo:block><xsl:value-of select="@nombre"/></fo:block>
            </fo:table-cell>
            
            <xsl:for-each select="valoracionApartado">
                <xsl:sort select="@numApartado" order="ascending"/>
                <fo:table-cell border="solid 0.1mm black" background-color="#{$color}">
                    <fo:block  text-align="right"><xsl:value-of select="."/></fo:block>
                </fo:table-cell>
            </xsl:for-each>
            
            <fo:table-cell border="solid 0.1mm black" background-color="#{$color}">
                <fo:block text-align="right" color="red"><xsl:value-of select="../../examen/apartado[@numApartado = '1']/@valorPuntos * valoracionApartado[@numApartado = '1'] +
                ../../examen/apartado[@numApartado = '2']/@valorPuntos * valoracionApartado[@numApartado = '2'] + 
                ../../examen/apartado[@numApartado = '3']/@valorPuntos * valoracionApartado[@numApartado = '3']"/></fo:block>
            </fo:table-cell>
        </fo:table-row>

    </xsl:template> 
    
</xsl:stylesheet>