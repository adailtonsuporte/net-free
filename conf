#/bin/bash
rm ip.ip 2> /dev/null
clear
echo "Lindofull" > squidban
squidfail=$(cat squidban)
echo "PAYLOADHTTP" > squidcre
squidcre=$(cat squidcre)
if grep -i Lindofull squidban 1>/dev/null 2>/dev/null ; then
echo -e "\033[1;33m- - - - -> \033[01;34mSCRIPT BY @"$squidfail"\033[01;33m CANAL: @"$squidcre"\033[0m"
else ###########
echo "falhou"
exit ##########
fi
cat -n /etc/issue |grep 1 |cut -d' ' -f6,7,8 |sed 's/1//' |sed 's/  //' > /etc/so
echo -e "\033[01;31mNAO ME RESPONSABILIZO POR QUALQUER DANO \033[0m"
echo -e "DIGITE O IP DO SERVIDOR PARA CONTINUAR, APOS APERTE ENTER" ; read ip
clear
echo -e "\033[1;33m- - - - -> \033[01;34mSCRIPT BY @"$squidfail"\033[01;33m CANAL: @"$squidcre"\033[0m"
echo -e "\033[1;33m- - - - -> \033[01;34mSISTEMA OPERACIONAL:\033[0m $(cat /etc/so)"
echo -e "\033[1;33m- - - - -> \033[01;34mSEU IP SSH/SQUID:\033[0m $ip"
echo -e "\033[1;33m- - - - -> \033[01;34mVOCE DEVE USAR:\033[0m 127.0.0.1\033[1;33m NO HOST SSH"
echo -e "\033[1;33m- - - - -> \033[01;34mPORT SSH:\033[0m 22, 443"
echo -e "\033[1;33m- - - - -> \033[01;34mPORT SQUID:\033[0m 80, 8080, 8799, 3128 1080"
echo -e "\033[1;33m- - - - -> \033[01;34mCOMPATIVEL COM:\033[0m CENTOS/DEBIAN/UBUNTU"
echo -e "\033[01;31mMAS TAMBEM PODE SER INCOMPATIVEL COM ALGUMAS VERSOES \033[0m"
echo -e "\033[01;31mCOMPATIVEL COM QUALQUER HOSTS \033[0m"
 
if cat /etc/so |grep -i debian 1> /dev/null 2> /dev/null ; then
echo -e "\033[01;31mConfigurando, Aguarde...\033[0m"
apt-get update -y 1> /dev/null 2> /dev/null
apt-get upgrade -y 1> /dev/null 2> /dev/null
apt-get install squid3 -y 1> /dev/null 2> /dev/null
apt-get install squid -y 1> /dev/null 2> /dev/null
apt-get install squid* -y 1> /dev/null 2> /dev/null
apt-get install ufw -y 1> /dev/null 2> /dev/null
 
rm /etc/ssh/sshd_custom 1>/dev/null 2>/dev/null
cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak
cat /etc/ssh/sshd_config |grep -v -i allowusers |grep -v -i passwordauthen |grep -v -i uselogin |grep -v -i permitrootlogin |grep -v -i permittunnel >> /etc/ssh/sshd_custom
rm /etc/ssh/sshd_config
cp /etc/ssh/sshd_custom /etc/ssh/sshd_config
sleep 1s
echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config
echo "Port 443" >> /etc/ssh/sshd_config
echo "Port 22" >> /etc/ssh/sshd_config
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
echo "PermitTunnel yes" >> /etc/ssh/sshd_config
 
service ssh restart 1> /dev/null 2> /dev/null
/etc/init.d/ssh restart
 
