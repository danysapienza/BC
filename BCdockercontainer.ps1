Update-Module navcontainerhelper
Import-Module navcontainerhelper

new-navcontainer -accept_eula -imagename mcr.microsoft.com/businesscentral/sandbox -containername mybccontainer3 -publishports 80 -updatehosts -dns '8.8.8.8'
new-bccontainer -accept_eula -imagename mcr.microsoft.com/businesscentral/sandbox:base -containername mybccontainer6 -updatehosts -dns '8.8.8.8' -auth NavUserPassword

docker run -e accept_eula=y mcr.microsoft.com/businesscentral/sandbox -name mybccontainer

Set-Executionpolicy bypass

docker ps -a

docker rm 55
docker rm c3142c5aaa45
docker rm ec39a90f559e

docker version
docker run hello-world

Stop-NavContainer 71
Start-NavContainer 71
docker start 67deb921bc7e
