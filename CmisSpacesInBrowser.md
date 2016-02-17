Application Server:

1. Install "cmis-spaces" webapp folder  in your tomcat/webapps folder

2. Configure /cmis-spaces/cmis-spaces-flex/CMISSpacesConfig.xml It needs to be configured for the CMIS atompub service URL for your repository.

3. The dynamic urls in cmis-spaces/WEB-INF/flex/proxy-config.xml need to have the cmis atompub service path for your repository (if not alfresco)

Client machine:

1. Install Flash player 10 or newer (requires a flash 10 feature) for your browser

2. Run in your browser:

http://localhost:8080/cmis-spaces/cmis-spaces-flex/CMISSpaces.html