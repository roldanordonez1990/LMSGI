<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:output method="html" encoding="iso-8859-1"/>
    
    <xsl:template match="/vehiculos">
        <html>
            <head></head>
            <body>
                <xsl:for-each select="vehiculo">
                    <xsl:sort select="nombre" order="ascending"/>
                    <xsl:apply-templates select="."/>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
    
    <!-- Para tratar cada vehículo por separado -->
    <xsl:template match="vehiculo">
        Vehículo: <xsl:value-of select="concat(nombre, ' - ', modelo, '(', modelo/@anioFabricacion, ')')"/>
        <br/>
        <xsl:apply-templates select="fabricacion"/>
        <xsl:for-each select="modificaciones/modificacion">
            Modificación: <xsl:value-of select="."/>
            <br/>
        </xsl:for-each>
        <p/>
    </xsl:template>
    
    <xsl:template match="inicio | fin">
        Fecha: <xsl:value-of select="concat(dia, '/', mes, '/', anyo)"/>
        <br/>
    </xsl:template>
</xsl:stylesheet>