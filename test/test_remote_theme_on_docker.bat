set DOCKER_IMAGE=jekyll-env-minamino-test
set DOCKER_CONTAINER=jekyll-env-minamino-test
docker build -t %DOCKER_IMAGE% .
rem docker run -it --rm -v %CD%:/srv/jekyll --name %DOCKER_CONTAINER% -p 4000:4000 %DOCKER_IMAGE% bash
docker run -it --rm -v %CD%:/srv/jekyll --name %DOCKER_CONTAINER% -p 4000:4000 %DOCKER_IMAGE% bundle exec jekyll serve --host 0.0.0.0 --incremental
