<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Class Schedule: Day Centric</title>
            </head>
            <body>
                <h1>Class Schedule: Day Centric</h1>
                <xsl:call-template name="timetable"/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template name="timetable">
        <table border="1">
            <tr bgcolor="#9acd32">
                <th>Time</th>
                <th width="100px">08:30:00</th>
                <th width="100px">09:30:00</th>
                <th width="100px">10:30:00</th>
                <th width="100px">11:30:00</th>
                <th width="100px">12:30:00</th>
                <th width="100px">01:30:00</th>
                <th width="100px">02:30:00</th>
                <th width="100px">03:30:00</th>
                <th width="100px">04:30:00</th>
            </tr>
            <xsl:for-each select="/schedule/days/day">
                <xsl:call-template name="days"/>
            </xsl:for-each>
        </table>

    </xsl:template>
    
    <xsl:template name="days">
        <tr>
            <th bgcolor="#9acd32">
                <xsl:value-of select="./@weekDay" />
            </th>
            <td>
                <xsl:for-each select="./booking">
                    <xsl:if test="@time='08:30:00'">
                        ACIT<xsl:value-of select="./@courseID"/>
                        <br/>
                        <xsl:value-of select="./@instructor"/>      
                        <br/>
                        <xsl:value-of select="./@classActivity"/>                   
                    </xsl:if>
                </xsl:for-each>
            </td>
            <td>
                <xsl:for-each select="./booking">
                    <xsl:if test="@time='09:30:00'">
                        ACIT<xsl:value-of select="./@courseID"/>
                        <br/>
                        <xsl:value-of select="./@instructor"/>
                        <br/>
                        <xsl:value-of select="./@classActivity"/>
                    </xsl:if>
                </xsl:for-each>
            </td>
            <td>
                <xsl:for-each select="./booking">
                    <xsl:if test="@time='10:30:00'">
                        ACIT<xsl:value-of select="./@courseID"/>
                        <br/>
                        <xsl:value-of select="./@instructor"/>
                        <br/>
                        <xsl:value-of select="./@classActivity"/>
                    </xsl:if>
                </xsl:for-each>
            </td>
            <td>
                <xsl:for-each select="./booking">
                    <xsl:if test="@time='11:30:00'">
                        ACIT<xsl:value-of select="./@courseID"/>
                        <br/>
                        <xsl:value-of select="./@instructor"/>
                        <br/>
                        <xsl:value-of select="./@classActivity"/>
                    </xsl:if>
                </xsl:for-each>
            </td>
            <td>
                <xsl:for-each select="./booking">
                    <xsl:if test="@time='12:30:00'">
                        ACIT<xsl:value-of select="./@courseID"/>
                        <br/>
                        <xsl:value-of select="./@instructor"/>
                        <br/>
                        <xsl:value-of select="./@classActivity"/>
                    </xsl:if>
                </xsl:for-each>
            </td>
            <td>
                <xsl:for-each select="./booking">
                    <xsl:if test="@time='01:30:00'">
                        ACIT<xsl:value-of select="./@courseID"/>
                        <br/>
                        <xsl:value-of select="./@instructor"/>
                        <br/>
                        <xsl:value-of select="./@classActivity"/>
                    </xsl:if>
                </xsl:for-each>
            </td>
            <td>
                <xsl:for-each select="./booking">
                    <xsl:if test="@time='02:30:00'">
                        ACIT<xsl:value-of select="./@courseID"/>
                        <br/>
                        <xsl:value-of select="./@instructor"/>
                        <br/>
                        <xsl:value-of select="./@classActivity"/>
                    </xsl:if>
                </xsl:for-each>
            </td>
            <td>
                <xsl:for-each select="./booking">
                    <xsl:if test="@time='03:30:00'">
                        ACIT<xsl:value-of select="./@courseID"/>
                        <br/>
                        <xsl:value-of select="./@instructor"/>
                        <br/>
                        <xsl:value-of select="./@classActivity"/>
                    </xsl:if>
                </xsl:for-each>
            </td>
            <td>
                <xsl:for-each select="./booking">
                    <xsl:if test="@time='04:30:00'">
                        ACIT<xsl:value-of select="./@courseID"/>
                        <br/>
                        <xsl:value-of select="./@instructor"/>
                        <br/>
                        <xsl:value-of select="./@classActivity"/>
                    </xsl:if>
                </xsl:for-each>
            </td>
        </tr>
    </xsl:template>
    
</xsl:stylesheet>