cd /etc/squid*
echo "http_port 80" > squid.conf
echo "http_port 8080" >> squid.conf
echo "http_port 8799" >> squid.conf
echo "http_port 3128" >> squid.conf
echo "http_port 1080" >> squid.conf
echo "http_port 8118" >> squid.conf
echo "visible_hostname Guilhermezkz" >> squid.conf
echo "acl ip dstdomain -i $ip" >> squid.conf
echo "acl gui dstdomain -i 127.0.0.1" >> squid.conf
echo "acl gui dstdomain -i 200.169.126.11" >> squid.conf
echo "acl gui dstdomain -i localhost" >> squid.conf
echo "acl gui dstdomain -i localnet" >> squid.conf
echo "acl accept dstdomain -i GET" >> squid.conf
echo "acl accept dstdomain -i POST" >> squid.conf
echo "acl accept dstdomain -i OPTIONS" >> squid.conf
echo "acl accept dstdomain -i CONNECT" >> squid.conf
echo "acl accept dstdomain -i PUT" >> squid.conf
echo "acl HEAD dstdomain -i HEAD" >> squid.conf
echo "acl accept dstdomain -i TRACE" >> squid.conf
echo "acl accept dstdomain -i OPTIONS" >> squid.conf
echo "acl accept dstdomain -i PATCH" >> squid.conf
echo "acl accept dstdomain -i PROPATCH" >> squid.conf
echo "acl accept dstdomain -i DELETE" >> squid.conf
echo "acl accept dstdomain -i REQUEST" >> squid.conf
echo "acl accept dstdomain -i METHOD" >> squid.conf
echo "acl accept dstdomain -i NETDATA" >> squid.conf
echo "acl accept dstdomain -i MOVE" >> squid.conf
echo "acl all src 0.0.0.0/0" >> squid.conf
echo "http_access allow ip" >> squid.conf
echo "http_access allow gui" >> squid.conf
echo "http_access allow accept" >> squid.conf
echo "http_access allow HEAD" >> squid.conf
echo "http_access deny all" >> squid.conf
echo "forwarded_for off" >> squid.conf
echo "request_header_access Allow allow all" >> squid.conf
echo "request_header_access Authorization allow all" >> squid.conf
echo "request_header_access WWW-Authenticate allow all" >> squid.conf
echo "request_header_access Proxy-Authorization allow all" >> squid.conf
echo "request_header_access X-Online-Host allow all" >> squid.conf
echo "request_header_access Proxy-Authenticate allow all" >> squid.conf
echo "request_header_access Cache-Control allow all" >> squid.conf
echo "request_header_access Content-Encoding allow all" >> squid.conf
echo "request_header_access Content-Length allow all" >> squid.conf
echo "request_header_access Content-Type allow all" >> squid.conf
echo "request_header_access Date allow all" >> squid.conf
echo "request_header_access Expires allow all" >> squid.conf
echo "request_header_access Host allow all" >> squid.conf
echo "request_header_access If-Modified-Since allow all" >> squid.conf
echo "request_header_access Last-Modified allow all" >> squid.conf
echo "request_header_access Location allow all" >> squid.conf
echo "request_header_access Pragma allow all" >> squid.conf
echo "request_header_access Accept allow all" >> squid.conf
echo "request_header_access Accept-Charset allow all" >> squid.conf
echo "request_header_access Accept-Encoding allow all" >> squid.conf
echo "request_header_access Accept-Language allow all" >> squid.conf
echo "request_header_access Content-Language allow all" >> squid.conf
echo "request_header_access Mime-Version allow all" >> squid.conf
echo "request_header_access Retry-After allow all" >> squid.conf
echo "request_header_access Title allow all" >> squid.conf
echo "request_header_access Connection allow all" >> squid.conf
echo "request_header_access Proxy-Connection allow all" >> squid.conf
echo "request_header_access User-Agent allow all" >> squid.conf
echo "request_header_access Cookie allow all" >> squid.conf
echo "request_header_access Referer allow all" >> squid.conf
echo "request_header_access Host allow all" >> squid.conf
echo "via off" >> squid.conf
 
service squid* restart 1> /dev/null 2> /dev/null
service squid3 restart 1> /dev/null 2> /dev/null
/etc/init.d/squid* restart 1> /dev/null 2> /dev/null

ufw allow 443 1>/dev/null 2>/dev/null
ufw allow 80 1>/dev/null 2>/dev/null
ufw allow 8080 1>/dev/null 2>/dev/null
ufw allow 8799 1>/dev/null 2>/dev/null
ufw allow 3128 1>/dev/null 2>/dev/null
ufw allow 1080 1>/dev/null 2>/dev/null
ufw allow 8118 1>/dev/null 2>/dev/null

