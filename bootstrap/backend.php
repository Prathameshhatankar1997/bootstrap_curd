<?php
include("connection3.php");
// include("iinsert.php");
error_reporting();

extract($_POST);
// print_r($_POST);
// die();
if((isset($_POST['save'])))
{
   $nm=$_POST['name'];
   $dt=$_POST['date'];
   $ge=$_POST['gender'];

//    $pp=$_FILES['profilee']['name'];


   $filename=$_FILES["profile"]["name"];
   $tempname=$_FILES["profile"]["tmp_name"];
   $folder="gallery/".$filename;
   move_uploaded_file($tempname,$folder);
   // print_r($_POST);
   // print_r($_FILES["profilee"]);

// echo $folder;

   $ch=$_POST['checkd'];
   $sb=$_POST['subject'];
   $subject=implode(',',$sb);
   $ad=$_POST['address'];
   $em=$_POST['email'];
   $ps=md5($_POST['password']);
   $mo=$_POST['mobile'];

   $query1="SELECT * FROM students WHERE email_id='$em'";
   $data1=mysqli_query($conn,$query1);

   if(mysqli_num_rows($data1) > 0)
   {
       echo "email already exits";
   }
   else{

   $query="INSERT INTO students (`name`,`dob`, `gender`, `profile`, `terms`, `subject`, `address`, `email_id`, `password`, `mobile_no`)VAlUES('$nm','$dt','$ge','$folder','$ch','$subject','$ad','$em','$ps','$mo')";
    // echo $query;die;
   $data=mysqli_query($conn,$query);

    if($data)
   {
    echo "inserted successfully";
   //  header(location:iinsert.php);
//    header(location:curd_opera.php);
   }
   else
   {
    echo "failed to insert";
   }
   }
}

?>