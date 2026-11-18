<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/document">
    <html>
      <head>
        <title><xsl:value-of select="titre"/> - Diarry Soung, né(e) le 01 05 2005</title>
        <link rel="stylesheet" href="style.css"/>
      </head>
      <body>
        <h1><xsl:value-of select="titre"/> - DIARRY SOUNG, 01 05 2005 le jj/mm/aaaa</h1>
        <p class="infos">Cote : <xsl:value-of select="@cote"/> - Année : <xsl:value-of select="annee"/> - Prix : <xsl:value-of select="prix"/> FCFA</p>
        <h2>Auteurs</h2>
        <ul>
          <xsl:apply-templates select="auteur">
            <xsl:sort select="." order="ascending"/>
          </xsl:apply-templates>
        </ul>
        <p class="etat">État :
          <xsl:choose>
            <xsl:when test="@disponible='true'">Disponible</xsl:when>
            <xsl:otherwise>Indisponible</xsl:otherwise>
          </xsl:choose>
        </p>
      </body>
    </html>
  </xsl:template>
  <xsl:template match="auteur">
    <li><xsl:value-of select="."/></li>
  </xsl:template>
</xsl:stylesheet>