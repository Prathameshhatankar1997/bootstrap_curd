$(document).ready(function(){

    var form=$('#myform');

    $('#submit').click(function(){

        $.ajax({

            url:form.attr("action"),
            
            type:'post',

            data:$("#myform input").serialize(),

            success:function(data)
            {
                console.log(data);
            }

        });
    });
});