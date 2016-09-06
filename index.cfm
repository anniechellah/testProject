<html>
 <head>
 	<meta charset="utf-8" />
 	<title>Pivot Index Finder</title>
 	<script  src="https://code.jquery.com/jquery-1.12.4.min.js"   integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="   crossorigin="anonymous"></script>
 	<link rel="stylesheet" type="text/css" href="/assets/css/styles.css">
 	<script type="text/javascript" src="/assets/js/findPivotIndex.js"></script>
 </head>
 <body>
 	<section id="header">
 		<div id="header-title">
 			<p>
 				<h1>Pivot Index Finder</h1>
 			</p>
 		</div>
 	</section>
 	<section id="content-form">
 		<div id="form-element">
 			<p>
 				<label for="array-input">Enter the array as comma separated list</label>
 				<input id="array-input" type="text" placeholder="Array Values separated by comma"/>
 			</p>
 		</div>
 		<div id="form-element" class="array-place-holder">
 			<!--- While the user enters the array values, the array would be built dynamically --->
 			<table class="array-table">
			   <tr class="row">
			     <td class="array-element-1">
			     	5
			      </td>
			      <td>
			      	9
			      </td>
			      <td>
			      	7
			      	</td>
			      	<td>
			      	17
			      	</td>
			      	<td>
			      	6
			      	</td>
			      	<td>
			      	5
			      	</td>
			      	<td>
			      	4
			      	</td>
			      	<td>
			      	6
			      	</td>
			   </tr>
			</table>
 		</div>
 		<div id="form-element">
 			<p class="failure-message">
 				This Array has a pivot index, that has the sum of elements to the left hand side of pivot is equal to the sum of the elements to the right hand side of pivot
 			</p>
 			<p class="success-message">
 				This Array has a pivot index, that has the sum of elements to the left hand side of pivot is equal to the sum of the elements to the right hand side of pivot
 			</p>
 		</div>
 		<div id="form-element">
 			<p>
 				<a href="" onclick="return false;"><div id="check-pivot-index">Find Pivot</div></a>
 			</p>
 		</div>
 	</section>
 </body>
</html>
