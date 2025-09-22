@echo off
set PARAM=%1
set NO-CACHE=
if [%PARAM%]==[] goto CONTINUE_SCRIPT
if [%PARAM%]==[full] set NO-CACHE=--no-cache

:CONTINUE_SCRIPT
set OLDDIR=%CD%
echo %OLDDIR%
cd ..\..
docker build %NO-CACHE% -f Dockerfile.AntarpyDAOTest -t antarpy-api .
cd /d %OLDDIR%
