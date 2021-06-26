<?php

session_start();

$documentId = $afname = $alname = $affname = $aflname = $amfname = $amlname = $gender = $mstatus = $profession = $eduqualification = 
$phonenumber = $email = $image = $birthdate = $birthplace = $country = $nationality = $documenttype = $verificationid = $document = 
$pervillage = $perpostoffice = $perpolicestation = $perpostcode = $perdistrict = $percontactnumber = $previllage = $prepostoffice = 
$prepolicestation = $prepostcode = $predistrict = $precontactnumber = $bankname = $bankbranch = $bankaccount = ""; 


//CONNECTING TO DATABASE
$myDb = mysqli_connect('localhost', 'root', '', 'mili_policy') or die("Connection to database failed");

//Saving into database
if(isset($_POST['submit']))
{
    $documentId = mysqli_real_escape_string($myDb, $_POST['documentId']);
    $afname = mysqli_real_escape_string($myDb, $_POST['afname']);
    $alname = mysqli_real_escape_string($myDb, $_POST['alname']);
    $affname = mysqli_real_escape_string($myDb, $_POST['affname']);
    $aflname = mysqli_real_escape_string($myDb, $_POST['aflname']);
    $amfname = mysqli_real_escape_string($myDb, $_POST['amfname']);
    $amlname = mysqli_real_escape_string($myDb, $_POST['amlname']);
    $gender = mysqli_real_escape_string($myDb, $_POST['gender']);
    $mstatus = mysqli_real_escape_string($myDb, $_POST['mstatus']);
    $profession = mysqli_real_escape_string($myDb, $_POST['profession']);
    $eduqualification = mysqli_real_escape_string($myDb, $_POST['eduqualification']);
    $phonenumber = mysqli_real_escape_string($myDb, $_POST['phonenumber']);
    $email = mysqli_real_escape_string($myDb, $_POST['email']);
    $image = mysqli_real_escape_string($myDb, $_POST['image']);
    $birthdate = mysqli_real_escape_string($myDb, $_POST['birthdate']);
    $birthplace = mysqli_real_escape_string($myDb, $_POST['birthplace']);
    $country = mysqli_real_escape_string($myDb, $_POST['country']);
    $nationality = mysqli_real_escape_string($myDb, $_POST['nationality']);
    $documenttype = mysqli_real_escape_string($myDb, $_POST['documenttype']);
    $verificationid = mysqli_real_escape_string($myDb, $_POST['verificationid']);
    $document = mysqli_real_escape_string($myDb, $_POST['document']);

    $pervillage = mysqli_real_escape_string($myDb, $_POST['pervillage']);
    $perpostoffice = mysqli_real_escape_string($myDb, $_POST['perpostoffice']);
    $perpolicestation = mysqli_real_escape_string($myDb, $_POST['perpolicestation']);
    $perpostcode = mysqli_real_escape_string($myDb, $_POST['perpostcode']);
    $perdistrict = mysqli_real_escape_string($myDb, $_POST['perdistrict']);
    $percontactnumber = mysqli_real_escape_string($myDb, $_POST['percontactnumber']);

    $previllage = mysqli_real_escape_string($myDb, $_POST['previllage']);
    $prepostoffice = mysqli_real_escape_string($myDb, $_POST['prepostoffice']);
    $prepolicestation = mysqli_real_escape_string($myDb, $_POST['prepolicestation']);
    $prepostcode = mysqli_real_escape_string($myDb, $_POST['prepostcode']);
    $predistrict = mysqli_real_escape_string($myDb, $_POST['predistrict']);
    $precontactnumber = mysqli_real_escape_string($myDb, $_POST['precontactnumber']);

    $bankname = mysqli_real_escape_string($myDb, $_POST['bankname']);
    $bankbranch = mysqli_real_escape_string($myDb, $_POST['bankbranch']);
    $bankaccount = mysqli_real_escape_string($myDb, $_POST['bankaccount']);

    $sql1 = "INSERT INTO `personal_info`(`documentId`, `afname`, `alname`, `affname`, `aflname`, `amfname`,
            `amlname`, `gender`, `mstatus`, `profession`, `eduqualification`, `phonenuber`, `email`, `image`, `birthdate`,
            `birthplace`, `country`, `nationality`, `documenttype`, `verificationid`, `document`)
            VALUES ('$documentId', '$afname', '$alname', '$affname', '$aflname', '$amfname', '$amlname', '$gender', '$mstatus', '$profession', 
            '$eduqualification', '$phonenumber', '$email', '$image', '$birthdate', '$birthplace', '$country', '$nationality', '$documenttype', '$verificationid', '$document')";

    $sql2 = "INSERT INTO `address_info`(`per_village`, `per_postoffice`, `per_policestation`, `per_postcode`, `per_district`, `per_phonenumber`, `pre_village`, `pre_postoffice`,
            `pre_policestation`, `pre_postcode`, `pre_district`, `pre_phonenumber`, `documentId`)
            VALUES ('$pervillage','$perpostoffice','$perpolicestation','$perpostcode','$perdistrict','$percontactnumber','$previllage','$prepostoffice','$prepolicestation',
            '$prepostcode','$predistrict','$precontactnumber','$documentId')";
    
    $sql3 = "INSERT INTO `bank_info`(`documentId`, `bankname`, `bankbranch`, `bankaccount`)
            VALUES ('$documentId','$bankname','$bankbranch','$bankaccount')";
        
        
        mysqli_query($myDb, $sql1);
        mysqli_query($myDb, $sql2);
        mysqli_query($myDb, $sql3);
        
        header('location:policy.php');
}