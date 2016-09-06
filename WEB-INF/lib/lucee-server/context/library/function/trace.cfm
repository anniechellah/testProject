<!--- 
 *
 * Copyright (c) 2014, the Railo Company Ltd. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either 
 * version 2.1 of the License, or (at your option) any later version.
 * 
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public 
 * License along with this library.  If not, see <http://www.gnu.org/licenses/>.
 * 
 ---><cffunction name="trace" returntype="void" caller="true" 
	hint="Displays and logs debugging data about the state of an application at the time this function executes. 
Tracks runtime logic flow, variable values, and execution time. Displays output at the end of the request or in the debugging section at the end of the request."><!---
	---><cfargument name="caller" type="struct" required="yes" hint="The Caller Scope" status="hidden"><!---
	---><cfargument name="var" type="string" required="no" hint="The name of a simple or complex variable to display. Useful for displaying a temporary value, or a value that does not display on any CFM page."><!---
	---><cfargument name="text" type="string" required="no" hint="string, which can include simple variable, but not complex variables such as arrays."><!---
	---><cfargument name="type" type="string" required="no" default="Information"  hint="Corresponds to the cflog type attribute:
- Information
- Warning
- Error
- Fatal Information"><!---
	---><cfargument name="category" type="string" required="no"  hint="string name for identifying trace groups"><!---
	---><cfargument name="inline" type="boolean" required="no" default="#false#" hint="if true displays trace code in line on the page in the location of the trace function, 
addition to the debugging information output."><!---
	---><cfargument name="abort" type="boolean" required="no" default="#false#" hint="stops further processing of the request."><!---
	---><cfargument name="follow" type="boolean" required="no" default="#false#" hint="If true, Lucee follows the variable defined in the [var] attribute and will log any changes to it. Ignored when attribute [var] is not defined."><!---
	---><cftrace attributeCollection="#arguments#"><!---
	---></cffunction>

<!--- older Lucee Version does not support the caller attribute and it is possible this file remain after a downgrade --->
<cffunction name="oldTrace" returntype="void" 
	hint="Displays and logs debugging data about the state of an application at the time this function executes. 
Tracks runtime logic flow, variable values, and execution time. Displays output at the end of the request or in the debugging section at the end of the request."><!---
	---><cfargument name="var" type="string" required="no" hint="The name of a simple or complex variable to display. Useful for displaying a temporary value, or a value that does not display on any CFM page."><!---
	---><cfargument name="text" type="string" required="no" hint="string, which can include simple variable, but not complex variables such as arrays."><!---
	---><cfargument name="type" type="string" required="no" default="Information"  hint="Corresponds to the cflog type attribute:
- Information
- Warning
- Error
- Fatal Information"><!---
	---><cfargument name="category" type="string" required="no"  hint="string name for identifying trace groups"><!---
	---><cfargument name="inline" type="boolean" required="no" default="#false#" hint="if true displays trace code in line on the page in the location of the trace function, 
addition to the debugging information output."><!---
	---><cfargument name="abort" type="boolean" required="no" default="#false#" hint="stops further processing of the request."><!---
	---><cftrace attributeCollection="#arguments#"><!---
	---></cffunction>

<cfset shortVersion=left(server.lucee.version,3)>
<cfif (shortVersion EQ "3.3" and server.lucee.version LT "3.3.0.004") or server.lucee.version LT "3.2.1.005">
	<cfset trace=oldTrace>
</cfif>