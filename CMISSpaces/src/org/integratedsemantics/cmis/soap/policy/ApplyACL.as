/**
 * ApplyACL.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */

package org.integratedsemantics.cmis.soap.policy
{
	import mx.utils.ObjectProxy;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Wrapper class for a operation required type
	 */
    
	public class ApplyACL
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function ApplyACL() {}
            
		public var repositoryId:String;
		public var objectId:String;
		public var addACEs:org.integratedsemantics.cmis.soap.policy.CmisAccessControlListType;
		public var removeACEs:org.integratedsemantics.cmis.soap.policy.CmisAccessControlListType;
		public var ACLPropagation:org.integratedsemantics.cmis.soap.policy.EnumACLPropagation;
		public var extension:org.integratedsemantics.cmis.soap.policy.CmisExtensionType;
	}
}