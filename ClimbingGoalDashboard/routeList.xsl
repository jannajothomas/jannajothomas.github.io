<?xml version="1.0" encoding="UTF-8" ?>
<!--
   Author: 
   Date:   

   Filename:         routeList.xsl
   Supporting Files: 
-->


<xsl:stylesheet version="1.0"
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   
    <xsl:output method="html"
      doctype-system="about:legacy-compat"
      encoding="UTF-8"
      indent="yes" />

   <xsl:template match="/">
      <html>
         <head>
            <title>Real Estate Listings</title>
            <link href="style.css" rel="stylesheet" type="text/css" />
        </head>

            <body>
                <h1>New Listings</h1>
                <table class="table table-hover">
                  <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Name</th>
                        <th scope="col">Location</th>
                        <th scope="col">Rating</th>
                        <th scope="col">Date Completed</th>
                    </tr>
                  </thead>
                  <tbody>
                        <xsl:for-each select="routes/route">
                            <tr>
                                <th scope="row">1</th>
                                <td><xsl:value-of select="Name" /></td>
                                <td><xsl:value-of select="Location" /></td>
                                <td><xsl:value-of select="AvgStars" /></td>
                                <td> TODO</td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
             </table>
          
          </body>

      </html>
   </xsl:template>
    
</xsl:stylesheet>