echo -e "\033[01;32mCONFIGURADO COM SUCESSO \033[0m"
exit 0
fi

if cat /etc/so |grep -i ubuntu |grep 16 1> /dev/null 2> /dev/null ; then
echo -e "\033[01;31mConfigurando, Aguarde...\033[0m"
apt-get update -y 1> /dev/null 2> /dev/null
apt-get upgrade -y 1> /dev/null 2> /dev/null
apt-get install squid3 -y 1> /dev/null 2> /dev/null
apt-get install squid -y 1> /dev/null 2> /dev/null
apt-get install squid* -y 1> /dev/null 2> /dev/null
apt-get install ufw -y 1> /dev/null 2> /dev/null
 
rm /etc/ssh/sshd_custom 1>/dev/null 2>/dev/null
cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak
cat /etc/ssh/sshd_config |grep -v -i allowusers |grep -v -i passwordauthen |grep -v -i uselogin |grep -v -i permitrootlogin |grep -v -i permittunnel >> /etc/ssh/sshd_custom
rm /etc/ssh/sshd_config
cp /etc/ssh/sshd_custom /etc/ssh/sshd_config
sleep 1s
echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config
echo "Port 443" >> /etc/ssh/sshd_config
echo "Port 22" >> /etc/ssh/sshd_config
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
echo "PermitTunnel yes" >> /etc/ssh/sshd_config
echo "UseDns no" >> /etc/ssh/sshd_config
 
service ssh restart 1> /dev/null 2> /dev/null
service sshd restart 1> /dev/null 2> /dev/null
/etc/init.d/sshd restart
/etc/init.d/ssh restart
 
cd /etc/squid*
echo "http_port 80" > squid.conf
echo "http_port 8080" >> squid.conf
echo "http_port 8799" >> squid.conf
echo "http_port 3128" >> squid.conf
echo "http_port 1080" >> squid.conf
echo "visible_hostname Guilhermezkz" >> squid.conf
echo "acl ip dstdomain -i $ip" >> squid.conf
echo "acl gui dstdomain -i 127.0.0.1" >> squid.conf
echo "acl gui dstdomain -i 200.169.126.11" >> squid.conf
echo "acl gui dstdomain -i localhost" >> squid.conf
echo "acl gui dstdomain -i localnet" >> squid.conf
echo "acl accept dstdomain -i GET" >> squid.conf
echo "acl accept dstdomain -i POST" >> squid.conf
echo "acl accept dstdomain -i OPTIONS" >> squid.conf
echo "acl accept dstdomain -i CONNECT" >> squid.conf
echo "acl accept dstdomain -i PUT" >> squid.conf
echo "acl HEAD dstdomain -i HEAD" >> squid.conf
echo "acl accept dstdomain -i TRACE" >> squid.conf
echo "acl accept dstdomain -i OPTIONS" >> squid.conf
echo "acl accept dstdomain -i PATCH" >> squid.conf
echo "acl accept dstdomain -i PROPATCH" >> squid.conf
echo "acl accept dstdomain -i DELETE" >> squid.conf
echo "acl accept dstdomain -i REQUEST" >> squid.conf
echo "acl accept dstdomain -i METHOD" >> squid.conf
echo "acl accept dstdomain -i NETDATA" >> squid.conf
echo "acl accept dstdomain -i MOVE" >> squid.conf
echo "acl all src 0.0.0.0/0" >> squid.conf
echo "http_access allow ip" >> squid.conf
echo "http_access allow gui" >> squid.conf
echo "http_access allow accept" >> squid.conf
echo "http_access allow HEAD" >> squid.conf
echo "http_access deny all" >> squid.conf
echo "forwarded_for off" >> squid.conf
echo "request_header_access Allow allow all" >> squid.conf
echo "request_header_access Authorization allow all" >> squid.conf
echo "request_header_access WWW-Authenticate allow all" >> squid.conf
echo "request_header_access Proxy-Authorization allow all" >> squid.conf
echo "request_header_access X-Online-Host allow all" >> squid.conf
echo "request_header_access Proxy-Authenticate allow all" >> squid.conf
echo "request_header_access Cache-Control allow all" >> squid.conf
echo "request_header_access Content-Encoding allow all" >> squid.conf
echo "request_header_access Content-Length allow all" >> squid.conf
echo "request_header_access Content-Type allow all" >> squid.conf
echo "request_header_access Date allow all" >> squid.conf
echo "request_header_access Expires allow all" >> squid.conf
echo "request_header_access Host allow all" >> squid.conf
echo "request_header_access If-Modified-Since allow all" >> squid.conf
echo "request_header_access Last-Modified allow all" >> squid.conf
echo "request_header_access Location allow all" >> squid.conf
echo "request_header_access Pragma allow all" >> squid.conf
echo "request_header_access Accept allow all" >> squid.conf
echo "request_header_access Accept-Charset allow all" >> squid.conf
echo "request_header_access Accept-Encoding allow all" >> squid.conf
echo "request_header_access Accept-Language allow all" >> squid.conf
echo "request_header_access Content-Language allow all" >> squid.conf
echo "request_header_access Mime-Version allow all" >> squid.conf
echo "request_header_access Retry-After allow all" >> squid.conf
echo "request_header_access Title allow all" >> squid.conf
echo "request_header_access Connection allow all" >> squid.conf
echo "request_header_access Proxy-Connection allow all" >> squid.conf
echo "request_header_access User-Agent allow all" >> squid.conf
echo "request_header_access Cookie allow all" >> squid.conf
echo "request_header_access Referer allow all" >> squid.conf
echo "request_header_access Host allow all" >> squid.conf
echo "via off" >> squid.conf
 
