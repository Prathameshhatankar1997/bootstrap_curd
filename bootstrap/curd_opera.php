<?php
include("connection3.php");

error_reporting();

?>
<html>
<head><title>Registration Form</title>
<link rel="stylesheet" type="text/css" href="bootstrap.main.css">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h1 class="text-primary text-uppercase text-center">AJAX CRUD OPERATION<h1>

        <!-- Button to Open the Modal -->
    <div class="d-flex justify-content-end " >    
        <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal">Open modal</button>
    </div>
    <h2 class="text-warning">All Records</h2>
    <div id="records_contant">
    </div>

        <!-- The Modal -->
    <div class="modal" id="myModal">
      <div class="modal-dialog">
        <div class="modal-content">

      <!-- Modal Header -->
    <div class="modal-header">
       <h4 class="modal-title">Ajax Curd Operation</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
    </div>

      <!-- Modal body -->
    <div class="modal-body">
    <form id="mmyform" class="form-horizontal" action="backend.php" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label>Name:</label>
            <input type="text" name="name" id="name" class="form-control" placeholder="Name">
        </div> 
        <div class="form-group">
            <label>Email-ID:</label>
            <input type="email" class="form-control" id="email" name="email" placeholder="Enter Email-id">
        </div>  
        <div class="form-group">
            <label>Date of birth:</label>
            <input type="date" class="form-control" id="date" name="date" placeholder="Enter date of birth">
        </div>  
        <div class="form-group">
            <label>Gender:</label>
            <label><input type="radio" name="gender" value="Male" id="gender" required>Male</label>
            <label><input type="radio" name="gender" value="Female" id="gender" required>Female</label>
        </div>
        <div class="form-group">
            <label>Subjects:</label>
            <select class="form-control" name="sub" multiple id="subject" required>
                <option>English</option>
                <option>Marathi</option>
                <option>Hindi</option>
                <option>Gujarathi</option>
            </select>
        </div>
        <div class="form-group">
            <label>Address:</label>
            <textarea class="form-control" rows="2" id="addd" name="add" required></textarea>
        </div>
        <div class="form-group">
            <label>Mobile No:</label>
            <input type="number" class="form-control" id="mob" name="mobile" placeholder="Enter mobile number">
        </div>
        <div class="form-group">
            <label>Profile Picture:</label>
            <input type="file" class="form-control" id="profile" name="profile">
        </div>
        <div class="form-group">
            <label>Password:</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="Password">
        </div>
        <div class="form-group">
            <label>Confirm password</label>
            <input type="password" class="form-control" id="conpassword" name="conpassword" placeholder="Con-password">
        </div>  
        <div class="form-group">
            <input type="checkbox" name="checkb" value="1" id="checkb" required> &nbsp; &nbsp;I Agree terms and Conditions</checkbox>
        </div>       
    </div>

      <!-- Modal footer -->
    <div class="modal-footer">
        <button type="button" class="btn btn-success" data-dismiss="modal" onclick="addrecord()" name="save">Save</button>
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
    </div>
    </form>
        </div>
      </div>
   </div>
</div>
<!-- jQuery library -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>

<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

<!-- Jquery part  -->
<script>
    $(document).ready(function(){

    var form=$('#mmyform');

    $('#save').click(function(){

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
</script>    
</body>
</html>