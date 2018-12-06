function sign_ out() 
{ 
    $("#loading"). show(); 
    /* login */
    $.get(" log_ in",{ logout:" True"}, 
        
    function(){ 
       
        window. location=""; 
    
    });
}

