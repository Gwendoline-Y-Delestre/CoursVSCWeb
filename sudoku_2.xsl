</xsl:stylesheet><?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="sudoku">
       <svg width="450" height="450">

            <rect x="0" y="0" width="450" height="450" style="fill:white; stroke:black; stroke-width:2"/> //grand carre

            <rect x="0" y="0" width="150" height="150" style="fill:none; stroke:black; stroke-width:2"/> //region 1
            <rect x="150" y="0" width="150" height="150" style="fill:none; stroke:black; stroke-width:2"/>
            <rect x="300" y="0" width="150" height="150" style="fill:none; stroke:black; stroke-width:2"/>
            <rect x="0" y="150" width="150" height="150" style="fill:none; stroke:black; stroke-width:2"/>
            <rect x="150" y="150" width="150" height="150" style="fill:none; stroke:black; stroke-width:2"/>
            <rect x="300" y="150" width="150" height="150" style="fill:none; stroke:black; stroke-width:2"/>
            <rect x="0" y="300" width="150" height="150" style="fill:none; stroke:black; stroke-width:2"/>
            <rect x="150" y="300" width="150" height="150" style="fill:none; stroke:black; stroke-width:2"/>
            <rect x="300" y="300" width="150" height="150" style="fill:none; stroke:black; stroke-width:2"/> //région 9
           
            <xsl:for-each select="region">

                    <!-- <xsl:for-each select="row">
            
                        <xsl:for-each select="col">
                            <rect x="0" y="0" width="50" height="50" style="fill:none; stroke:black; stroke-width:1"/>
                            <text><xsl:value-of select="col[@val]" /></text>
                        </xsl:for-each>-->

                <rect x="0" y="0" width="50" height="50" style="fill:none; stroke:black; stroke-width:1"/>   //Reg1 row1
                <text x="17" y="35" font-size="30" fill="black"><xsl:value-of select="region/row:col[@val]"/></text>
                <rect x="50" y="0" width="50" height="50" style="fill:none; stroke:black; stroke-width:1"/>
                <text x="67" y="35" font-size="30" fill="black"><xsl:value-of select="region/row:col[@val]"/></text>
                <rect x="100" y="0" width="50" height="50" style="fill:none; stroke:black; stroke-width:1"/>
                <text x="117" y="35" font-size="30" fill="black"><xsl:value-of select="region/row:col[@val]"/></text>

                <rect x="0" y="50" width="50" height="50" style="fill:none; stroke:black; stroke-width:1"/> //row2
                <rect x="50" y="50" width="50" height="50" style="fill:none; stroke:black; stroke-width:1"/>
                <rect x="100" y="50" width="50" height="50" style="fill:none; stroke:black; stroke-width:1"/>

                <rect x="0" y="100" width="50" height="50" style="fill:none; stroke:black; stroke-width:1"/> //row3
                <rect x="50" y="100" width="50" height="50" style="fill:none; stroke:black; stroke-width:1"/>
                <rect x="100" y="100" width="50" height="50" style="fill:none; stroke:black; stroke-width:1"/>

            </xsl:for-each>
                
         </svg>
    </xsl:template>


</xsl:stylesheet>