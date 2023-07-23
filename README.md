
### Trabalhando com banco de dados local, remoto e API, consolidando e analisando dados.

## Set-up
  1 - Clone this project https://github.com/GIZELLYPY/h2.git
  2 - Create `$HOME/data/postgres` directory for PostgreSQL files: `mkdir -p ~/data/postgres`
  3 - Deploy Docker: `docker-compose up -d`
  4 - On terminal, search for jupyter container id by `docker container ls`
  5 - Retrieve the token to log into Jupyter: `docker logs {jupyter_containter_id_here}` 
