<a href='http://integratedsemantics.org/wp-content/uploads/2012/04/cmis-spaces-20120419.png' title='CMIS Spaces'><img src='http://integratedsemantics.org/wp-content/uploads/2012/04/cmis-spaces-20120419-3.png' alt='CMIS Spaces screenshot' /></a>

CMIS Spaces RIA clients (Flex+AIR, Flex+Browser) are for ECM / CMS servers supporting the Content Management Interoperability Services ([CMIS](http://wiki.alfresco.com/wiki/CMIS)) standard.

[CMIS Spaces Mobile](http://integratedsemantics.org/2011/10/19/flexspaces-mobile/) for iPad and Android tablets (in addition to existing desktop AIR, Flex in Browser, and portlet versions):
<br>
1st test version of CMIS Spaces Mobile for Android is now available (5/18/12) for download <br>
(iOS  iPad/iPhone version can be built from common cmisspacesair-mobile-app source project)<br>
<br>
<br>
Also has UI independent ActionScript APIs for both CMIS AtomPub REST and CMIS Web Services (SOAP)<br>
<br>
Based on <a href='http://code.google.com/p/flexspaces/'>FlexSpaces</a> (CMIS Spaces source needs the two projects from this)<br>
<br>
Uses Cairngorm, Presentation Model pattern, Spring ActionScript. Extends <a href='http://code.google.com/p/as3atompub/'>as3atompub</a> (modified to not use sockets) for CMIS AtomPub REST<br>
<br>
CMIS Spaces Flex+AIR can handle the http delete/put for cmis atompub updating. For in browser non air cmis atompub updating, CMIS Spaces uses BlazeDS proxy to handle http delete/put. For non air in browser, Flash player 10.0+ is required for upload and update existing doc features.<br>
<br>
Testing CMIS Spaces with Alfresco, Nuxeo, IBM FileNet, EMC Documentum, Day CRX<br>
<br>
Working features (Atompub REST)<br>
Tree / Folder drilldown / Bread crumb navigation, basic search (full text), upload, multi-file drag-in from desktop and multi-file drag-out  to desktop (AIR), create content text/html/xml dialogs (AIR), create space / folder, download, delete, view content, view properties (context menu), checkout, cancel checkout and checkin from checked out list, version history list, local files pane with drag in (AIR), play video (context menu), update existing doc, tools/make available offline, tools/update from oflline, optional (need to turn on in config file) less steps edit (offlines file and launches in application for file format, optional save in app automatically updates online (when less steps edit used)<br>
<br>
Todo<br>
Atompub REST: Get advanced search UI hooked up to cmis queries underneath, cut/copy/paste, edit properties, rename, file icons, thumbnail renditions (and coverflow UI from FlexSpaces). Todo for alternative SOAP web services: hook up for more areas than basic search / navigation.<br>
Note: The CMISSpacesConfig.xml file (in <program files>/CMISSpaces for AIR client or in cmis-spaces dir in webapp folder) needs to be configured for CMIS service URLs and other things. Also for the web app version, the dynamic urls in cmis-spaces/WEB-INF/flex/proxy-config.xml need to be set to the cmis atompub service url for your repository.<br>
<br>
Note: Currently with newer Alfresco 4.0 opencmis binding url, can only view doc from doc lib view (not from search results or version history)<br>
<br>
<br>
See<br>
<br>
<a href='http://www.integratedsemantics.org'>integratedsemantics.org</a> blog<br>
<br>
<a href='http://www.integratedsemantics.com'>integratedsemantics.com</a>

<a href='http://addons.alfresco.com/addons/cmis-spaces'>CMIS Spaces Alfresco Add+Ons page</a>

<a href='http://code.google.com/p/flexspaces/'>FlexSpaces Google Code</a>

<a href='http://code.google.com/p/flexibleshare/'>FlexibleShare</a>