/**
 * CmisPropertyIntegerDefinitionType.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */

package org.integratedsemantics.cmis.webservice.multifilingservice
{
	import mx.utils.ObjectProxy;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Wrapper class for a operation required type
	 */
    
	public class CmisPropertyIntegerDefinitionType extends org.integratedsemantics.cmis.webservice.multifilingservice.CmisPropertyDefinitionType
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function CmisPropertyIntegerDefinitionType() {}
            
		[ArrayElementType("CmisChoiceIntegerType")]
		public var defaultValue:Array;
		public var maxValue:Number;
		public var minValue:Number;
		public var anyAttribute:Array;
	}
}