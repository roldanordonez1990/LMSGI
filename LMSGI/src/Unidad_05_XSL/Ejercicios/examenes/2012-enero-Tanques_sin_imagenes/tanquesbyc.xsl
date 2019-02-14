<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/juegoTanques">
    <html>
      <head><title>El juego de tanques</title></head>
      <body>
        <table border="1">
          <tr>
            <td></td>
            <td>Jugador</td>
            <td>Jugada</td>
          </tr>
          <xsl:for-each select="jugadasDescritas/jugada">
            <tr>
              <xsl:attribute name="bgcolor">
                <xsl:choose>
                  <xsl:when test="position() mod 2 = 0">#00FF00</xsl:when>
                </xsl:choose>
              </xsl:attribute>
              <td>
                <xsl:value-of select="position()"/>
              </td>
              <td>
                <xsl:value-of select="@jugador"/>
              </td>
              <td>
                <xsl:value-of select="@desc"/>
              </td>
            </tr>
          </xsl:for-each>
          
        </table>
        <xsl:for-each select="jugadasGraficas/jugadaGrafica">
          <table border="1">
          <tr>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="1"/>
              <xsl:with-param name="columna" select="1"/>
            </xsl:call-template>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="1"/>
              <xsl:with-param name="columna" select="2"/>
            </xsl:call-template>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="1"/>
              <xsl:with-param name="columna" select="3"/>
            </xsl:call-template>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="1"/>
              <xsl:with-param name="columna" select="4"/>
            </xsl:call-template>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="1"/>
              <xsl:with-param name="columna" select="5"/>
            </xsl:call-template>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="1"/>
              <xsl:with-param name="columna" select="6"/>
             </xsl:call-template> 
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="1"/>
              <xsl:with-param name="columna" select="7"/>
            </xsl:call-template>
             <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="1"/>
              <xsl:with-param name="columna" select="8"/>
            </xsl:call-template>
          </tr>
          <tr>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="2"/>
              <xsl:with-param name="columna" select="1"/>
            </xsl:call-template>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="2"/>
              <xsl:with-param name="columna" select="2"/>
            </xsl:call-template>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="2"/>
              <xsl:with-param name="columna" select="3"/>
            </xsl:call-template>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="2"/>
              <xsl:with-param name="columna" select="4"/>
            </xsl:call-template>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="2"/>
              <xsl:with-param name="columna" select="5"/>
            </xsl:call-template>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="2"/>
              <xsl:with-param name="columna" select="6"/>
             </xsl:call-template> 
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="2"/>
              <xsl:with-param name="columna" select="7"/>
            </xsl:call-template>
             <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="2"/>
              <xsl:with-param name="columna" select="8"/>
            </xsl:call-template>
          </tr>
          <tr>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="3"/>
              <xsl:with-param name="columna" select="1"/>
            </xsl:call-template>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="3"/>
              <xsl:with-param name="columna" select="2"/>
            </xsl:call-template>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="3"/>
              <xsl:with-param name="columna" select="3"/>
            </xsl:call-template>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="3"/>
              <xsl:with-param name="columna" select="4"/>
            </xsl:call-template>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="3"/>
              <xsl:with-param name="columna" select="5"/>
            </xsl:call-template>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="3"/>
              <xsl:with-param name="columna" select="6"/>
             </xsl:call-template> 
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="3"/>
              <xsl:with-param name="columna" select="7"/>
            </xsl:call-template>
             <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="3"/>
              <xsl:with-param name="columna" select="8"/>
            </xsl:call-template>
          </tr><tr>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="4"/>
              <xsl:with-param name="columna" select="1"/>
            </xsl:call-template>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="4"/>
              <xsl:with-param name="columna" select="2"/>
            </xsl:call-template>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="4"/>
              <xsl:with-param name="columna" select="3"/>
            </xsl:call-template>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="4"/>
              <xsl:with-param name="columna" select="4"/>
            </xsl:call-template>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="4"/>
              <xsl:with-param name="columna" select="5"/>
            </xsl:call-template>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="4"/>
              <xsl:with-param name="columna" select="6"/>
             </xsl:call-template> 
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="4"/>
              <xsl:with-param name="columna" select="7"/>
            </xsl:call-template>
             <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="4"/>
              <xsl:with-param name="columna" select="8"/>
            </xsl:call-template>
          </tr>
          <tr>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="5"/>
              <xsl:with-param name="columna" select="1"/>
            </xsl:call-template>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="5"/>
              <xsl:with-param name="columna" select="2"/>
            </xsl:call-template>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="5"/>
              <xsl:with-param name="columna" select="3"/>
            </xsl:call-template>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="5"/>
              <xsl:with-param name="columna" select="4"/>
            </xsl:call-template>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="5"/>
              <xsl:with-param name="columna" select="5"/>
            </xsl:call-template>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="5"/>
              <xsl:with-param name="columna" select="6"/>
             </xsl:call-template> 
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="5"/>
              <xsl:with-param name="columna" select="7"/>
            </xsl:call-template>
             <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="5"/>
              <xsl:with-param name="columna" select="8"/>
            </xsl:call-template>
          </tr>
          <tr>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="6"/>
              <xsl:with-param name="columna" select="1"/>
            </xsl:call-template>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="6"/>
              <xsl:with-param name="columna" select="2"/>
            </xsl:call-template>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="6"/>
              <xsl:with-param name="columna" select="3"/>
            </xsl:call-template>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="6"/>
              <xsl:with-param name="columna" select="4"/>
            </xsl:call-template>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="6"/>
              <xsl:with-param name="columna" select="5"/>
            </xsl:call-template>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="6"/>
              <xsl:with-param name="columna" select="6"/>
             </xsl:call-template> 
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="6"/>
              <xsl:with-param name="columna" select="7"/>
            </xsl:call-template>
             <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="6"/>
              <xsl:with-param name="columna" select="8"/>
            </xsl:call-template>
          </tr>
          <tr>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="7"/>
              <xsl:with-param name="columna" select="1"/>
            </xsl:call-template>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="7"/>
              <xsl:with-param name="columna" select="2"/>
            </xsl:call-template>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="7"/>
              <xsl:with-param name="columna" select="3"/>
            </xsl:call-template>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="7"/>
              <xsl:with-param name="columna" select="4"/>
            </xsl:call-template>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="7"/>
              <xsl:with-param name="columna" select="5"/>
            </xsl:call-template>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="7"/>
              <xsl:with-param name="columna" select="6"/>
             </xsl:call-template> 
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="7"/>
              <xsl:with-param name="columna" select="7"/>
            </xsl:call-template>
             <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="7"/>
              <xsl:with-param name="columna" select="8"/>
            </xsl:call-template>
          </tr>
          <tr>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="8"/>
              <xsl:with-param name="columna" select="1"/>
            </xsl:call-template>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="8"/>
              <xsl:with-param name="columna" select="2"/>
            </xsl:call-template>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="8"/>
              <xsl:with-param name="columna" select="3"/>
            </xsl:call-template>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="8"/>
              <xsl:with-param name="columna" select="4"/>
            </xsl:call-template>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="8"/>
              <xsl:with-param name="columna" select="5"/>
            </xsl:call-template>
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="8"/>
              <xsl:with-param name="columna" select="6"/>
             </xsl:call-template> 
            <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="8"/>
              <xsl:with-param name="columna" select="7"/>
            </xsl:call-template>
             <xsl:call-template name="mostrarCasilla">
              <xsl:with-param name="fila" select="8"/>
              <xsl:with-param name="columna" select="8"/>
            </xsl:call-template>
          </tr>
          </table>
          </xsl:for-each>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template name="mostrarCasilla">
    <xsl:param name="fila"/>
    <xsl:param name="columna"/>
    <td width="50px" height="50px">
      <xsl:for-each select="posicion">
        <xsl:if test="(@y = $columna) and (@x = $fila)">
          <xsl:choose>
            <xsl:when test="@tipo = 'tanque'">
              <xsl:attribute name="bgcolor">#FF00000</xsl:attribute>
            </xsl:when>
            <xsl:when test="@tipo = 'pared'">
              <xsl:attribute name="bgcolor">#000000</xsl:attribute>
            </xsl:when>
          </xsl:choose>
        </xsl:if>
      </xsl:for-each>
    </td>
  </xsl:template>
</xsl:stylesheet>

