<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD
XHTML 1.0 Transitional//EN" doctypesystem="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
<xsl:template match="/">
<html xmlns="http://www.w3.org/1999/xhtml">
<body>
<table border='1'>
<tr>
    <th> رقم السورة</th>
    <th>اياتها</th>
    <th>اسم السورة</th>
</tr>
<xsl:for-each select="mushaf/sura">
<tr>
			<td><xsl:value-of select="sura/id"/></td>
			<td><xsl:value-of select="sura/nb_aya"/></td>
			<td><xsl:value-of select="sura/name"/></td>
			
		<xsl:element name="a">	
		<xsl:attribute name="href">
		sura/<xsl:value-of select="@name"/>.amr
		</xsl:attribute>
		<xsl:value-of select="@name"/>
		</xsl:element>	
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
