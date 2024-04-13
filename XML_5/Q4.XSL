<?xml version="1.0" encoding="UTF-8"?>
<Pujan:stylesheet version="1.0"
xmlns:Pujan="http://www.w3.org/1999/XSL/Transform">

  <Pujan:template match="/">
    <table>
      <thead>
        <tr>
          <th>Name</th>
          <th>Address</th>
          <th>Birthdate</th>
          <th>Gender</th>
          <th>Mobile No</th>
          <th>Total</th>
          <th>Percentage</th>
          <th>Grade</th>
        </tr>
      </thead>
      <tbody>
        <Pujan:for-each select="students/student[position() &lt; last()]">
          <Pujan:sort select="name" order="ascending"/>
          <tr>
            <td><Pujan:value-of select="name"/></td>
            <td><Pujan:value-of select="personalInfo/address"/></td>
            <td><Pujan:value-of select="personalInfo/birthdate"/></td>
            <td><Pujan:value-of select="personalInfo/gender"/></td>
            <td><Pujan:value-of select="personalInfo/mobileNo"/></td>
            <td><Pujan:value-of select="result/total"/></td>
            <td><Pujan:value-of select="format-number(result/percentage, '#,##0.00')"/></td>
            <td><Pujan:value-of select="result/grade"/></td>
          </tr>
        </Pujan:for-each>
      </tbody>
    </table>
  </Pujan:template>

</Pujan:stylesheet>
