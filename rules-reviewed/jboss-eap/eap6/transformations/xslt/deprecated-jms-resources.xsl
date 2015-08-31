<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:md="urn:jboss:messaging-deployment:1.0"
xmlns="urn:jboss:messaging-activemq-deployment:1.0"
  exclude-result-prefixes="md">

    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/md:messaging-deployment">
     <messaging-deployment >
       <xsl:apply-templates/>
     </messaging-deployment>
    </xsl:template>


    <xsl:template match="md:hornetq-server">
        <server >
                  <xsl:apply-templates/>
        </server>
           
    </xsl:template>


     <xsl:template match="*" name ="identity">
     <xsl:element name="{name()}" namespace="urn:jboss:messaging-activemq-deployment:1.0">
       <xsl:copy-of select="@*"/>
       <xsl:apply-templates/>
     </xsl:element>
 </xsl:template>

</xsl:stylesheet>
