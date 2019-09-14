<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8"/>


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
	<script>
	  function PlaySound(soundobj) {
	  var thissound=document.getElementById(soundobj);
	  thissound.play();
	  }
	  
	  function StopSound(soundobj) {
	  var thissound=document.getElementById(soundobj);
	  thissound.pause();
	  thissound.currentTime = 0;
	  }
	  </script>
      </head>
      <body>
	<center>
	<xsl:apply-templates/>
	</center>
      </body>
    </html>
  </xsl:template>

  
  <xsl:template match="song[@id='renata']">
    <audio controls=""><source src="mp3/Hej Sokoły - Maryla Rodowicz -0QrYTIsrNi0.mp4.mp3"></source></audio>
    <div>Renata Zarębska</div><!-- Renata Zarębska - Noc z Renatą -->
    <xsl:apply-templates/>
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

    
    <audio controls=""><source src="mp3/Hej Sokoły - Maryla Rodowicz -0QrYTIsrNi0.mp4.mp3"></source></audio>
    <div>Maryla Rodowicz</div> 
    <xsl:apply-templates select="title"/>
    <xsl:apply-templates select="p[@id='5last']"/>
    <xsl:apply-templates select="p[@id='ref1']"/>
    <xsl:apply-templates select="p[@id='ref2']"/>
    <!--
    <xsl:apply-templates select="p[@id='2']"/>
    <xsl:apply-templates select="p[@id='ref1']"/>
    <xsl:apply-templates select="p[@id='ref2']"/>
    -->
    <!--
    <xsl:apply-templates select="p[@id='3']"/>
    <xsl:apply-templates select="p[@id='ref1']"/>
    <xsl:apply-templates select="p[@id='ref2']"/>
    -->
    <xsl:apply-templates select="p[@id='4var']"/>
    <xsl:apply-templates select="p[@id='ref1']"/>
    <xsl:apply-templates select="p[@id='ref2']"/>
    <!--
    <xsl:apply-templates select="p[@id='5']"/>
    <xsl:apply-templates select="p[@id='ref1']"/>
    <xsl:apply-templates select="p[@id='ref2']"/>
    -->
    <xsl:apply-templates select="p[@id='6rep']"/>
    <xsl:apply-templates select="p[@id='ref1']"/>
    <xsl:apply-templates select="p[@id='ref2']"/>

    <audio controls=""><source src="mp3/Bayer Full - Hej sokoły (Official Version 1998)-axAo4Ia8Xjo.mp4.mp3"></source></audio>
    <div>Bayer Full</div> 
    <xsl:apply-templates select="title"/>
    <xsl:apply-templates select="p[@id='1']"/>
    <xsl:apply-templates select="p[@id='ref1']"/>
    <xsl:apply-templates select="p[@id='ref2']"/>
    <xsl:apply-templates select="p[@id='2']"/>
    <xsl:apply-templates select="p[@id='ref1']"/>
    <xsl:apply-templates select="p[@id='ref2']"/>
    <!--
    <xsl:apply-templates select="p[@id='3']"/>
    <xsl:apply-templates select="p[@id='ref1']"/>
    <xsl:apply-templates select="p[@id='ref2']"/>
    -->
    <xsl:apply-templates select="p[@id='4']"/>
    <xsl:apply-templates select="p[@id='ref1']"/>
    <xsl:apply-templates select="p[@id='ref2']"/>
    <xsl:apply-templates select="p[@id='5']"/>
    <xsl:apply-templates select="p[@id='ref1']"/>
    <xsl:apply-templates select="p[@id='ref2']"/>
    <xsl:apply-templates select="p[@id='6']"/>
    <xsl:apply-templates select="p[@id='ref1']"/>
    <xsl:apply-templates select="p[@id='ref2']"/>


    <audio controls=""><source src="mp3/Dzikie Pola - Hej Sokoły-2Kxxqm7b_ys.mp4.mp3"></source></audio>
    <div>Dzikie Pola</div>
    <xsl:apply-templates select="title"/>
    <xsl:apply-templates select="p[@id='1']"/>
    <xsl:apply-templates select="p[@id='ref1']"/>
    <xsl:apply-templates select="p[@id='ref2']"/>
    <xsl:apply-templates select="p[@id='5var']"/>
    <xsl:apply-templates select="p[@id='ref1']"/>
    <xsl:apply-templates select="p[@id='ref2']"/>
    
    <xsl:apply-templates select="p[@id='4']"/>
    <xsl:apply-templates select="p[@id='ref1']"/>
    <xsl:apply-templates select="p[@id='ref2']"/>
    
    <xsl:apply-templates select="p[@id='6']"/>
    <xsl:apply-templates select="p[@id='ref1']"/>
    <xsl:apply-templates select="p[@id='ref2']"/>
    <!--
    <xsl:apply-templates select="p[@id='5']"/>
    <xsl:apply-templates select="p[@id='ref1']"/>
    <xsl:apply-templates select="p[@id='ref2']"/>
    <xsl:apply-templates select="p[@id='6']"/>
    <xsl:apply-templates select="p[@id='ref1']"/>
    <xsl:apply-templates select="p[@id='ref2']"/>
    -->

    <audio controls=""><source src="mp3/Hej sokoły ! - Krzysztof Krawczyk-rJnVI4Hj3SI.mp4.mp3"></source></audio>
    <div>Krzysztof Krawczyk</div> 
    <xsl:apply-templates select="title"/>
    <xsl:apply-templates select="p[@id='5var']"/>
    <xsl:apply-templates select="p[@id='ref1']"/>
    <!--
	<xsl:apply-templates select="p[@id='ref2']"/>
    -->
    <!--
    <xsl:apply-templates select="p[@id='2']"/>
    <xsl:apply-templates select="p[@id='ref1']"/>
    <xsl:apply-templates select="p[@id='ref2']"/>
    -->
    <xsl:apply-templates select="p[@id='3']"/>
    <xsl:apply-templates select="p[@id='ref1']"/>
    <xsl:apply-templates select="p[@id='ref2']"/>
    
    <xsl:apply-templates select="p[@id='4']"/>
    <xsl:apply-templates select="p[@id='ref1']"/>
    <xsl:apply-templates select="p[@id='ref2']"/>
    <!--
    <xsl:apply-templates select="p[@id='5']"/>
    <xsl:apply-templates select="p[@id='ref1']"/>
    <xsl:apply-templates select="p[@id='ref2']"/>
    -->
    <xsl:apply-templates select="p[@id='6']"/>
    <xsl:apply-templates select="p[@id='ref1']"/>
    <xsl:apply-templates select="p[@id='ref2']"/>




    <audio controls=""><source src="mp3/Hej Sokoły - Ludowa Piosenka (Polish folk song)-qqVQmRmlH14.mp4.mp3"></source></audio>
    <div>Ludowa Piosenka</div> 
    <xsl:apply-templates select="title"/>
    <xsl:apply-templates select="p[@id='1']"/>
    <xsl:apply-templates select="p[@id='ref1']"/>
    <xsl:apply-templates select="p[@id='ref2']"/>
    <xsl:apply-templates select="p[@id='2']"/>
    <xsl:apply-templates select="p[@id='ref1']"/>
    <xsl:apply-templates select="p[@id='ref2']"/>
    <!--
    <xsl:apply-templates select="p[@id='3']"/>
    <xsl:apply-templates select="p[@id='ref1']"/>
    <xsl:apply-templates select="p[@id='ref2']"/>
    -->
    <xsl:apply-templates select="p[@id='4']"/>
    <xsl:apply-templates select="p[@id='ref1']"/>
    <xsl:apply-templates select="p[@id='ref2']"/>
    <xsl:apply-templates select="p[@id='6']"/>
    <xsl:apply-templates select="p[@id='ref1']"/>
    <xsl:apply-templates select="p[@id='ref2']"/>
    <xsl:apply-templates select="p[@id='5']"/>
    <xsl:apply-templates select="p[@id='ref1']"/>
    <xsl:apply-templates select="p[@id='ref2']"/>

    <xsl:apply-templates select="p[@id='1']"/>

    <xsl:apply-templates select="p[@id='ref1']"/>
    <xsl:apply-templates select="p[@id='ref2']"/>



    


    <audio controls=""><source src="mp3/Hej, sokoły + tekst, słowa-D1q0-bT6H7s.mp4.mp3"></source></audio>
    <div>tekst</div> 
    <xsl:apply-templates select="title"/>
    <xsl:apply-templates select="p[@id='5last']"/>
    <xsl:apply-templates select="p[@id='ref1']"/>
    <xsl:apply-templates select="p[@id='ref2']"/>
    <!--
    <xsl:apply-templates select="p[@id='2']"/>
    <xsl:apply-templates select="p[@id='ref1']"/>
    <xsl:apply-templates select="p[@id='ref2']"/>
    -->
    <!--
    <xsl:apply-templates select="p[@id='3']"/>
    <xsl:apply-templates select="p[@id='ref1']"/>
    <xsl:apply-templates select="p[@id='ref2']"/>
    -->
    <xsl:apply-templates select="p[@id='4var2']"/>
    <xsl:apply-templates select="p[@id='ref1']"/>
    <xsl:apply-templates select="p[@id='ref2']"/>
    <!--
    <xsl:apply-templates select="p[@id='5']"/>
    <xsl:apply-templates select="p[@id='ref1']"/>
    <xsl:apply-templates select="p[@id='ref2']"/>
    -->
    <xsl:apply-templates select="p[@id='6']"/>
    <xsl:apply-templates select="p[@id='ref1']"/>
    <xsl:apply-templates select="p[@id='ref2']"/>



    <audio controls=""><source src="mp3/Hej sokoły-xqhpWhcgPm8.webm.mp3"></source></audio>
    <div>Karaoke</div> 
    <xsl:apply-templates select="title"/>
    <xsl:apply-templates select="p[@id='1']"/>
    <xsl:apply-templates select="p[@id='ref1']"/>
    <xsl:apply-templates select="p[@id='ref2']"/>

    <xsl:apply-templates select="p[@id='4var']"/>
    <xsl:apply-templates select="p[@id='ref1']"/>
    <xsl:apply-templates select="p[@id='ref2']"/>

    <xsl:apply-templates select="p[@id='5']"/>
    <xsl:apply-templates select="p[@id='ref1']"/>
    <xsl:apply-templates select="p[@id='ref2']"/>

    <xsl:apply-templates select="p[@id='6']"/>
    <xsl:apply-templates select="p[@id='ref1']"/>
    <xsl:apply-templates select="p[@id='ref2']"/>



     
  </xsl:template>


  
  <xsl:template match="song[@id='lipka']">
  </xsl:template> 

  <xsl:template match="song[@id='dowidzenia']">
  </xsl:template>

  
  <xsl:template match="song[@id='weekend']">
  </xsl:template> 

  <xsl:template match="song[@id='wmoim']">
  </xsl:template>


  




