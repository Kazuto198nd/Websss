$(document).on('click', '.abc', function(){
   
  
    $.ajax({
     url:"gioithieu.php",
     method:"POST",
    
     success:function(data){
  
      $('.anh').html(data);
     
     },
    
     error: function(){
      alert('error!');
    }
    });
  
   });