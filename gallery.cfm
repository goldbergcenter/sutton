<cfset img = "images/" & #URL.img#>
<cfparam name="url.img" default="0" type="string" />
<head>
<script type="text/javascript" src="ZoomifyImageViewer.js"></script>
<style type="text/css"> #myContainer { width: 100%; height: 100%;} </style>
<!---<script type="text/javascript"> Z.showImage("myContainer", "8-02-45_1"); </script>--->
<script type="text/javascript"> Z.showImage("myContainer", "<cfoutput>#img#</cfoutput>"); </script>
</head>
<body>
<div id="myContainer"></div>
</body>