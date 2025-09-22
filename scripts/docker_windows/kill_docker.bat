@echo off
set PARAM=antarpy-flask
if [%PARAM%]==[] goto ERROR
echo(
docker ps
echo(
echo(
docker rm -f %PARAM%
echo(
echo(
docker ps
goto END_SCRIPT

:ERROR
echo "Please pass the name for the docker image as a parameter"
echo(
docker ps
goto END_SCRIPT

:END_SCRIPT
