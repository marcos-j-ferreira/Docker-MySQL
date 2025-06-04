# 1. Garanta que você está com os dados mais recentes (se tiver repositório remoto)
git fetch origin

# 2. Mude para a branch master
git checkout master

# 3. (Opcional) Atualize a master com o remoto, caso tenha colaboradores
git pull origin master

# 4. Faça o merge da branch "db-docker" com a master
git merge db-docker

# 5. sobe todas as atualizações para o github
git push origin master
