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
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>

