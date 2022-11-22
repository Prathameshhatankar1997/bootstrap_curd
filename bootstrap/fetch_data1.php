<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Index</title>
   
</head>
<body>
    <h1>User Data</h1>
    <table border=1>
        <tr>
                <th>Id_no.</th>
                <th>Name</th>
                <th>D-O-B</th>
                <th>Gender</th>
                <th>Profile</th>
                <th>Terms</th>
                <th>Subject</th>
                <th>Address</th>
                <th>Email-id</th>
                <th>Password</th>
                <th>Mobile No</th>
                <th>Operations</th>
        </tr>
        <?php
        require 'connection3.php';
        $rows = mysqli_query($conn, "SELECT * FROM students");
        $i = 1;
?>
<?php foreach($rows as $row) :  ?>
<tr id = <?php echo $row["id"]; ?>>
<td><?php echo $i++; ?></td>
<td><?php echo $row["name"]; ?></td>
<td><?php echo $row["dob"]; ?></td>
<td><?php echo $row["gender"]; ?></td>
<td><img src='<?php echo $row["profile"]; ?>' height=100 width=100></td>
<td><?php echo $row["terms"]; ?></td>
<td><?php echo $row["subject"]; ?></td>
<td><?php echo $row["address"]; ?></td>
<td><?php echo $row["email_id"]; ?></td>
<td><?php echo $row["password"]; ?></td>
<td><?php echo $row["mobile_no"]; ?></td>

<td>
<a href="edituser.php?id=<?php echo $row['id']; ?>">Edit</a>
<button onclick="submitData(<?php echo $row['id']; ?>);">Delete</button>
</td>
</tr>

    <?php endforeach;  ?>
</table>
<br>

<a href="adduser.php">Add User</a>

</body>
</html>