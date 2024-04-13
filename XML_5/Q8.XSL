<?xml version="1.0" encoding="UTF-8"?>
<Pujan:stylesheet version="1.0"
xmlns:Pujan="http://www.w3.org/1999/xsl/Transform">

<Pujan:template match="/">
  <table>
    <thead>
      <tr>
        <th>Roll No</th>
        <th>Name</th>
        <th>Marks</th>
        <th>Rank</th>
        <th>Result</th>
      </tr>
    </thead>
    <tbody>
      <Pujan:for-each select="students/student">
        <tr>
          <td><Pujan:value-of select="roll_no"/></td>
          <td><Pujan:value-of select="name"/></td>
          <td><Pujan:value-of select="marks"/></td>
          <td><Pujan:value-of select="rank"/></td>
          <td>
            <Pujan:choose>
              <Pujan:when test="marks &gt;= 70">dist</Pujan:when>
              <Pujan:when test="marks &gt;= 60 and marks &lt; 70">first</Pujan:when>
              <Pujan:when test="marks &gt;= 40 and marks &lt; 60">second</Pujan:when>
              <Pujan:otherwise>fail</Pujan:otherwise>
            </Pujan:choose>
          </td>
        </tr>
      </Pujan:for-each>
    </tbody>
  </table>
</Pujan:template>
</Pujan:stylesheet>
