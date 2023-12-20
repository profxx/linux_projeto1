#!/bin/bash
echo "Inicializando as configurações..."

echo "Criando diretórios..."

mkdir /publico 
mkdir /adm 
mkdir /ven 
mkdir /sec

echo "Diretórios criados!"

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados!"

echo "Criando Usuários..."

useradd carlos -s /bin/bash -m -c "Carlos" -p $(openssl passwd -1 Senha123) -G GRP_ADM
passwd carlos -e

useradd maria -s /bin/bash -m -c "Maria" -p $(openssl passwd -1 Senha123) -G GRP_ADM
passwd maria -e

useradd joao -s /bin/bash -m -c "João" -p $(openssl passwd -1 Senha123) -G GRP_ADM
passwd joao -e

useradd debora -s /bin/bash -m -c "Débora" -p $(openssl passwd -1 Senha123) -G GRP_VEN
passwd debora -e


useradd sebastiana -s /bin/bash -m -c "Sebastiana" -p $(openssl passwd -1 Senha123) -G GRP_VEN
passwd sebastiana -e

useradd roberto -s /bin/bash -m -c "Roberto" -p $(openssl passwd -1 Senha123) -G GRP_VEN
passwd roberto -e

useradd josefina -s /bin/bash -m -c "Josefina" -p $(openssl passwd -1 Senha123) -G GRP_SEC
passwd josefina -e

useradd amanda -s /bin/bash -m -c "Amanda" -p $(openssl passwd -1 Senha123) -G GRP_SEC
passwd amanda -e

useradd rogerio -s /bin/bash -m -c "Rogério" -p $(openssl passwd -1 Senha123) -G GRP_SEC
passwd rogerio -e

echo "Usuários Criados!"

echo "Configurando os donos..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Donos configurados!"

echo "Configurando as permissões..."

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Permissões configuradas!"