service squid* restart 1> /dev/null 2> /dev/null
service squid3 restart 1> /dev/null 2> /dev/null
/etc/init.d/squid* restart 1> /dev/null 2> /dev/null
 
ufw allow 443 1>/dev/null 2>/dev/null
ufw allow 80 1>/dev/null 2>/dev/null
ufw allow 8080 1>/dev/null 2>/dev/null
ufw allow 8799 1>/dev/null 2>/dev/null
ufw allow 3128 1>/dev/null 2>/dev/null
ufw allow 1080 1>/dev/null 2>/dev/null
 
echo -e "\033[01;32mCONFIGURADO COM SUCESSO \033[0m"
exit 0
fi
 
if cat /etc/so |grep -i ubuntu 1> /dev/null 2> /dev/null ; then
echo -e "\033[01;31mConfigurando, Aguarde...\033[0m"
apt-get update -y 1> /dev/null 2> /dev/null
apt-get upgrade -y 1> /dev/null 2> /dev/null
apt-get install squid3 -y 1> /dev/null 2> /dev/null
apt-get install squid -y 1> /dev/null 2> /dev/null
apt-get install squid* -y 1> /dev/null 2> /dev/null
apt-get install ufw -y 1> /dev/null 2> /dev/null
 
rm /etc/ssh/sshd_custom 1>/dev/null 2>/dev/null
cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak
cat /etc/ssh/sshd_config |grep -v -i allowusers |grep -v -i passwordauthen |grep -v -i uselogin |grep -v -i permitrootlogin |grep -v -i permittunnel >> /etc/ssh/sshd_custom
rm /etc/ssh/sshd_config
cp /etc/ssh/sshd_custom /etc/ssh/sshd_config
sleep 1s
echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config
echo "Port 443" >> /etc/ssh/sshd_config
echo "Port 22" >> /etc/ssh/sshd_config
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
echo "PermitTunnel yes" >> /etc/ssh/sshd_config
echo "UseDns no" >> /etc/ssh/sshd_config
 
service ssh restart 1> /dev/null 2> /dev/null
/etc/init.d/ssh restart
 
