<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <table>
      <thead>
        <tr>
          <th>Order Number</th>
          <th>Order Date</th>
          <th>Order Amount</th>
          <th>Item Name</th>
          <th>Item Price</th>
          <th>Quantity</th>
        </tr>
      </thead>
      <tbody>
        <xsl:for-each select="orders/orderDetail">
          <tr>
            <td>
              <xsl:value-of select="orderNumber" />
            </td>
            <td>
              <xsl:value-of select="orderDate" />
            </td>
            <td>
              <xsl:value-of select="format-number(orderAmount, '#,##0.00')" />
            </td>
            <xsl:for-each select="items/item">
              <td>
                <xsl:value-of select="itemName" />
              </td>
              <td>
                <xsl:value-of select="format-number(itemPrice, '#,##0.00')" />
              </td>
              <td>
                <xsl:value-of select="quantity" />
              </td>
            </xsl:for-each>
          </tr>
        </xsl:for-each>
      </tbody>
    </table>
  </xsl:template>

</xsl:stylesheet>