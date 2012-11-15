<html>
<head>
<script type="text/javascript" src="/jqcollapse/jquery.js"></script>
<script type="text/javascript" src="/jqcollapse/jquery.collapse.js"></script>
<script type="text/javascript" src="/jqcollapse/jquery.easing.js"></script>
<script type="text/javascript">
			
			$(function(){
				
				$('#collapser').jqcollapse({
				   slide: true,
				   speed: 1000,
				   easing: 'easeOutCubic'
				});
				
			});
			
		
</script>
</head>
<body>
<cfset suttonXML = XMLParse(ExpandPath("SuttonTree.xml"))>
<cfset i = 0>
<cfset numParents = ArrayLen(suttonXML.tree.parent)>
<ul id="collapser">
<cfloop index="i" from="1" to=#numParents# step="1">
	<li><cfoutput>#suttonXML.tree.parent[i].name.XmlText#</cfoutput>
		<ul>
			<cfset j = 0>
			<cfset numChildren = ArrayLen(suttonXML.tree.parent[i].date)>
			<cfloop index="j" from="1" to=#numChildren# step="1">
				<li><cfoutput>#suttonXML.tree.parent[i].date[j].XmlText#</cfoutput>
					<ul>
						<cfset k = 0>
						<cfset numFiles = ArrayLen(suttonXML.tree.parent[i].date[j].XmlChildren)>
						<cfloop index="k" from="1" to=#numFiles# step="1">
							<li onclick="document.location.href='gallery.cfm?img=<cfoutput>#suttonXML.tree.parent[i].date[j].image[k].XmlText#</cfoutput>'"
							onmouseover="this.style.cursor='pointer'"><cfoutput>#suttonXML.tree.parent[i].date[j].image[k].XmlText#</cfoutput></li>
						</cfloop>
					</ul>
				</li>
			</cfloop>
		</ul>
	</li>
</cfloop>
</ul>
</body>
</html>