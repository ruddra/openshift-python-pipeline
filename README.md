# Deploy Python+Gunicorn+NGINX+Jenkins Pipeline to Openshift
A working example for three part blog series of Modern CI/CD using Python+Gunicorn+NGINX+Jenkins Pipelines to Openshift. They are available at:
1. [Modern CI/CD Using Python+Gunicorn+NGINX+Jenkins Pipeline to Openshift (Part One)](https://ruddra.com/2018/08/11/openshift-python-gunicorn-nginx-jenkins-pipelines-part-one)
2. [Modern CI/CD Using Python+Gunicorn+NGINX+Jenkins Pipeline to Openshift (Part Two)](https://ruddra.com/2018/08/12/openshift-python-gunicorn-nginx-jenkins-pipelines-part-two)
3. [Modern CI/CD Using Python+Gunicorn+NGINX+Jenkins Pipeline to Openshift (Part Three)](https://ruddra.com/2018/08/12/openshift-python-gunicorn-nginx-jenkins-pipelines-part-three)

## Application Architecture
The python application will be served by Gunicorn and NGINX will reverse proxy that to expose to real world
![Application](https://ruddra.com/content/images/2018/08/Screen-Shot-2018-08-12-at-3.32.20-PM.png)

## Deployment Structure
It will look like this:
![Deployment](https://ruddra.com/content/images/2018/08/Screen-Shot-2018-08-12-at-3.28.36-PM.png)

## Pipelines:
Pipeline execution will look like this in openshift:
![OC Pipeline](https://ruddra.com/content/images/2018/08/Screen-Shot-2018-08-12-at-3.27.45-AM.png)

Pipeline execution will look like this in blue ocean of Jenkins:
![BO Pipeline](https://ruddra.com/content/images/2018/08/Screen-Shot-2018-08-12-at-3.29.10-AM.png)

Tests are stored in blue ocean as well:
![Tests](https://ruddra.com/content/images/2018/08/Screen-Shot-2018-08-12-at-3.29.31-AM.png)

## Output Server
Python Nginx Server will be available:
![Server](https://ruddra.com/content/images/2018/08/Screen-Shot-2018-08-12-at-12.00.08-PM.png)
