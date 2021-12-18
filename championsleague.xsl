<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<table id="menuTable" border="1" class="indent">
    <thead>
        <tr>
            <th>Select</th>
            <th>Match</th>
            <th>Price</th>
        </tr>
    </thead>
    <tbody>
        <xsl:for-each select="//section">
            <tr>
                <td colspan="3">
                    <xsl:value-of select="@name" />
                </td>
            </tr>
            <xsl:for-each select="entry">
                <tr id="{position()}">
                    <xsl:attribute name="kit">
                        <xsl:value-of select="boolean(@kit)" />
                    </xsl:attribute>
                    <td align="center">
                        <input name="match0" type="checkbox" />
                    </td>
                    <td>
                        <xsl:value-of select="match" />
                    </td>
                    <td align="right">
                        <xsl:value-of select="price" />
                    </td>
                </tr>
            </xsl:for-each>
        </xsl:for-each>
    </tbody>
</table>
</xsl:template>
</xsl:stylesheet>