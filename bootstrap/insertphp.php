<?php
include("connection3.php");
// include("iinsert.php");
error_reporting();

extract($_POST);
// print_r($_POST);
// die();
if((isset($_POST['submit'])))
{
   $nm=$_POST['name'];
   $dt=$_POST['dob'];
   $ge=$_POST['optradio'];

//    $pp=$_FILES['profilee']['name'];


   $filename=$_FILES["profilee"]["name"];
   $tempname=$_FILES["profilee"]["tmp_name"];
   $folder="gallery/".$filename;
   move_uploaded_file($tempname,$folder);
   // print_r($_POST);
   // print_r($_FILES["profilee"]);

// echo $folder;

   $ch=$_POST['check'];
   $sb=$_POST['sub'];
   $sub=implode(',',$sb);
   $ad=$_POST['add'];
   $em=$_POST['email'];
   $ps=$_POST['pass'];
   $mo=$_POST['mobile'];

   $query1="SELECT * FROM students WHERE email_id='$em'";
   $data1=mysqli_query($conn,$query1);

   if(mysqli_num_rows($data1) > 0)
   {
       echo "email already exits";
   }
   else{
           $pss=md5($_POST['ps']);
   $query="INSERT INTO students (`name`,`dob`, `gender`, `profile`, `terms`, `subject`, `address`, `email_id`, `password`, `mobile_no`)VAlUES('$nm','$dt','$ge','$folder','$ch','$sub','$ad','$em','$pss','$mo')";
    // echo $query;die;
   $data=mysqli_query($conn,$query);

    if($data)
   {
    echo "inserted successfully";
   //  header(location:iinsert.php);
   header("location:fetch_data1.php");
   }
   else
   {
    echo "failed to insert";
   }
   }
}

?>