cd /etc/squid3
echo "http_port 80" > squid.conf
echo "http_port 8080" >> squid.conf
echo "http_port 8799" >> squid.conf
echo "http_port 3128" >> squid.conf
echo "http_port 1080" >> squid.conf
echo "visible_hostname Guilhermezkz" >> squid.conf
echo "acl ip dstdomain -i $ip" >> squid.conf
echo "acl gui dstdomain -i 127.0.0.1" >> squid.conf
echo "acl gui dstdomain -i 200.169.126.11" >> squid.conf
echo "acl gui dstdomain -i localhost" >> squid.conf
echo "acl gui dstdomain -i localnet" >> squid.conf
echo "acl accept dstdomain -i GET" >> squid.conf
echo "acl accept dstdomain -i POST" >> squid.conf
echo "acl accept dstdomain -i OPTIONS" >> squid.conf
echo "acl accept dstdomain -i CONNECT" >> squid.conf
echo "acl accept dstdomain -i PUT" >> squid.conf
echo "acl HEAD dstdomain -i HEAD" >> squid.conf
echo "acl accept dstdomain -i TRACE" >> squid.conf
echo "acl accept dstdomain -i OPTIONS" >> squid.conf
echo "acl accept dstdomain -i PATCH" >> squid.conf
echo "acl accept dstdomain -i PROPATCH" >> squid.conf
echo "acl accept dstdomain -i DELETE" >> squid.conf
echo "acl accept dstdomain -i REQUEST" >> squid.conf
echo "acl accept dstdomain -i METHOD" >> squid.conf
echo "acl accept dstdomain -i NETDATA" >> squid.conf
echo "acl accept dstdomain -i MOVE" >> squid.conf
echo "acl all src 0.0.0.0/0" >> squid.conf
echo "http_access allow ip" >> squid.conf
echo "http_access allow gui" >> squid.conf
echo "http_access allow accept" >> squid.conf
echo "http_access allow HEAD" >> squid.conf
echo "http_access deny all" >> squid.conf
echo "forwarded_for off" >> squid.conf
echo "request_header_access Allow allow all" >> squid.conf
echo "request_header_access Authorization allow all" >> squid.conf
echo "request_header_access WWW-Authenticate allow all" >> squid.conf
echo "request_header_access Proxy-Authorization allow all" >> squid.conf
echo "request_header_access X-Online-Host allow all" >> squid.conf
echo "request_header_access Proxy-Authenticate allow all" >> squid.conf
echo "request_header_access Cache-Control allow all" >> squid.conf
echo "request_header_access Content-Encoding allow all" >> squid.conf
echo "request_header_access Content-Length allow all" >> squid.conf
echo "request_header_access Content-Type allow all" >> squid.conf
echo "request_header_access Date allow all" >> squid.conf
echo "request_header_access Expires allow all" >> squid.conf
echo "request_header_access Host allow all" >> squid.conf
echo "request_header_access If-Modified-Since allow all" >> squid.conf
echo "request_header_access Last-Modified allow all" >> squid.conf
echo "request_header_access Location allow all" >> squid.conf
echo "request_header_access Pragma allow all" >> squid.conf
echo "request_header_access Accept allow all" >> squid.conf
echo "request_header_access Accept-Charset allow all" >> squid.conf
echo "request_header_access Accept-Encoding allow all" >> squid.conf
echo "request_header_access Accept-Language allow all" >> squid.conf
echo "request_header_access Content-Language allow all" >> squid.conf
echo "request_header_access Mime-Version allow all" >> squid.conf
echo "request_header_access Retry-After allow all" >> squid.conf
echo "request_header_access Title allow all" >> squid.conf
echo "request_header_access Connection allow all" >> squid.conf
echo "request_header_access Proxy-Connection allow all" >> squid.conf
echo "request_header_access User-Agent allow all" >> squid.conf
echo "request_header_access Cookie allow all" >> squid.conf
echo "request_header_access Referer allow all" >> squid.conf
echo "request_header_access Host allow all" >> squid.conf
echo "via off" >> squid.conf
 
ufw allow 443 1>/dev/null 2>/dev/null
ufw allow 80 1>/dev/null 2>/dev/null
ufw allow 8080 1>/dev/null 2>/dev/null
ufw allow 8799 1>/dev/null 2>/dev/null
ufw allow 3128 1>/dev/null 2>/dev/null
ufw allow 1080 1>/dev/null 2>/dev/null
 
