/**
 * CmisPropertyIdDefinitionType.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */

package org.integratedsemantics.cmis.webservice.discoveryservice
{
	import mx.utils.ObjectProxy;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Wrapper class for a operation required type
	 */
    
	public class CmisPropertyIdDefinitionType extends org.integratedsemantics.cmis.webservice.discoveryservice.CmisPropertyDefinitionType
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function CmisPropertyIdDefinitionType() {}
            
		[ArrayElementType("CmisChoiceIdType")]
		public var defaultValue:Array;
		public var anyAttribute:Array;
	}
}