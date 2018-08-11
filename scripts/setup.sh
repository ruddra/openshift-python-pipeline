#!/bin/sh

echo "--------- starting setup ---------"
echo "this installation has been tested in minishift only"
echo "please run 'docker pull openshift/jenkins-2-centos7' for faster deployment"
echo "please run 'docker pull openshift/mysql-55-centos7' for faster deployment"
echo "please run 'docker pull python:3.6' for faster deployment"

echo "starting minishift"
minishift start

echo "login as developer using u/p developer/developer"
oc login -u developer -p developer

echo "creating projects cicd, dev and stage"

oc new-project dev   --display-name="Dev"
oc new-project stage --display-name="Stage"
oc  new-project cicd --display-name="CI/CD"

echo "adding permission for jenkins to manipulate dev and stage"
oc policy add-role-to-user edit system:serviceaccount:cicd:jenkins -n dev
oc policy add-role-to-user edit system:serviceaccount:cicd:jenkins -n stage

echo "using project cicd"
oc project cicd

echo "installing jenkins"
oc new-app openshift/jenkins-2-centos7
echo "exposing jenkins"
oc expose svc/jenkins-2-centos7

echo "installing mysql which will be available at IP: 172.30.0.30"
oc new-app -f "https://raw.githubusercontent.com/ruddra/openshift-django/master/.openshift/templates/mysql-template.yaml"

echo "loading pipeline into cicd project"
oc new-app -f "https://raw.githubusercontent.com/ruddra/openshift-django/master/.openshift/pipelines/openshift-django-pipeline.yaml"

echo "initiating pipeline"
oc start-build djangopipeline

echo "please go to console>cicd>builds>pipelines and check status of pipeline"

echo "--------- ending setup ---------"