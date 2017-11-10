#!C:/xampp/perl/bin/perl.exe

use strict;
use warnings;

use JSON; #to convert to JSON format
use CGI;
use DBI;

# declaration of cgi
my $cgi = CGI->new;
my $user= 'root';
my $password='';


my $dbh = DBI->connect("DBI:mysql:database=reception;host=localhost",
                      $user, $password, {RaiseError => 1});


#Performing function based on Request method 
if($ENV{'REQUEST_METHOD'} eq 'GET')
	{
		sub pullrecord();
		
	}

else
	{
		sub pushrecord();
		
	}

sub pullrecord {
	print $cgi->header('application/json;charset=UTF-8');

		my $dbh = DBI->connect("DBI:mysql:database=reception;host=localhost",
                      $user, $password, {RaiseError => 1});

		my $search = $cgi->param('searchqry');    

		my sth$ = $dbh->prepare("SELECT * FROM appoitments WHERE AppointmentDesc LIKE '%$search%' ");
		$sth-> execute();
		my @arry= $sth->fetchrow_array();
		#convert  data to JSON
		my $op = JSON -> new -> utf8 -> pretty(1);
		my $json = $op -> encode_json({
		    Date => $arry.ScheduledDate;
		    Time => $arry.ScheduledTime;
		    Description=>$arry.AppointmentDesc; 
		});
		print $json;

		$dbh->disconnect;
}

sub pushrecord(){

	print $cgi->header();

	my $dbh = DBI->connect("DBI:mysql:database=reception;host=localhost",
                      $user, $password, {RaiseError => 1});


	my $date2 = $cgi->param('Date');
	my $time2 = $cgi->param('Time');
	my $desc2 = $cgi->param('Description');


	my $query="INSERT INTO appoitments VALUES (?,?,?) , $date2,$time2,$Description";
	$sth = $dbh->do($query);
	$sth->finish();

	$dbh->disconnect();

	my $result= 'true';
	print $result;

}
