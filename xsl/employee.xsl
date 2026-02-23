<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
  <h2>Employee</h2>
  <table border="1">
    <tr bgcolor="red">
      <th>Full Name</th>
      <th>Designation</th>
      <th>Address</th>
      <th>Phone</th>
    </tr>
    <xsl:for-each select="company/employee">
    <tr>
      <td><xsl:value-of select="fullname"/></td>
      <td><xsl:value-of select="designation"/></td>
      <td><xsl:value-of select="address"/></td>
      <td><xsl:value-of select="phone"/></td>
    </tr>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
