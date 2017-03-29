# deployme-sample-app
Simple app which should be deployed to vm as Dockerfile, Docker-compose or simple tarball

Project structure:
- Dockerfile -- Deploy a simple Flask app into Docker container.
  run `docker run -p 80:80 -it --rm alexbender/visit-counter`
- docker-compose.yml -- Deploy a simple Flask app with Redis.
- app -- directory with Flask application to be gunicorned.
