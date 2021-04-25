set DOCKER_IMAGE=jekyll-env-minamino
set DOCKER_CONTAINER=jekyll-env-minamino
docker build -t %DOCKER_IMAGE% .

if "x%~1" == "x" goto run
goto %~1

:run
docker run -it --rm -v %CD%:/srv/jekyll --name %DOCKER_CONTAINER% -p 4000:4000 %DOCKER_IMAGE% bundle exec sh ./run.sh
goto :eof

:bash
docker run -it --rm -v %CD%:/srv/jekyll --name %DOCKER_CONTAINER% -p 4000:4000 %DOCKER_IMAGE% bash
goto :eof
