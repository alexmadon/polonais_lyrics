<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" encoding="UTF-8"/>


  <xsl:template match="songs">
    <html>
      <head>
        <meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
        <title>Songs</title>
	<style>
	  audio {
	  width: 80%
	  }
	</style>

      </head>
      <body>
	<center>
	<xsl:apply-templates/>
	</center>
      </body>
    </html>
  </xsl:template>

  
  
  <xsl:template match="song[@id='kare']">
  </xsl:template> 

  <xsl:template match="song[@id='kochana']">
  </xsl:template>


  
  <xsl:template match="song[@id='najpie']">
  </xsl:template> 

  <xsl:template match="song[@id='pami']">
  </xsl:template> 

  <xsl:template match="song[@id='etna']">
  </xsl:template> 


  <xsl:template match="song[@id='hej']">
    HHHHHHHHHHHHHH
    <xsl:apply-templates/>
  </xsl:template>


  <xsl:template match="song[@id='lipka']">
    <song>
      LIPKA
      <xsl:apply-templates/>
    </song>
  </xsl:template> 

  <xsl:template match="song[@id='dowidzenia']">
    
  </xsl:template> 
  <xsl:template match="song[@id='weekend']">
    
  </xsl:template> 

  <xsl:template match="song[@id='wmoim']">
    
  </xsl:template> 


  <xsl:template match="title">
    <div style="font-size:1.5em"><xsl:apply-templates/></div>
  </xsl:template>

  <xsl:template match="p">
    <div style="margin:1em"><xsl:apply-templates/></div>
    <div>***</div>
  </xsl:template>

  <xsl:template match="v">
    <div style="margin:0.5em"><xsl:apply-templates/></div>
  </xsl:template>
  
  <xsl:template match="pl">
    <div><b><xsl:apply-templates/></b></div>
  </xsl:template>
  
  <xsl:template match="ip">
    <div><xsl:apply-templates/></div>
  </xsl:template>
  
  <xsl:template match="fr">
    <div><i><xsl:apply-templates/></i></div>
  </xsl:template> 
  
  
</xsl:stylesheet> 
