<html>
<head><title>Registration Form</title>
<link rel="stylesheet" type="text/css" href="bootstrap.main.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="javascript/insert.js"></script>
</head>
<body>
<div class="container">
<div class="col-lg-8 m-auto">
    
    <form id="myform" class="form-horizontal" action="fetch_data1.php" method="post" enctype="multipart/form-data">
                    <?php
                    require 'connection3.php';
                    $id = $_GET['id'];
                    $rows = mysqli_fetch_assoc(mysqli_query($conn,"SELECT * FROM students WHERE id = $id"));
                    ?>
        <div class="form-group">
            <input type="hidden" id="id" value="<?php echo $rows['id'];  ?>">
            <label class="control-label col-sm-2" for="name">Name:</label>
            <div class="col-sm-10">
               <input type="text" class="form-control" id="name" name="name" value="<?php echo $rows['name'];?>" placeholder="Enter name" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="date">Date of birth:</label>
            <div class="col-sm-9">
               <input type="date" class="form-control" id="date" name="dob" placeholder="Enter D-O-B" value="<?php echo $rows['dob'];?>" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="gender">Gender:</label>
                <div class="col-sm-9">
            <div class="radio">
                <label><input type="radio" name="optradio" value="Male" <?php if( $rows['gender'] == "Male") echo "selected";?>>Male</label>
            </div>
            <div class="radio">
                <label><input type="radio" name="optradio" value="Female" <?php if( $rows['gender'] == "Female") echo "selected";?>>Female</label>
            </div>
                </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="file">Profile picture</label>
            <div class="col-sm-9">
                <input type="file" class="form-control" id="file" name="profile" value="<?php echo $rows['profile'];?>" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">Select subject:</label>
            <div class="col-sm-9">
            <select class="form-control" name="sub[]" multiple value="<?php echo $rows['subject'];?>" required>
                <option>English</option>
                <option>Marathi</option>
                <option>Hindi</option>
                <option>Gujarathi</option>
            </select>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">Address:</label>
            <div class="col-sm-9">
                <textarea class="form-control" rows="2" id="comment" name="add" value="<?php echo $rows['address'];?>" required></textarea>
            </div>    
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="email">Email-id:</label>
            <div class="col-sm-9">
                <input type="email" class="form-control" id="email" name="email" value="<?php echo $rows['email_id'];?>" placeholder="Enter Email-id" required>
            </div>
        </div>    
        <div class="form-group">
            <label class="control-label col-sm-2" for="pwd">Password:</label>
            <div class="col-sm-9">
                <input type="password" class="form-control" id="pwd" name="pass" value="<?php echo $rows['password'];?>" placeholder="Enter password" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="conpwd">Confirm Password:</label>
            <div class="col-sm-9">
                <input type="password" class="form-control" id="conpwd" name="conpass" value="" placeholder="Enter password" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="mob">Mobile-no:</label>
            <div class="col-sm-9">
                <input type="text" class="form-control" id="mob" name="mobile" value="<?php echo $rows['mobile_no'];?>" placeholder="Enter Mobile No." required>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <div class="checkbox">
                <label><input type="checkbox" name="check" value="<?php echo $rows['terms'];?>" required>&nbsp;&nbsp;I Agree terms and Conditions</label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="button" onclick="submitData('edit');">Updated</button>
            </div>
        </div>
    </form> 
</div>
</div>
</body>
</html>