/**
 * CreatePolicy_request.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */

package org.integratedsemantics.cmis.webservice.objectservice
{
	import mx.utils.ObjectProxy;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Wrapper class for a operation required type
	 */
    
	public class CreatePolicy_request
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function CreatePolicy_request() {}
            
		public var repositoryId:String;
		public var typeId:String;
		public var properties:org.integratedsemantics.cmis.webservice.objectservice.CmisPropertiesType;
		public var folderId:String;
	}
}