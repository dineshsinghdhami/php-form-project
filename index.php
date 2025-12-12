<?php
$insert = false;
if(isset($_POST['Name'])){
//set connection variables
$server = "localhost";
$username = "root";
$password = "";
$db = "trip"; 

// Connect to DB
$con = mysqli_connect($server, $username, $password, $db);
//check for connection success
if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
}

// Only run when the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    //collect post variables
    $Name = $_POST['Name'];
    $Age = $_POST['Age'];
    $Gender = $_POST['Gender'];
    $Email = $_POST['Email'];
    $Phone = $_POST['Phone'];
    $desc = $_POST['desc'];

    // SQL Query
    $sql = "INSERT INTO `trip` (`Name`, `Age`, `Gender`, `Email`, `Phone`, `desc`, `date`)
            VALUES ('$Name', '$Age', '$Gender', '$Email', '$Phone', '$desc', current_timestamp())";


//execute the querey
    if ($con->query($sql) === TRUE) {

        $insert = true;  //flag for successful insertion
    
    } else {
        echo "Error: $sql <br> $con->error";
    }
    $con->close();  //close the database connection
    
}
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PORK Party Form</title>
    <link rel="stylesheet" href="style.css">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;400;700&family=Sriracha&display=swap" rel="stylesheet">
</head>

<body>
    <img class= "bg" src="nast.jpg" alt="nast.jpg">
    <div class="container">
        <h1>Welcome to PORK Party form</h1>
        <p>enter your detail and submit this form to confirm your participation in the Party</p>
        <?php
        if($insert == true){
        echo"<p class='SubmitMsg'>Thanks for submitting your detail. we are hapy to see you joning with us.</p>";
        }

        ?>
<form action="index.php" method="post">

    <input type="text" name="Name" id="Name" placeholder="Enter Your Name" 
           pattern="[A-Za-z\s]{2,}" title="Name should contain at least 2 letters" required>


    <input type="number" name="Age" id="Age" placeholder="Enter Your Age" 
           min="1" max="120" title="Age must be between 1 and 120" required>


    <select name="Gender" id="gender" required>
        <option value="" disabled selected>Gender</option>
        <option value="Male">Male</option>
        <option value="Female">Female</option>
        <option value="Other">Other</option>
    </select>


  
    <input type="email" name="Email" id="email" placeholder="Enter Your Email" 
           title="Enter a valid email address" required>

    <input type="tel" name="Phone" id="phone" placeholder="Enter Your Phone" 
           pattern="[0-9]{10}" title="Enter a 10-digit phone number" required>

    <textarea name="desc" id="desc" cols="30" rows="10" placeholder="Enter any other information" 
              minlength="5" maxlength="500" title="Please enter between 5 and 500 characters" required></textarea>

    <button class="btn">Submit</button>
</form>
    </div>
    </body>
</html>

