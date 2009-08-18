/**
 * Value_type1.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package org.integratedsemantics.cmis.webservice.objectservice
{
	import mx.utils.ObjectProxy;
	import mx.collections.ArrayCollection;
	import mx.collections.IList;
	import mx.collections.ICollectionView;
	import mx.rpc.soap.types.*;
	/**
	 * Typed array collection
	 */

	public class Value_type1 extends ArrayCollection
	{
		/**
		 * Constructor - initializes the array collection based on a source array
		 */
        
		public function Value_type1(source:Array = null)
		{
			super(source);
		}
        
        
		public function addObjectAt(item:Object,index:int):void 
		{
			addItemAt(item,index);
		}

		public function addObject(item:Object):void 
		{
			addItem(item);
		} 

		public function getObjectAt(index:int):Object 
		{
			return getItemAt(index) as Object;
		}

		public function getObjectIndex(item:Object):int 
		{
			return getItemIndex(item);
		}

		public function setObjectAt(item:Object,index:int):void 
		{
			setItemAt(item,index);
		}
        
		public function asIList():IList 
		{
			return this as IList;
		}
        
		public function asICollectionView():ICollectionView 
		{
			return this as ICollectionView;
		}
	}
}