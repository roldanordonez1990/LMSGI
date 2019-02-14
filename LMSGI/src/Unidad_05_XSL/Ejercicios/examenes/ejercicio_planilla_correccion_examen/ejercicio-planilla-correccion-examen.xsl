<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:template match="/correccionExamen">
        <html>
            <head>
                <title>Correción de examen</title>
                <style type="text/css">
                    body {
                    margin: 50px;
                    padding: 0px;
                    background: #2372DE;
                    font-family: 'Open Sans', sans-serif;
                    font-size: 11pt;
                    color: #FFFFFF;
                    }
                    h1 {
                    color: #FFFF99;
                    }
                    .parrafopropio {
                    margin: 15px;
                    }
                    a {
                    color: #66FFFF;  <!-- Azul -->
                    }
                    a:hover {
                    color: #FFFFFF;  <!-- Blanco -->
                    font-weight: bold;
                    text-decoration: none;
                    }
                </style>
                
            </head>
            <body>
                <table border="1" align="center">
                    <tr><td colspan="5" align="center"><xsl:value-of select="examen/@tema"/></td></tr>
                    <tr>
                        <td></td>
                        <xsl:for-each select="examen/apartado">
                            <xsl:sort select="@numApartado" order="ascending"/>
                            <td><xsl:value-of select="@descripcion"/></td>
                        </xsl:for-each>
                        <td></td>
                    </tr>   
                    <tr>
                        <td></td>
                        <xsl:for-each select="examen/apartado">
                            <xsl:sort select="@numApartado" order="ascending"/>
                            <td align="right">Puntos: <xsl:value-of select="@valorPuntos"/></td>
                        </xsl:for-each>
                        <td>Puntuación Total</td>
                    </tr>
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
                </table>
            </body>
        </html>
    </xsl:template>



    <xsl:template name="FilaPorAlumno">
        <xsl:param name="color"/>
        <tr>
            <td style="background:#{$color}; color:#000;"><xsl:value-of select="@nombre"/></td>
            
            <xsl:for-each select="valoracionApartado">
                <xsl:sort select="@numApartado" order="ascending"/>
                <td align="right"  style="background:#{$color}; color:#000;"><xsl:value-of select="."/></td>
            </xsl:for-each>
            
            <td align="right" style="background:#{$color}; color:#F00; font-weight:bolder;"><xsl:value-of select="../../examen/apartado[@numApartado = '1']/@valorPuntos * valoracionApartado[@numApartado = '1'] +
                ../../examen/apartado[@numApartado = '2']/@valorPuntos * valoracionApartado[@numApartado = '2'] + 
                ../../examen/apartado[@numApartado = '3']/@valorPuntos * valoracionApartado[@numApartado = '3']"/></td>
        </tr>
        
    </xsl:template>
</xsl:stylesheet>