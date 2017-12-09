<?php

$link = mysqli_connect("localhost", "root", "", "database");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 
// Escape user inputs for security
$fathers_name = mysqli_real_escape_string($link, $_REQUEST['fathers_name']);
$mothers_name = mysqli_real_escape_string($link, $_REQUEST['mothers_name']);
$fathers_nid = mysqli_real_escape_string($link, $_REQUEST['fathers_nid']);
$mothers_nid = mysqli_real_escape_string($link, $_REQUEST['mothers_nid']);
$mobile = mysqli_real_escape_string($link, $_REQUEST['mobile']);
$address = mysqli_real_escape_string($link, $_REQUEST['address']);
$email = mysqli_real_escape_string($link, $_REQUEST['email']);
$orphanages_name = mysqli_real_escape_string($link, $_REQUEST['orphanages_name']);
$orphanages_id = mysqli_real_escape_string($link, $_REQUEST['orphanages_id']);
$manager_name = mysqli_real_escape_string($link, $_REQUEST['manager_name']);
 
// attempt insert query execution
$sql = "INSERT INTO adoption (fathers_name, mothers_name, fathers_nid, mothers_nid, mobile, address, email, orphanages_name, orphanages_id,manager_name) VALUES ('$fathers_name', '$mothers_name', '$fathers_nid', '$mothers_nid', '$mobile','$address', '$email', '$orphanages_name', '$orphanages_id', '$manager_name' )";
if(mysqli_query($link, $sql)){
    echo "Records added successfully.";
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
 
// close connection
mysqli_close($link);
?>