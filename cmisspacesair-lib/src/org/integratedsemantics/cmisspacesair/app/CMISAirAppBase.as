package org.integratedsemantics.cmisspacesair.app
{
    import flash.events.Event;
    import flash.net.SharedObject;
    
    import org.integratedsemantics.cmisspaces.model.config.CMISConfig;
    import org.integratedsemantics.cmisspaces.presmodel.main.CMISSpacesPresModel;
    import org.integratedsemantics.flexspaces.model.global.AppConfig;
    import org.integratedsemantics.flexspaces.presmodel.search.results.SearchResultsPresModel;
    import org.integratedsemantics.flexspacesair.app.AirAppBase;
    import org.springextensions.actionscript.context.support.FlexXMLApplicationContext;
    
    public class CMISAirAppBase extends AirAppBase
    {        
        public function CMISAirAppBase()
        {
			super();                                    
        }
        
		[Bindable]
        public function get cmisSpacesAirPresModel():CMISSpacesPresModel
        {
        	return this.flexSpacesAirPresModel as CMISSpacesPresModel;
        }

    	public function set cmisSpacesAirPresModel(cmisSpacesPresModel:CMISSpacesPresModel):void
        {
            this.flexSpacesAirPresModel = cmisSpacesPresModel;            
        }               

        override protected function loadConfig():void
        {        
            // spring actionscript config
            model.applicationContext = new FlexXMLApplicationContext("CMISSpacesConfig.xml");
            model.applicationContext.addEventListener(Event.COMPLETE, onApplicationContextComplete);
            model.applicationContext.load();                                                                                         
        }

        override protected function onApplicationContextComplete(event:Event):void
        {
            var cmisConfig:CMISConfig = model.applicationContext.getObject("cmisConfig");
            model.ecmServerConfig = cmisConfig;

            var appConfig:AppConfig = model.applicationContext.getObject("appConfig"); 
            model.appConfig = appConfig;                

            model.appConfig.airMode = true;         
            model.appConfig.cmisMode = true;                          
            
            cmisSpacesAirPresModel = model.applicationContext.getObject("presModel");
            model.flexSpacesPresModel = cmisSpacesAirPresModel;            

			// use user prefs if avail
			var userPrefs:SharedObject = SharedObject.getLocal("userPrefs");
			if (userPrefs.data.cmisUrl != undefined)
			{  
				cmisConfig.cmisUrl = userPrefs.data.cmisUrl;
			}  			
			
        	cmisSpacesAirPresModel.showTasks = false;
        	cmisSpacesAirPresModel.showWCM = false;
        	cmisSpacesAirPresModel.showShare = false;                       
            
            model.configComplete = true; 
			
			// setup search results
			cmisSpacesAirPresModel.searchResultsPresModel = new SearchResultsPresModel();                     			
        }                        	
        
    }
}