service squid* restart 1> /dev/null 2> /dev/null
service squid3 restart 1> /dev/null 2> /dev/null
/etc/init.d/squid* restart 1> /dev/null 2> /dev/null
 
echo -e "\033[01;32mCONFIGURADO COM SUCESSO \033[0m"
exit 0
fi
 
if cat /etc/so |grep -i centos 1> /dev/null 2> /dev/null ; then
echo -e "\033[01;31mConfigurando, Aguarde...\033[0m"
yum update 1> /dev/null 2> /dev/null
yum install squid -y 1> /dev/null 2> /dev/null
 
service httpd stop 1> /dev/null 2> /dev/null
 
rm /etc/ssh/sshd_custom 1>/dev/null 2>/dev/null
cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak
cat /etc/ssh/sshd_config |grep -v -i allowusers |grep -v -i passwordauthen |grep -v -i uselogin |grep -v -i permitrootlogin |grep -v -i permittunnel >> /etc/ssh/sshd_custom
rm /etc/ssh/sshd_config
cp /etc/ssh/sshd_custom /etc/ssh/sshd_config
sleep 1s
echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config
echo "Port 443" >> /etc/ssh/sshd_config
echo "Port 22" >> /etc/ssh/sshd_config
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
echo "PermitTunnel yes" >> /etc/ssh/sshd_config
echo "UseDns no" >> /etc/ssh/sshd_config
 
service sshd restart 1> /dev/null 2> /dev/null
 
cd /etc/squid
echo "http_port 80" > squid.conf
echo "http_port 8080" >> squid.conf
echo "http_port 8799" >> squid.conf
echo "http_port 3128" >> squid.conf
echo "http_port 1080" >> squid.conf
echo "visible_hostname Guilhermezkz" >> squid.conf
echo "acl ip dstdomain -i $ip" >> squid.conf
echo "acl gui dstdomain -i 127.0.0.1" >> squid.conf
echo "acl gui dstdomain -i 200.169.126.11" >> squid.conf
echo "acl gui dstdomain -i localhost" >> squid.conf
echo "acl gui dstdomain -i localnet" >> squid.conf
echo "acl accept dstdomain -i GET" >> squid.conf
echo "acl accept dstdomain -i POST" >> squid.conf
echo "acl accept dstdomain -i OPTIONS" >> squid.conf
echo "acl accept dstdomain -i CONNECT" >> squid.conf
echo "acl accept dstdomain -i PUT" >> squid.conf
echo "acl HEAD dstdomain -i HEAD" >> squid.conf
echo "acl accept dstdomain -i TRACE" >> squid.conf
echo "acl accept dstdomain -i OPTIONS" >> squid.conf
echo "acl accept dstdomain -i PATCH" >> squid.conf
echo "acl accept dstdomain -i PROPATCH" >> squid.conf
echo "acl accept dstdomain -i DELETE" >> squid.conf
echo "acl accept dstdomain -i REQUEST" >> squid.conf
echo "acl accept dstdomain -i METHOD" >> squid.conf
echo "acl accept dstdomain -i NETDATA" >> squid.conf
echo "acl accept dstdomain -i MOVE" >> squid.conf
echo "acl all src 0.0.0.0/0" >> squid.conf
echo "http_access allow ip" >> squid.conf
echo "http_access allow gui" >> squid.conf
echo "http_access allow accept" >> squid.conf
echo "http_access allow HEAD" >> squid.conf
echo "http_access deny all" >> squid.conf
echo "forwarded_for off" >> squid.conf
echo "request_header_access Allow allow all" >> squid.conf
echo "request_header_access Authorization allow all" >> squid.conf
echo "request_header_access WWW-Authenticate allow all" >> squid.conf
echo "request_header_access Proxy-Authorization allow all" >> squid.conf
echo "request_header_access X-Online-Host allow all" >> squid.conf
echo "request_header_access Proxy-Authenticate allow all" >> squid.conf
echo "request_header_access Cache-Control allow all" >> squid.conf
echo "request_header_access Content-Encoding allow all" >> squid.conf
echo "request_header_access Content-Length allow all" >> squid.conf
echo "request_header_access Content-Type allow all" >> squid.conf
echo "request_header_access Date allow all" >> squid.conf
echo "request_header_access Expires allow all" >> squid.conf
echo "request_header_access Host allow all" >> squid.conf
echo "request_header_access If-Modified-Since allow all" >> squid.conf
echo "request_header_access Last-Modified allow all" >> squid.conf
echo "request_header_access Location allow all" >> squid.conf
echo "request_header_access Pragma allow all" >> squid.conf
echo "request_header_access Accept allow all" >> squid.conf
echo "request_header_access Accept-Charset allow all" >> squid.conf
echo "request_header_access Accept-Encoding allow all" >> squid.conf
echo "request_header_access Accept-Language allow all" >> squid.conf
echo "request_header_access Content-Language allow all" >> squid.conf
echo "request_header_access Mime-Version allow all" >> squid.conf
echo "request_header_access Retry-After allow all" >> squid.conf
echo "request_header_access Title allow all" >> squid.conf
echo "request_header_access Connection allow all" >> squid.conf
echo "request_header_access Proxy-Connection allow all" >> squid.conf
echo "request_header_access User-Agent allow all" >> squid.conf
echo "request_header_access Cookie allow all" >> squid.conf
echo "request_header_access Referer allow all" >> squid.conf
echo "request_header_access Host allow all" >> squid.conf
echo "via off" >> squid.conf
 
