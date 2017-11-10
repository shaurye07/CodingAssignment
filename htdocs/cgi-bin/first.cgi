#!C:\xampp\perl\bin\perl.exe

# first.pl -- my first perl


use strict;
use warnings;

use CGI;

print "Content-type: text/html \n\n";


	
print "
<html>


	<head>
		<title>Search Appoitment</title>
	</head>


	<body>

			<p>---------------------------------------------------------</p>
				<p><strong>Search Appointments</strong></p>
				<button>NEW</button>
				<br/><br/>

				<form action="" method="post" >
					<input type="textbox" name="Searchbox"/>
					<input type="submit" name="Search" value="Search" />
				</form>
			
			

			<p>---------------------------------------------------------</p>
			

		
	</body>


</html>
";
