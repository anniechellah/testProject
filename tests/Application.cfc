/**
*
* @file  /usr/local/Cellar/tomcat/8.5.4/libexec/apps/testProject/tests/Application.cfc
* @author  
* @description
*
*/

component output="false"  {

	    this.name = hash(getCurrentTemplatePath());
    	this.applicationTimeout = createTimeSpan( 0, 0, 5, 0 );

    	this.sessionManagement = false;
    	this.directory = getDirectoryFromPath(getCurrentTemplatePath());
    	this.mxunitDirectory = (this.directory & "../mxunit/");
    	this.appDirectory = (this.directory & "../../");
    	this.mappings[ "/mxunit" ] = this.mxunitDirectory;
    	this.mappings[ "/suite" ] = (this.directory & "suite/");
    	this.mappings[ "/services" ] = (this.appDirectory & "services/"); 
}
