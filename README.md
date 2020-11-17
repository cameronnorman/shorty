# Shorty

A simple to deploy URL shortner.

## Getting started

In order to setup the application all you need to do is run
```
make setup
```

In order to run the application all you need to do is run:
```
make run
```
## Deployment

To deploy the app on a server, you can run the following commands as long as the server has `docker` installed


```
docker build . -t shorty
docker run --env SITE_URL=your-site-url-here shorty
```
