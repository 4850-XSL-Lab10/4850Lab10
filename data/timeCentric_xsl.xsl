<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Class Schedule: Time Centric</title>
            </head>
            <body>
                <h1>Class Schedule: Time Centric</h1>
                <xsl:call-template name="timetable"/>
            </body>
        </html>
    </xsl:template>
    <!-- timetable template -->
    <xsl:template name="timetable">
        <table border="1">
            <tr bgcolor="#9acd32">
                <!-- Weekday headings -->
                <th>Time</th>
                <th width="100px">Monday</th>
                <th width="100px">Tuesday</th>
                <th width="100px">Wednesday</th>
                <th width="100px">Thursday</th>
                <th width="100px">Friday</th>
            </tr>
            <xsl:for-each select="/schedule/timeslots/timeslot">
                <xsl:call-template name="time"/>
            </xsl:for-each>
        </table>

    </xsl:template>
    <!-- time template -->
    <xsl:template name="time">
        <tr>
            <th bgcolor="#9acd32">
                <!-- Grabs times from attribute time -->
                <xsl:value-of select="./@time" />
            </th>
            <td>
                <!-- For each loop grabbing information of the specific day -->
                <xsl:for-each select="./booking">
                    <xsl:if test="@weekDay='Monday'">
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
                    <xsl:if test="@weekDay='Tuesday'">
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
                    <xsl:if test="@weekDay='Wednesday'">
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
                    <xsl:if test="@weekDay='Thursday'">
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
                    <xsl:if test="@weekDay='Friday'">
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