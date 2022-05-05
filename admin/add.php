<?php
session_start();
error_reporting(0);
include("include/config.php");
if(isset($_POST['sub']))
{
 $user=$_POST['user'];
 $pass=md5($_POST['pass']);

 $q= "INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES (NULL, '$user', '$pass', '');";
    $result=mysqli_query($bd,$q);
    if(!$result)
    {
        echo "ERROR while inserting data into table";
    }
    else
    {
        echo "$user and $pass inserted into table admin successfully";
    }

}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add admins</title>
    <form action="<?php echo $_SERVER['SELF_PHP']; ?>" method="POST">

    <input type="text" name="user" placeholder="Enter admin name" required>
    <input type="password" name="pass" placeholder="*******" required>
    <input type="submit" value="Add" name="sub">
    </form>
</head>
<body>
    
</body>
</html>