<?xml version="1.0" encoding="UTF-8"?>
<Pujan:stylesheet version="1.0"
xmlns:Pujan="http://www.w3.org/1999/xsl/Transform">

<Pujan:template match="/">
  <html>
  <body>
    <h2>Student Rankings</h2>
    <p><b>Top Students:</b></p>
    <ul>
      <Pujan:for-each select="emails/email[rank &lt;= 5]">
        <li>
          <Pujan:value-of select="concat(name, ' (Roll No: ', roll_no, ')')"/>
        </li>
      </Pujan:for-each>
    </ul>
    <p><b>Top 10 Students:</b></p>
    <ul>
      <Pujan:for-each select="emails/email[rank &gt; 5 and rank &lt;= 10]">
        <li>
          <Pujan:value-of select="concat(name, ' (Roll No: ', roll_no, ')')"/>
        </li>
      </Pujan:for-each>
    </ul>
    <p><b>Average Students:</b></p>
    <ul>
      <Pujan:for-each select="emails/email[rank &gt; 10]">
        <li>
          <Pujan:value-of select="concat(name, ' (Roll No: ', roll_no, ')')"/>
        </li>
      </Pujan:for-each>
    </ul>
  </body>
  </html>
</Pujan:template>
</Pujan:stylesheet>
