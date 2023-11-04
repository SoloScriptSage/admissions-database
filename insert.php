<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $servername = "127.0.0.1";
    $username = "root";
    $password = "";
    $dbname = "admissionsdatabase";

    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $LastName = $_POST["LastName"];
    $FirstName = $_POST["FirstName"];
    $MiddleName = $_POST["MiddleName"];
    $DateOfBirth = $_POST["DateOfBirth"];
    $Address = $_POST["Address"];
    $PhoneNumber = $_POST["PhoneNumber"];
    $Email = $_POST["Email"];
    $Gender = $_POST["Gender"];
    $Nationality = $_POST["Nationality"];
    
    $Photo = $_FILES["Photo"]["tmp_name"];
    if (!empty($Photo)) {
        $Photo = file_get_contents($Photo);
    } else {
        $Photo = null;
    }

    // Insert data into the database
    $sql = "INSERT INTO applicants (LastName, FirstName, MiddleName, DateOfBirth, Address, PhoneNumber, Email, Gender, Nationality, Photo) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("sssssssssb", $LastName, $FirstName, $MiddleName, $DateOfBirth, $Address, $PhoneNumber, $Email, $Gender, $Nationality, $Photo);
    
    if ($stmt->execute()) {
        echo "Data inserted successfully.";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
    
    // Close the database connection
    $stmt->close();
    $conn->close();
}
?>
