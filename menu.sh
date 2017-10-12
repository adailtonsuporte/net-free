echo " MENU DE OPÇOES"
echo "$cyanClaro [0] MENU EXTRA "
echo "$cyanClaro [1] Criar Novo Usuário"
echo "$cyanClaro [2] Apagar Usuário"
echo "$cyanClaro [3] Alterar Senha De Usuario"
echo "$cyanClaro [4] Limitar Login Simultaneo"
echo "$cyanClaro [5] Ver Limitador Trabalhando"
echo "$cyanClaro [6] Ver Uso de Banda Por Usuario"
echo "$cyanClaro [7] Ver Uso de Banda Total"
echo "$cyanClaro [8] Gerenciador de Tarefas"
echo "$cyanClaro [9] Ver Usuários Conectados"
echo "$cyanClaro [10] Liberar Memoria Ram"
echo "$cyanClaro [11] Acessar SQUID"
echo "$cyanClaro [12] Ver Log SQUID"
echo "$cyanClaro [13] Acessar SSH"
echo "$cyanClaro [14] Testar Velocidade Server"
echo "$cyanClaro [15] Listar users Online "
echo "$cyanClaro [16] Contagem de Users Online "
echo "$cyanClaro [17] Menu OPENVPN "
echo "$cyanClaro [18] Start Python SSH "
echo "$cyanClaro [19] Start Python VPN "
echo "$cyanClaro BY EXTREME TIPS MOD"

read deseja
if [ "$deseja" = "0" ]
then
vpspack
fi
if [ "$deseja" = "1" ]
then
echo  "$cyanClaro Qual nome deseja para o novo usuário ?"
read nome
useradd -M -s /bin/false $nome
passwd $nome
echo "nome criado !!!"
fi
if [ "$deseja" = "2" ]
then
echo  "$cyanClaro Qual nome do usuário que deseja apagar ?"
read nome
userdel -rf $nome
cat /etc/passwd | grep $nome
deluser $nome
echo "nome apagado !!! "
fi
if [ "$deseja" = "3" ]
then
echo  "$cyanClaro Qual Login Deseja Trocar a Senha?"
read nome
passwd $nome
echo "Senha Alterada Com Sucesso!!!"
fi
if [ "$deseja" = "4" ]
then
nano users.txt
fi
if [ "$deseja" = "5" ]
then
./sshKill.sh
fi
if [ "$deseja" = "6" ]
then
nethogs
fi
if [ "$deseja" = "7" ]
then
nload
fi
if [ "$deseja" = "8" ]
then
htop
fi
if [ "$deseja" = "9" ]
then
echo  "$cyanClaro Qual nome do usuario ?"
read nome
clear
echo "Usuário: "
echo
ps x | grep $nome | wc -l
echo
echo
fi
if [ "$deseja" = "10" ]
then
sync; echo 1 > /proc/sys/vm/drop_caches
sync; echo 2 > /proc/sys/vm/drop_caches
sync; echo 3 > /proc/sys/vm/drop_caches
fi
if [ "$deseja" = "11" ]
then
nano /etc/squid3/squid.conf
fi
if [ "$deseja" = "12" ]
then
tail -f /var/log/squid3/access.log
fi
if [ "$deseja" = "13" ]
then
nano /etc/ssh/sshd_config
fi
if [ "$deseja" = "14" ]
then
speedtest-cli --share
fi
if [ "$deseja" = "15" ]
then
ps x | grep sshd
fi
if [ "$deseja" = "16" ]
then
ps x | grep sshd | grep priv | wc -l
fi
if [ "$deseja" = "17" ]
then
bash openvpn.sh
fi
if [ "$deseja" = "18" ]
then
nohup python servidor.py > /dev/null &
fi
if [ "$deseja" = "19" ]
then
nohup python openserver.py > /dev/null &
fi

