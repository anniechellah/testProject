/**
*
* @file  /usr/local/Cellar/tomcat/8.5.4/libexec/apps/testProject/services/findPivotIndexService.cfc
* @author  Annie Chellah Theogaraj
* @description This component would assist in finding whether an array inputted by the user has a pivot index. ie the sum of 
* elements to the right side of the pivot index is equal to the sum of the elements to the left side of the pivot index.
*
*/

component output="false" displayname="findPivotIndexService"  {

	public function init(){
		return this;
	}

	remote function checkIfPivotIndexIsAvailable(String inputArrayList){

		var leftElementsSum = 0;
		var rightElementsSum = 0;
		var arrayToBeTested = listToArray(arguments.inputArrayList);

		var lsIndex = 0;
		var leIndex = 0;
		var rsIndex = 0;
		var reIndex = 0; 
		var pIndex = 0;

		var pivotIndex = 0;

		var inputArrayLength = ArrayLen(arrayToBeTested);

		for(i=2;i LTE inputArrayLength;i++){

			 pIndex = i;

			 lsIndex = 1;
			 leIndex = pIndex - 1;

			 rsIndex = pIndex + 1;
             reIndex = inputArrayLength;


			 for(j=lsIndex; j LTE leIndex; j++){
			 	leftElementsSum += arrayToBeTested[j];
			 }

			 for(k=rsIndex; k LTE reIndex; k++){
			 	rightElementsSum += arrayToBeTested[k];
			 }

			 if(leftElementsSum eq rightElementsSum){
			 	pivotIndex = pIndex;
			 }

			 leftElementsSum = 0;
			 rightElementsSum = 0;

		}

		return pivotIndex;
	}
}