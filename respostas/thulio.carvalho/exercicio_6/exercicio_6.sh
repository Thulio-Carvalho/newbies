#!/bin/bash
# Thúlio Ícaro Castro Carvalho - 117110297
# thulio.carvalho@ccc.ufcg.edu.br

PERMISSIONS=$(ls -l | cut -b 2-10)
SAFE=true

for i in $PERMISSIONS
do
	if [[ $i =~ ^[rwx-] ]]; then
		if [[ $i =~ ^.*w.$ ]]; then
			SAFE=false		
		fi
	fi
done

if [[ "$SAFE" = false ]]; then
	echo "Diretório Inseguro!"
fi	
