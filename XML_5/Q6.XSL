<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <students>
            <xsl:for-each select="students/student">
                <student ID="{@ID}">
                    <xsl:element name="fname">
                        <xsl:attribute name="id">
                            <xsl:value-of select="@Name/substring-before(@Name, ' ')"/>
                        </xsl:attribute>
                        <xsl:value-of select="@Name/substring-after(@Name, ' ')"/>
                    </xsl:element>
                    <xsl:for-each select="plan/course">
                        <course><xsl:value-of select="."/></course>
                    </xsl:for-each>
                </student>
            </xsl:for-each>
        </students>
    </xsl:template>

</xsl:stylesheet>
