<Pujan:stylesheet version="1.0" xmlns:Pujan="http://www.w3.org/1999/xsl/Transform">
  <Pujan:template match="/">
    <html>
      <body>
        <Pujan:for-each select="emp_info/employee">
          <h1>Emp_name: <Pujan:value-of select="concat(firstname, ' ', lastname)" /></h1>
          <p
            style="font-size: smaller;">Employee number: <Pujan:value-of select="@emp_id" /></p>
        </Pujan:for-each>
      </body>
    </html>
  </Pujan:template>
</Pujan:stylesheet>