service squid restart 1> /dev/null 2> /dev/null
 
ufw allow 443 1>/dev/null 2>/dev/null
ufw allow 80 1>/dev/null 2>/dev/null
ufw allow 8080 1>/dev/null 2>/dev/null
ufw allow 8799 1>/dev/null 2>/dev/null
ufw allow 3128 1>/dev/null 2>/dev/null
ufw allow 1080 1>/dev/null 2>/dev/null
 
echo -e "\033[01;32mCONFIGURADO COM SUCESSO \033[0m"
exit
fi
 
if cat /etc/so |grep -i debian 1> /dev/null 2> /dev/null ; then
echo -e "\033[01;31mConfigurando, Aguarde...\033[0m"
apt-get update -y 1> /dev/null 2> /dev/null
apt-get upgrade -y 1> /dev/null 2> /dev/null
apt-get install squid3 -y 1> /dev/null 2> /dev/null
apt-get install squid -y 1> /dev/null 2> /dev/null
apt-get install squid* -y 1> /dev/null 2> /dev/null
apt-get install ufw -y 1> /dev/null 2> /dev/null
 
rm /etc/ssh/sshd_custom 1>/dev/null 2>/dev/null
cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak
cat /etc/ssh/sshd_config |grep -v -i allowusers |grep -v -i passwordauthen |grep -v -i uselogin |grep -v -i permitrootlogin |grep -v -i permittunnel >> /etc/ssh/sshd_custom
rm /etc/ssh/sshd_config
cp /etc/ssh/sshd_custom /etc/ssh/sshd_config
sleep 1s
echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config
echo "Port 443" >> /etc/ssh/sshd_config
echo "Port 22" >> /etc/ssh/sshd_config
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
echo "PermitTunnel yes" >> /etc/ssh/sshd_config
 
service ssh restart 1> /dev/null 2> /dev/null
/etc/init.d/ssh restart
 
