<?xml version="1.0" encoding="UTF-8"?>
<Pujan:stylesheet version="1.0"
    xmlns:Pujan="http://www.w3.org/1999/xsl/Transform">

  <Pujan:template match="/">
    <h2>Books Published Before 1998</h2>
    <ul>
      <Pujan:for-each select="books/book[year &lt; 1998]">
        <li>
          <Pujan:attribute name="title">
            <Pujan:value-of select="@title"/>
          </Pujan:attribute>
          - by <Pujan:value-of select="author"/>
          (<Pujan:value-of select="year"/>)
        </li>
      </Pujan:for-each>
    </ul>
  </Pujan:template>

</Pujan:stylesheet>
