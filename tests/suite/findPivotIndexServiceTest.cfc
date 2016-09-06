
component extends="mxunit.framework.TestCase" {
	
	public function init(){ 
		return this;
	}

	function setUp(){ }

	function tearDown(){ }
	
	function test_findPivotIndex(){
		var serviceObject = createObject("component","services.findPivotIndexService").init();
		
		var isPivotAvailable = serviceObject.checkIfPivotIndexIsAvailable("5,9,7,17,6,5,4,6");

		debug(isPivotAvailable);
		
		assertEquals(0,isPivotAvailable, "There's a pivot element");
	}

	function test_findPivotIndex1(){
		var serviceObject = createObject("component","services.findPivotIndexService").init();
		
		var isPivotAvailable = serviceObject.checkIfPivotIndexIsAvailable("5,9,4,7,21,6,9,4,6");

		debug(isPivotAvailable);
		
		assertEquals(0,isPivotAvailable, "There's a pivot element");
	}

	
}

