docker-compose up -d
# sobe em segundo plano

docker-compose up
# sobe em primeiro, permite ver o terminal de build

docker exec -it mysql_escola mysql -u root -p
# acessa o terminal do mysql como root, permitindo fazer inserções e pesquisas

docker-compose down -v
# remove o container e seus volumes

docker stop mysql_escola
# usado para parar temporariamente o container, não apagando nada

docker-compose down 
# usado para apagar o container com todas as informações

docker-compose down -v
# usado para apagar até o volume, os dados salvos

docker start mysql_escola 
# usado para reiniciar o container

docker-compose down -v && docker-compose up --build
# usado para derrubar e buildar um novo.

docker exec mysql_escola mysqldump -u root -p escola > backup.sql
# criar um arquivo de backup do banco de dados.

docker exec -i mysql_escola mysql -u root -p escola < backup.sql
# restaura o backup feito

