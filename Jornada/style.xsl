<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet  [
<!ENTITY nbsp   "&#160;">
<!ENTITY copy   "&#169;">
<!ENTITY reg    "&#174;">
<!ENTITY trade  "&#8482;">
<!ENTITY mdash  "&#8212;">
<!ENTITY ldquo  "&#8220;">
<!ENTITY rdquo  "&#8221;"> 
<!ENTITY pound  "&#163;">
<!ENTITY yen    "&#165;">
<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
	<xsl:template match="/">
		
		<html lang="en">
			
			<head>
				<title>Jornadas</title>
				<!-- Required meta tags -->
				<meta charset="utf-8" />
				<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
				
				<!-- Bootstrap CSS v5.2.1 -->
				<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
					integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
			</head>
			
			<body>
				<header class="container">
					<div class="bg-primary text-center text-light py-3">
						<h1><xsl:value-of select="jornada/denominacion"/> - <xsl:value-of select="jornada/categoria"/></h1>
					</div>
					<div class="py-3 my-3 border">
						<div class="bg-light text-center text-primary">
							<h2>Jornada Nº <xsl:value-of select="jornada/@numero"/></h2>
						</div>
					</div>
				</header>
				<main class="container">
					<table class="table table-striped">
						<tbody>
							<xsl:for-each select="jornada/partido">
								<tr class="border text-center" style="vertical-align: middle;">
									<td scope="row" class="border-end"><h5><xsl:value-of select="@fecha"/> - <xsl:value-of select="@hora"/></h5></td>
									<td class="border-end"><img src="https://e00-marca.uecdn.es/assets/sports/logos/football/png/72x72/{local/@escudo}.png" alt="escudo" /></td>
									<td class="border-end"><h5><xsl:value-of select="local"/></h5></td>
									<td class="border-end"><h5><xsl:value-of select="goleslocal"/></h5></td>
									<td class="border-end"><h5><xsl:value-of select="golesvisitante"/></h5></td>
									<td class="border-end"><h5><xsl:value-of select="visitante"/></h5></td>
									<td class="border-end"><img src="https://e00-marca.uecdn.es/assets/sports/logos/football/png/72x72/{visitante/@escudo}.png" alt="escudo" /></td>
									<td class="bg-dark border-end"></td>
									<td class="bg-dark text-light align-items-center border-end">X</td>
									<td class="bg-dark border-end"></td>
								</tr>
							</xsl:for-each>
						</tbody>
					</table>
				</main>
				<footer class="container">
					<div class="bg-primary text-center text-light py-3">
						<h2>Azarquiel - DTD XML XSL - Daniel de Paz</h2>
					</div>
				</footer>
				<!-- Bootstrap JavaScript Libraries -->
				<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
					integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
					crossorigin="anonymous"></script>
				
				<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
					integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
					crossorigin="anonymous"></script>
			</body>
			
		</html>
		
	</xsl:template>
</xsl:stylesheet>