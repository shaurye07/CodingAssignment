#!C:\Perl64\bin\perl.exe

# first.pl -- my first perl


print "Content-type: text/html\n\n";

$Entry= "
<html>


	<head>
		<title>Search Appoitment</title>
	</head>


	<body>

		<div id="MainSearch">
			<div id="Error_Msg">
				<p> </p>
			</div>

			<div id="MakeNew" >
				<p>---------------------------------------------------------</p>
				<p><strong>Search Appointments</strong></p>
				<button>NEW</button>
				<br/><br/>

			</div>

			<div id="SearchArea">
				
			
				<form action="" method="post" >
					<input type="textbox" name="Searchbox"/>
					<input type="submit" name="Search" value="Search" />
				</form>

				<div id="tableArea"  hidden="true">
					
				</div>

				<p>---------------------------------------------------------</p>
			</div>

		</div>

		
	</body>


</html>

";
print $Entry;
