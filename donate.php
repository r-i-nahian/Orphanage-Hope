<?php

$link = mysqli_connect("localhost", "root", "", "database");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 
// Escape user inputs for security
$type = mysqli_real_escape_string($link, $_REQUEST['type']);
$ccname = mysqli_real_escape_string($link, $_REQUEST['ccname']);
$ccno = mysqli_real_escape_string($link, $_REQUEST['ccno']);
$date = mysqli_real_escape_string($link, $_REQUEST['date']);
$cvv = mysqli_real_escape_string($link, $_REQUEST['cvv']);

 
// attempt insert query execution
$sql = "INSERT INTO donate (type, ccname,ccno, date, cvv ) VALUES ('$type', '$ccname','$ccno', '$date', '$cvv' )";
if(mysqli_query($link, $sql)){
    echo "Records added successfully.";
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
 
// close connection
mysqli_close($link);
?>