/**
 * CmisObjectType.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */

package org.integratedsemantics.cmis.webservice.navigationservice
{
	import mx.utils.ObjectProxy;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Wrapper class for a operation required type
	 */
    
	public class CmisObjectType
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function CmisObjectType() {}
            
		public var properties:org.integratedsemantics.cmis.webservice.navigationservice.CmisPropertiesType;
		public var allowableActions:org.integratedsemantics.cmis.webservice.navigationservice.CmisAllowableActionsType;
		[ArrayElementType("CmisObjectType")]
		public var relationship:Array;
		[ArrayElementType("CmisObjectType")]
		public var child:Array;
		public var anyElement:Array;
	}
}