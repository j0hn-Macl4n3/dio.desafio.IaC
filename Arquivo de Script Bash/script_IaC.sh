#!/bin/bash

echo "Desafio Dio IAC - Infraestrutura como Código: Script de Criação de Estrutura de Usuários, Diretórios e Permissões"

echo "Criando Diretórios"

mkdir /publico
mkdir /adm
mkdir /mark
mkdir /sec

echo "Criando Grupos"

groupadd GUP_ADM
groupadd GUP_MARK
groupadd GUP_SEC

echo "Criando Usuários"

echo "Usuários Setor Administrativo"

useradd antonio -c "Antônio Dutra" -m -s /bin/bash -p $(openssl passwd 123456) -G GUP_ADM
passwd antonio -e
useradd amanda -c "Amanda Dutra" -m -s /bin/bash -p $(openssl passwd 123456) -G GUP_ADM
passwd amanda -e
useradd elias -c "Elias Dias" -m -s /bin/bash -p $(openssl passwd 123456) -G GUP_ADM
passwd elias -e

echo "Usuários Setor Marketing"

useradd vitor -c "Vitor Dantas" -m -s /bin/bash -p $(openssl passwd 123456) -G GUP_MARK
passwd vitor -e
useradd barbara -c "Barbara Torres" -m -s /bin/bash -p $(openssl passwd 123456) -G GUP_MARK
passwd barbara -e
useradd michele -c "Michele Linn" -m -s /bin/bash -p $(openssl passwd 123456) -G GUP_MARK
passwd michele -e

echo "Usuários Setor Secretaria"

useradd bruna -c "Bruna Redias" -m -s /bin/bash -p $(openssl passwd 123456) -G GUP_SEC
passwd bruna -e
useradd bianca -c "Bianca Tavares" -m -s /bin/bash -p $(openssl passwd 123456) -G GUP_SEC
passwd bianca -e
useradd marta -c "Marta Rios" -m -s /bin/bash -p $(openssl passwd 123456) -G GUP_SEC
passwd marta -e

echo "Especificando Permissões dos Diretórios"

chown root:GUP_ADM /adm
chown root:GUP_MARK /mark
chown root:GUP_SEC /sec

chmod 770 /adm
chmod 770 /mark
chmod 770 /sec
chmod 777 /publico

echo "Fim..."