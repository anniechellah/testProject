$(document).ready(function(){
	
	$('.success-message').hide();
	$('.failure-message').hide();

		$('#array-input').on('keyup',function(){
			var arrayList = $('#array-input').val();
			var tempArray = new Array();
			tempArray = arrayList.split(',');

			populateArrayTable(tempArray);
		})

		$('#check-pivot-index').on('click',function(){

			 $arrayList = $('#array-input').val();

			$.ajax({
				type:'POST',
				dataType:'JSON',
				url:'/services/findPivotIndexService.cfc',
				data:{
					method:'checkIfPivotIndexIsAvailable',
					inputArrayList: $arrayList
				},
				success:function(data){

					if(data > 0){

						$('.array-element-'+(data-1)).addClass("found-pivot-index");
						$('.success-message').show();
						$('.failure-message').hide();
					}else{

						$('.success-message').hide();
						$('.failure-message').show();
					}
				}
			})

		})

		function populateArrayTable(tempArray){

			var tableHtml = '<tr class="row">';
			for(i=0;i<tempArray.length;i++){
				tableHtml += '<td class="array-element-'+i+'">'+
			     	+tempArray[i]+
			      '</td>';
			}
			tableHtml +='</tr>';
			$('.array-table').html(tableHtml);

		}
});