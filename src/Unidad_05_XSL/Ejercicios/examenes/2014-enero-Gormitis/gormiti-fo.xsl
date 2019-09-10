<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format"
    version="1.0">
    
    <xsl:template match="/gormitis">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="A4" page-width="210mm" page-height="297mm" margin-top="1cm" margin-bottom="1cm" margin-left="1cm" margin-right="1cm">
                    <fo:region-body margin="1cm"/>
                    <fo:region-before extent="1cm"/>
                    <fo:region-after extent="1cm"/>
                    <fo:region-start extent="1cm"/>
                    <fo:region-end extent="1cm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="A4">
                <fo:flow flow-name="xsl-region-body">

                    <fo:table border-left-width="2mm" width="100%" border-collapse="separate">
                        <fo:table-column/>
                        <fo:table-column/>
                        <fo:table-column/>
                        
                        <fo:table-header>
                            <fo:table-cell background-color="#FF0000" border="solid 0.1mm black">
                                <fo:block/>
                            </fo:table-cell>
                            <fo:table-cell background-color="#FF0000" border="solid 0.1mm black">
                                <fo:block>Gormiti</fo:block>
                            </fo:table-cell>
                            <fo:table-cell background-color="#FF0000" border="solid 0.1mm black">
                                <fo:block>Tribu</fo:block>
                            </fo:table-cell>
                        </fo:table-header>
                        
                        <fo:table-body>
                            <xsl:for-each select="gormiti">
                                <fo:table-row>
                                    <fo:table-cell border="solid 0.1mm black">
                                        <xsl:if test="(position() mod 2) = 1">
                                            <xsl:attribute name="background-color">#C7D0ED</xsl:attribute>
                                        </xsl:if>
                                        <fo:block><xsl:value-of select="position()"/></fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border="solid 0.1mm black">
                                        <xsl:if test="(position() mod 2) = 1">
                                            <xsl:attribute name="background-color">#C7D0ED</xsl:attribute>
                                        </xsl:if>
                                        <fo:block><fo:external-graphic src="url({.})" content-height="100px" scaling="uniform"/></fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border="solid 0.1mm black">
                                        <xsl:if test="(position() mod 2) = 1">
                                            <xsl:attribute name="background-color">#C7D0ED</xsl:attribute>
                                        </xsl:if>
                                        <fo:block><xsl:value-of select="@tribu"/></fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </xsl:for-each>
                            
                        </fo:table-body>
                    </fo:table>
                    
                    <fo:block><fo:leader/><fo:leader/></fo:block>
                    
                    <fo:table border-left-width="2mm" width="100%" border-collapse="separate">
                        <fo:table-column/>
                        <fo:table-column/>
                        <fo:table-column/>

                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell border="solid 0.1mm black">
                                    <fo:block>
                                        <xsl:call-template name="colocaGormitiEnTablero">
                                            <xsl:with-param name="x">1</xsl:with-param>
                                            <xsl:with-param name="y">1</xsl:with-param>
                                        </xsl:call-template>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell border="solid 0.1mm black">
                                    <fo:block>
                                        <xsl:call-template name="colocaGormitiEnTablero">
                                            <xsl:with-param name="x">2</xsl:with-param>
                                            <xsl:with-param name="y">1</xsl:with-param>
                                        </xsl:call-template>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell border="solid 0.1mm black">
                                    <fo:block>
                                        <xsl:call-template name="colocaGormitiEnTablero">
                                            <xsl:with-param name="x">3</xsl:with-param>
                                            <xsl:with-param name="y">1</xsl:with-param>
                                        </xsl:call-template>
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell border="solid 0.1mm black">
                                    <fo:block>
                                        <xsl:call-template name="colocaGormitiEnTablero">
                                            <xsl:with-param name="x">1</xsl:with-param>
                                            <xsl:with-param name="y">2</xsl:with-param>
                                        </xsl:call-template>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell border="solid 0.1mm black">
                                    <fo:block>
                                        <xsl:call-template name="colocaGormitiEnTablero">
                                            <xsl:with-param name="x">2</xsl:with-param>
                                            <xsl:with-param name="y">2</xsl:with-param>
                                        </xsl:call-template>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell border="solid 0.1mm black">
                                    <fo:block>
                                        <xsl:call-template name="colocaGormitiEnTablero">
                                            <xsl:with-param name="x">3</xsl:with-param>
                                            <xsl:with-param name="y">2</xsl:with-param>
                                        </xsl:call-template>
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell border="solid 0.1mm black">
                                    <fo:block>
                                        <xsl:call-template name="colocaGormitiEnTablero">
                                            <xsl:with-param name="x">1</xsl:with-param>
                                            <xsl:with-param name="y">3</xsl:with-param>
                                        </xsl:call-template>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell border="solid 0.1mm black">
                                    <fo:block>
                                        <xsl:call-template name="colocaGormitiEnTablero">
                                            <xsl:with-param name="x">2</xsl:with-param>
                                            <xsl:with-param name="y">3</xsl:with-param>
                                        </xsl:call-template>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell border="solid 0.1mm black">
                                    <fo:block>
                                        <xsl:call-template name="colocaGormitiEnTablero">
                                            <xsl:with-param name="x">3</xsl:with-param>
                                            <xsl:with-param name="y">3</xsl:with-param>
                                        </xsl:call-template>
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                    
                </fo:flow>
            </fo:page-sequence>
        </fo:root> 
                
    </xsl:template>
    
    
    
    <xsl:template name="colocaGormitiEnTablero">
        <xsl:param name="x"/>
        <xsl:param name="y"/>
        <xsl:for-each select="tablero/gormitiEnMapa">
            <xsl:if test="($x = @x) and ($y = @y)">
                <xsl:call-template name="imagenEnCelda">
                    <xsl:with-param name="tribu"><xsl:value-of select="@tribu"/></xsl:with-param>
                </xsl:call-template>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>


    <xsl:template name="imagenEnCelda">
        <xsl:param name="tribu"/>
        <fo:external-graphic src="url({/gormitis/gormiti[@tribu = $tribu]})" content-height="150px" scaling="uniform"/>
    </xsl:template>
    
</xsl:stylesheet>