cd /etc/squid
echo "http_port 80" > squid.conf
echo "http_port 8080" >> squid.conf
echo "http_port 8799" >> squid.conf
echo "http_port 3128" >> squid.conf
echo "http_port 1080" >> squid.conf
echo "visible_hostname Guilhermezkz" >> squid.conf
echo "acl ip dstdomain -i $ip" >> squid.conf
echo "acl gui dstdomain -i 127.0.0.1" >> squid.conf
echo "acl gui dstdomain -i 200.169.126.11" >> squid.conf
echo "acl gui dstdomain -i localhost" >> squid.conf
echo "acl gui dstdomain -i localnet" >> squid.conf
echo "acl accept dstdomain -i GET" >> squid.conf
echo "acl accept dstdomain -i POST" >> squid.conf
echo "acl accept dstdomain -i OPTIONS" >> squid.conf
echo "acl accept dstdomain -i CONNECT" >> squid.conf
echo "acl accept dstdomain -i PUT" >> squid.conf
echo "acl HEAD dstdomain -i HEAD" >> squid.conf
echo "acl accept dstdomain -i TRACE" >> squid.conf
echo "acl accept dstdomain -i OPTIONS" >> squid.conf
echo "acl accept dstdomain -i PATCH" >> squid.conf
echo "acl accept dstdomain -i PROPATCH" >> squid.conf
echo "acl accept dstdomain -i DELETE" >> squid.conf
echo "acl accept dstdomain -i REQUEST" >> squid.conf
echo "acl accept dstdomain -i METHOD" >> squid.conf
echo "acl accept dstdomain -i NETDATA" >> squid.conf
echo "acl accept dstdomain -i MOVE" >> squid.conf
echo "acl all src 0.0.0.0/0" >> squid.conf
echo "http_access allow ip" >> squid.conf
echo "http_access allow gui" >> squid.conf
echo "http_access allow accept" >> squid.conf
echo "http_access allow HEAD" >> squid.conf
echo "http_access deny all" >> squid.conf
echo "forwarded_for off" >> squid.conf
echo "request_header_access Allow allow all" >> squid.conf
echo "request_header_access Authorization allow all" >> squid.conf
echo "request_header_access WWW-Authenticate allow all" >> squid.conf
echo "request_header_access Proxy-Authorization allow all" >> squid.conf
echo "request_header_access X-Online-Host allow all" >> squid.conf
echo "request_header_access Proxy-Authenticate allow all" >> squid.conf
echo "request_header_access Cache-Control allow all" >> squid.conf
echo "request_header_access Content-Encoding allow all" >> squid.conf
echo "request_header_access Content-Length allow all" >> squid.conf
echo "request_header_access Content-Type allow all" >> squid.conf
echo "request_header_access Date allow all" >> squid.conf
echo "request_header_access Expires allow all" >> squid.conf
echo "request_header_access Host allow all" >> squid.conf
echo "request_header_access If-Modified-Since allow all" >> squid.conf
echo "request_header_access Last-Modified allow all" >> squid.conf
echo "request_header_access Location allow all" >> squid.conf
echo "request_header_access Pragma allow all" >> squid.conf
echo "request_header_access Accept allow all" >> squid.conf
echo "request_header_access Accept-Charset allow all" >> squid.conf
echo "request_header_access Accept-Encoding allow all" >> squid.conf
echo "request_header_access Accept-Language allow all" >> squid.conf
echo "request_header_access Content-Language allow all" >> squid.conf
echo "request_header_access Mime-Version allow all" >> squid.conf
echo "request_header_access Retry-After allow all" >> squid.conf
echo "request_header_access Title allow all" >> squid.conf
echo "request_header_access Connection allow all" >> squid.conf
echo "request_header_access Proxy-Connection allow all" >> squid.conf
echo "request_header_access User-Agent allow all" >> squid.conf
echo "request_header_access Cookie allow all" >> squid.conf
echo "request_header_access Referer allow all" >> squid.conf
echo "request_header_access Host allow all" >> squid.conf
echo "via off" >> squid.conf
 
service squid* restart 1> /dev/null 2> /dev/null
service squid3 restart 1> /dev/null 2> /dev/null
/etc/init.d/squid* restart 1> /dev/null 2> /dev/null
 
ufw allow 443 1>/dev/null 2>/dev/null
ufw allow 80 1>/dev/null 2>/dev/null
ufw allow 8080 1>/dev/null 2>/dev/null
ufw allow 8799 1>/dev/null 2>/dev/null
ufw allow 3128 1>/dev/null 2>/dev/null
ufw allow 1080 1>/dev/null 2>/dev/null

echo -e "\033[01;32mCONFIGURADO COM SUCESSO \033[0m"
exit 0
fi