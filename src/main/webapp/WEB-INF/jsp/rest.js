$(document).ready(function () {
 
$("#send").on("submit", function(){ 
$.ajax({
        url: '/klt/rest/rest/age/', 
        type: 'GET',
        dataType: "json",
        data:$("#send").serialize(),
        success: function(xml) {
            console.log(xml);
            $(xml).find('User').each(function(){
            	   $(this).find("id").each(function(){
                       var id = $(this).text();
                       console.log(id);
                       alert("Deleted the user with id "+id);
                   });
               });
              
           }
       });
      return true;
    })
   });