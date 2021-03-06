package org.integratedsemantics.cmisspaces.view.properties.basic
{
    import flash.events.MouseEvent;
    
    import mx.containers.FormItem;
    import mx.controls.Text;
    import mx.events.FlexEvent;
    import mx.managers.PopUpManager;
    import mx.rpc.Responder;
    
    import org.integratedsemantics.flexspaces.control.event.properties.SetPropertiesEvent;
    import org.integratedsemantics.flexspaces.framework.presmodel.DialogViewBase;
    import org.integratedsemantics.flexspaces.presmodel.properties.basic.PropertiesPresModel;
    
    import spark.components.TextArea;
    import spark.components.TextInput;


    /**
     * Base class for properties views  
     * 
     */
    public class PropertiesViewBase extends DialogViewBase
    {
        public var onComplete:Function;

        public var nameItem:FormItem;
        public var nodename:TextInput;
        public var titleItem:FormItem;
        public var nodetitle:TextInput;        
        public var descriptionItem:FormItem;
        public var description:TextArea;
        public var authorItem:FormItem;
        public var author:TextInput;

        public var sizeItem:FormItem;
        public var size:Text;

        public var creatorItem:FormItem;
        public var creator:Text;
        public var createdItem:FormItem;
        public var created:Text;
        public var modifierItem:FormItem;
        public var modifier:Text;
        public var modifiedItem:FormItem;
        public var modified:Text;

        public var mimetypeItem:FormItem;
        public var mimetype:Text;
        public var encodingItem:FormItem;
        public var encoding:Text;
        public var emailidItem:FormItem;
        public var emailid:Text;
        
        public var editinlineItem:FormItem;
        public var editinline:Text;

        [Bindable]
        public var propPresModel:PropertiesPresModel;

                
        /**
         * Constructor
         * 
         * @param onComplete  handler to call after properites setting
         * 
         */
        public function PropertiesViewBase(onComplete:Function=null)
        {
            super();

            this.onComplete = onComplete;            
        }        
        
        /**
         * Handle creation complete 
         * 
         * @param creation complete event
         * 
         */
        override protected function onCreationComplete(event:FlexEvent):void
        {
            super.onCreationComplete(event);

            // disable changing properties for now
            propPresModel.nameEditable = false;
            propPresModel.titleEditable = false;
            propPresModel.descriptionEditable = false;

            propPresModel.emailIdVisible = false;
            
            // get properties
        	propPresModel.getProperties();                
        }
        
        /**
         * Handle close buttion click
         * (not for X close in title area)
         * (used when no write permissions)
         * 
         * @param click event
         * 
         */
        override protected function onCloseBtn(event:MouseEvent):void 
        {            
            PopUpManager.removePopUp(this);
        }


        /**
         * Handle ok buttion click
         * 
         * @param click event
         * 
         */
        override protected function onOkBtn(event:MouseEvent):void 
        {
            var responder:Responder = new Responder(onResultSetProperties, onFaultSetProperties);

            propPresModel.setProperties(responder);
            
            //var setPropertiesEvent:SetCmisPropertiesEvent = new SetCmisPropertiesEvent(SetPropertiesEvent.SET_PROPERTIES, responder, propPresModel.repoNode, 
            //       propPresModel.vo.entry, propPresModel.vo.name);
            //setPropertiesEvent.dispatch();
                
        }
        
        /**
         * Handler called when set properties successfully completed
         * 
         * @info results info
         */
        protected function onResultSetProperties(info:Object):void
        {            
            PopUpManager.removePopUp(this);
            if (onComplete != null)
            {
                onComplete();
            }                        
        }
        
        /**
         * Handler for set properties fault 
         * 
         * @param info fault info
         * 
         */
        protected function onFaultSetProperties(info:Object):void
        {
            PopUpManager.removePopUp(this);
            trace("onFaultSetProperties" + info);
        }        
        
    }
}