<!-- ================================================== -->
<!-- ===============      elemetar    ================= -->
<!-- ================================================== -->












  

  <xsl:template match="title">
    <div style="font-size:1.5em"><xsl:apply-templates/></div>
  </xsl:template>

  <xsl:template match="p">
    <div style="margin:1em">***<xsl:value-of select="@id"/>***</div>
    <div><xsl:apply-templates/></div>
  </xsl:template>

  <xsl:template match="v">
    <div style="margin:0.5em"><xsl:apply-templates/></div>
  </xsl:template>

<!--
  
  <xsl:template match="pl" mode="audio">
    <audio>
      <xsl:attribute name="id">
	<xsl:number level="any"/>
      </xsl:attribute>
      <xsl:attribute name="src">
	<xsl:text>gspeech/</xsl:text><xsl:number level="any"/><xsl:text>.mp3</xsl:text>
      </xsl:attribute>
    </audio>
  </xsl:template>
-->

  <xsl:template match="pl">
    <!--  see https://stackoverflow.com/questions/48090490/xslt-how-to-get-position-of-an-element-among-all-such-elements-in-the-xml -->
    
    <audio>
      <xsl:attribute name="id">
	<xsl:number level="any"/>
      </xsl:attribute>
      <xsl:attribute name="src">
	<xsl:text>gspeech/</xsl:text><xsl:number level="any"/><xsl:text>.mp3</xsl:text>
      </xsl:attribute>
    </audio>

    <div>
      <xsl:attribute name="onmouseover">
	<xsl:text>PlaySound('</xsl:text><xsl:number level="any"/><xsl:text>')</xsl:text>
      </xsl:attribute>
      <xsl:attribute name="onmouseout">
	<xsl:text>StopSound('</xsl:text><xsl:number level="any"/><xsl:text>')</xsl:text>
      </xsl:attribute>
      <b><xsl:apply-templates/></b>
    </div>
    
  </xsl:template>


  
  <xsl:template match="ip">
    <div><xsl:apply-templates/></div>
  </xsl:template>
  
  <xsl:template match="fr">
    <div><i><xsl:apply-templates/></i></div>
  </xsl:template> 
  
  
</xsl:stylesheet> 
