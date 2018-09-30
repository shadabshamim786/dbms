$(function(){
	
	
	switch(menu){
	
		case 'ABOUT':
			$('#about').addClass('active');
			break;
		case 'CONTACT':
			$('#contact').addClass('active');
			break;	
		case 'AllStuffs':
			$('#product').addClass('active');
			break;
		default:
			$('#home').addClass('active');
			break;
	}
	
	
	var	$table=$('#allporducttable');
	
	if($table.length){
		
		var fetch = '';
		if(window.categoryId == ''){
			fetch=window.contextRoot + '/json/data/all/stuffs';
			
		}
		else
			{
			fetch=window.contextRoot + '/json/data/category/' + window.categoryId + '/stuffs';
			}
		$table.DataTable({lengthMenu:[[5,10,20,50,-1],['5 Records','10 Records','20 Records','50 Records','ALL']],
			pageLength:10, 
			ajax:{
				url:fetch,
				dataSrc:''
			},
			columns:[
				{
					data: 'id',
					mRender : function(data, type, row) {

						return '<img src="' + window.contextRoot
								+ '/resources/images/prod' + data
								+ '.jpg" class="datatableimg" />';
						}
				},
				{
					data:'name'
				},
				{
					data:'brand'
				},
				{
					data:'price'
						
				},
				{
					data:'quantity',
						mRender:function(data,type,row)
						{
							if(data<1)
								{return '<span style="color:red">Out Of Stock</span>';}
							return data;
						}
				},
				{
					data: 'id',
					mRender: function(data,type,row){
						var str='';
						str+='<a href="'+window.contextRoot+'/show/'+data+'/stuff">View</a> ';
						if(row.quantity>0){
						str+='<a href="'+window.contextRoot+'/cart/add/'+data+'/stuff">Add to Cart</a>&#160';
						}
						return str;
					}
				}
			]
			})
		
	}
	
	
});