<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<xsl:template match="/periodico">
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
	      <fo:title><xsl:value-of select="@nombre"/></fo:title>
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
	        <fo:block text-align="center"><fo:external-graphic src="url({@logo})" content-width="80%" scaling="uniform"/></fo:block>
	        
	        
	        <fo:table border-left-width="2mm" width="95%" border-collapse="separate">
	          <xsl:for-each select="menu/enlace">
	            <fo:table-column/>	            
	          </xsl:for-each>
	          
	          <fo:table-header>
	            <xsl:for-each select="menu/enlace">
	              <fo:table-cell>
	                <fo:block><fo:basic-link external-destination="url({@href})" text-decoration="underline" color="blue"><xsl:value-of select="."/></fo:basic-link></fo:block>
	              </fo:table-cell>
	            </xsl:for-each>

	          </fo:table-header>
	          
	          <fo:table-body>
	            <fo:table-row>
	              <xsl:for-each select="menu/enlace">
	                <fo:table-cell>
	                 <fo:block></fo:block>
	               </fo:table-cell>
	              </xsl:for-each>
	            </fo:table-row>
	          </fo:table-body>
	        </fo:table>
	        
	        <fo:block><fo:leader /></fo:block>
	        
	        <xsl:for-each select="noticias/noticia">
	          <fo:block font-size="12pt" text-align="center"><xsl:value-of select="titular"/></fo:block>
	          <fo:block font-size="9pt" text-align="center"><xsl:value-of select="subtitular"/></fo:block>
	          <fo:block text-align="center"><fo:external-graphic src="url({@imagen})" width="20.7cm" scaling="uniform"/></fo:block>
	          <fo:block>Fecha: <xsl:value-of select="@fecha"/></fo:block>
	          <fo:block><xsl:value-of select="@comentarios"/> comentarios</fo:block>
	          <fo:block><fo:leader /></fo:block>
	        </xsl:for-each>
	        
	        <fo:block><fo:leader /></fo:block>
	        
	        <fo:table border-left-width="2mm" width="95%" border-collapse="separate">
	           <xsl:for-each select="publicidad/anuncio">
	               <fo:table-column/>
	           </xsl:for-each>
	          
	          <fo:table-header>
	              <xsl:for-each select="publicidad/anuncio">
                    <xsl:sort select="@orden" order="ascending"/>
	                <fo:table-cell>
	                   <fo:block text-align="center"><fo:external-graphic src="url({@imagen})" width="20.7cm" scaling="uniform"/></fo:block>
	               </fo:table-cell>
	              </xsl:for-each>
	          </fo:table-header>
	          
	          <fo:table-body>
	            <fo:table-row>
	                <xsl:for-each select="publicidad/anuncio">
	                    <fo:table-cell>
	                       <fo:block></fo:block>
	                   </fo:table-cell>
	                </xsl:for-each>
	            </fo:table-row>
	          </fo:table-body>
	        </fo:table>
	        
	      </fo:flow>
	    </fo:page-sequence>
	  </fo:root>	</xsl:template>
	
	
</xsl:stylesheet>