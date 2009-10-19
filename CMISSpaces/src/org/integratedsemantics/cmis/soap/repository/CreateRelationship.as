/**
 * CreateRelationship.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */

package org.integratedsemantics.cmis.soap.repository
{
	import mx.utils.ObjectProxy;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Wrapper class for a operation required type
	 */
    
	public class CreateRelationship
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function CreateRelationship() {}
            
		public var repositoryId:String;
		public var properties:org.integratedsemantics.cmis.soap.repository.CmisPropertiesType;
		[ArrayElementType("String")]
		public var policies:Array;
		public var addACEs:org.integratedsemantics.cmis.soap.repository.CmisAccessControlListType;
		public var removeACEs:org.integratedsemantics.cmis.soap.repository.CmisAccessControlListType;
		public var extension:org.integratedsemantics.cmis.soap.repository.CmisExtensionType;
	}
}