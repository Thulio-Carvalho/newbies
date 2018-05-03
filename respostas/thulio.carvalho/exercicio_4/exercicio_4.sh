#!/bin/bash
# Thúlio Ícaro Castro Carvalho - 117110297
# thulio.carvalho@ccc.ufcg.edu.br


echo -e 'Entre com a senha:'
read -s PASSWD

if [[ ($PASSWD =~ (.*[A-Z].*)) && (${#PASSWD} -ge 8) && ($PASSWD =~ (.*[0-9].*)) ]]; then
  echo 'Senha segura! :)'
  else
    if [[ ${#PASSWD} -lt 8 ]]; then
      echo 'Senha insegura! A senha inserida nao pode ter menos de 8 caracteres'
      else
        if [[ !($PASSWD =~ .*[0-9].*) ]]; then
          echo 'Senha insegura! A senha inserida nao contem numeros'
          else
            if [[ !($PASSWD =~ .*[A-Z].*) ]]; then
              echo 'Senha insegura! A senha inserida nao tem uma letra maiuscula'
            fi
        fi
    fi
fi
