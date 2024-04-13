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
      <Pujan:for-each select="generate-sequence(1, 10)">
        <Pujan:variable name="currentRollNo">
          <Pujan:number format="0000" level="single">
            <Pujan:expr>1000 + current()</Pujan:expr>
          </Pujan:number>
        </Pujan:variable>
        <Pujan:for-each select="students/student[roll_no = $currentRollNo]">
          <tr>
            <td><Pujan:value-of select="roll_no"/></td>
            <td><Pujan:value-of select="name"/></td>
            <td><Pujan:value-of select="marks"/></td>
            <td><Pujan:value-of select="rank"/></td>
            <td><Pujan:value-of select="result"/></td>
          </tr>
        </Pujan:for-each>
      </Pujan:for-each>
    </tbody>
  </table>
</Pujan:template>
</Pujan:stylesheet>
