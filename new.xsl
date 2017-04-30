<?xml version="1.0"?>

<!--
    Document   : newstylesheet2.xsl
    Created on : 30 апреля 2017 г., 22:38
    Author     : nursultan
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>new.xsl</title>
            </head>
            <body>
                <h2>Google Application</h2>
                <h3>The frequency is more than 10 are red, frequency is less than 10 are green</h3>
                <h4>Sorted by Alpabet</h4>
                <table border="1">
                    <tr bgcolor="#ff4300">
                        <th>search_language</th>
                        <th>account_nicknamt</th> 
                        <th>safe_search_fiter</th>
                        <th>open_web_pages_in_app</th>
                        <th>feed</th>
                        <th>speech_output</th>
                        <th>enable_recent</th>
                        <th>enable_recent</th>
                        <th>frequency</th>
                    </tr>
                    <xsl:for-each select="Google_app_settings/Settings">
                        <xsl:sort select="search_language/name"/>
                        <tr>
                            <td><xsl:value-of select="search_language/name"/></td>
                            <td><xsl:value-of select="account/account_nickname"/></td>
                            <td><xsl:value-of select="notification_settings/doodles"/></td>
                            <td><xsl:value-of select="notification_settings/safe_search_filter"/></td>
                            <td><xsl:value-of select="notification_settings/speech_output"/></td>
                            <td><xsl:value-of select="notification_settings/feed"/></td>
                            <td><xsl:value-of select="notification_settings/speech_output"/></td>
                            <td><xsl:value-of select="notification_settings/enable_recent"/></td>
                                <xsl:choose>
                                    <xsl:when test="notification_settings/news_frequency/frequency &gt; 10">
                                        <td bgcolor="#FF0000"><xsl:value-of select="notification_settings/news_frequency/frequency"/></td>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <td bgcolor="#32CD32"><xsl:value-of select="notification_settings/news_frequency/frequency"/></td>
                                    </xsl:otherwise>
                                </xsl:choose>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
