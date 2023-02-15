<?xml version="1.1" encoding="UTF-8" standalone="yes"?>
<xsl:stylesheet version="3.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fhir="http://hl7.org/fhir">
    <xsl:output method="xml" indent="yes" />

    <xsl:template match="fhir:contact">
        <contact>
            <xsl:apply-templates />
        </contact>

    </xsl:template>
    <xsl:template match="fhir:telecom">
        <telecom>
            <xsl:apply-templates />
        </telecom>
    </xsl:template>
    <xsl:template match="fhir:jurisdiction">
        <jurisdiction>
            <xsl:value-of select="concat(./fhir:coding/fhir:system/@value,'#',./fhir:coding/fhir:code/@value)" />
        </jurisdiction>
    </xsl:template>
    <xsl:template match="*[count(child::*)=0]">
        <xsl:variable name="name" select="name()"/>
        <xsl:element name="{$name}">
            <xsl:value-of select="@value" />
        </xsl:element>
    </xsl:template>
    <xsl:template match="*">
        <xsl:apply-templates />
    </xsl:template>
    <xsl:template match="/">
        <root>
            <canonical>
                <xsl:value-of select="substring-before(/fhir:ImplementationGuide/fhir:url/@value,'/ImplementationGuide')" />
            </canonical>
            <copyrightYear>
                <xsl:value-of select="/fhir:ImplementationGuide/fhir:definition/fhir:parameter[./fhir:code/@value='copyrightyear']/fhir:value/@value" />
            </copyrightYear>
            <releaseLabel>
                <xsl:value-of select="/fhir:ImplementationGuide/fhir:definition/fhir:parameter[./fhir:code/@value='releaselabel']/fhir:value/@value" />
            </releaseLabel>
            <xsl:apply-templates />
            <parameters>
                <xsl:apply-templates select="/fhir:ImplementationGuide/fhir:definition/fhir:parameter" mode="parameter" />
            </parameters>
            <pages>
                <xsl:apply-templates select="/fhir:ImplementationGuide/fhir:definition/fhir:page" mode="page" />
            </pages>
            <dependencies>
                <xsl:apply-templates select="/fhir:ImplementationGuide/fhir:dependsOn" mode="dependsOn" />
            </dependencies>
            <resources>
                <xsl:apply-templates select="/fhir:ImplementationGuide/fhir:definition/fhir:resource" mode="resource" />
            </resources>
            <groups>
                <xsl:apply-templates select="/fhir:ImplementationGuide/fhir:definition/fhir:grouping" mode="grouping" />
            </groups>
        </root>

    </xsl:template>
    <xsl:template match="fhir:resource"></xsl:template>
    <xsl:template match="fhir:resource" mode="resource">
        <xsl:variable name="name" select="replace(./fhir:reference/fhir:reference/@value,'/','--')"></xsl:variable>

        <xsl:element name="{$name}">
            <xsl:apply-templates select="./*[name()!='reference' ]"/>
        </xsl:element>

    </xsl:template>
    <xsl:template match="fhir:grouping"></xsl:template>
    <xsl:template match="fhir:grouping" mode="grouping">
        <xsl:variable name="name" select="./@id"></xsl:variable>

        <xsl:element name="{$name}">
            <xsl:apply-templates />
            <!--xsl:apply-templates select="/fhir:ImplementationGuide/fhir:definition/fhir:resource/fhir:groupingId[@value=$name]" mode="groupingId"/-->
        </xsl:element>

    </xsl:template>
    <xsl:template match="fhir:page"></xsl:template>
    <xsl:template match="fhir:page" mode="page">
        <xsl:variable name="name" select="replace(./fhir:nameUrl/@value, '\.html','.xml')"></xsl:variable>
        <xsl:choose>
            <xsl:when test="$name='toc.xml'">
                <xsl:apply-templates select="./fhir:page" mode="page" />
        </xsl:when>
                    <xsl:otherwise>
                        <xsl:element name="{$name}">
                            <xsl:apply-templates select="./*[name()!='nameUrl']"/>
                            <xsl:apply-templates select="./fhir:page" mode="page" />
                        </xsl:element>
                
                </xsl:otherwise>
</xsl:choose>

 
    </xsl:template>
    <xsl:template match="fhir:groupingId"></xsl:template>
    <xsl:template match="fhir:groupingId" mode="groupingId">
        <xsl:element name="resources">
            <xsl:value-of select="../fhir:reference/fhir:reference/@value" />
        </xsl:element>
    </xsl:template>
    <xsl:template match="fhir:parameter"></xsl:template>
    <xsl:template match="fhir:parameter" mode="parameter">
        <xsl:variable name="name" select="./fhir:code/@value"></xsl:variable>
        <xsl:element name="{$name}">
            <xsl:value-of select="./fhir:value/@value" />
        </xsl:element>
    </xsl:template>
    <xsl:template match="fhir:dependsOn"></xsl:template>
    <xsl:template match="fhir:dependsOn" mode="dependsOn">
        <xsl:variable name="name" select="./fhir:packageId/@value"></xsl:variable>
        <xsl:element name="{$name}">
            <xsl:apply-templates select="./*[name()!='packageId']" />
        </xsl:element>
    </xsl:template>
    <xsl:template match="fhir:publisher">
        <publisher>
            <xsl:apply-templates />
        </publisher>
    </xsl:template>
</xsl:stylesheet>