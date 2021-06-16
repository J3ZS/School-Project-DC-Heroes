<?php 

function db_connect() // Connection to Database with $conn
{
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "dc_heroes";

    // Create connection    
    $conn = new mysqli($servername, $username, $password, $dbname);

    return $conn;
}

function htmlhead() // Header section 
{
    ?>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>DC Heroes</title>
        <link rel="stylesheet" href="css/index.css">
    </head>
    <body>
    <?php
}

function navbar() // Navbar section
{
    ?>
    <div class="header">
        <nav id="main-nav">
            <ul>
                <li><a href="index.php">Home</a></li>
            </ul>
        </nav>
    </div>
    <?php
}

function divTeams() //HTML code to display all data 
{  
    ?>
    <header id="header">
        <a href="index.php">
    </header>
    <div id="main-container">
        <div id="main-left">
        <?php
        displayTeams();
        ?>
        </div>
        <div id="main-center">
        <?php
        displayHeroes();
        ?>
        </div>
        <div id="main-right">
        <?php
        displayMember($return)
        ?>
    </div>
    <?php

}

function htmlFooter()
{
    ?>
    <footer class="footer">
            <p>Copyright &copy; <?php echo date("Y");?> DC Heroes. All rights reserved</p>
    </footer>
    <?php
}

function getTeams() //Connection to database for (teamId) + displayTeams()  
{
    $conn = db_connect();

    $teams = array();

    $teamSQL = "SELECT * from `team` ORDER BY `team`.`teamId` ASC";

    $result = $conn->query($teamSQL) or die($conn->error);

    $teams = $result->fetch_all(MYSQLI_ASSOC);

    $conn->close();

    return $teams;
}

function displayTeams() ///Guest book form HTML
{
    $teams = getTeams(); // Variable $teams from getTeams()

    echo "<h2>Teams</h2>";
    echo "<ul>\n";
    foreach($teams as $team) // Changes $teams variable to $team
    {
    ?>
    <li class="team">
        <?php
        echo "<a href=\"" . $_SERVER['PHP_SELF'] . "?teamId=" . $team['teamId']  . "\">" . $team['teamTitle']  . "</a>";
        ?>
    </li>
    <?php    
    }
    echo "</ul>\n";
}

function getHeroes($teamId = false)// Connection to database for heroes + displayHeroes()
{
    if(isset($_GET['teamId']))
    {
        $teamId = $_GET['teamId'];
    }
    elseif(isset($_GET['memberId']))
    {
        $team = getHeroByMemberId($_GET['memberId']);
        $teamId = $team['teamId'];
    }

    $conn = db_connect();

    $members = array();

    $heroesSQL = "
    SELECT *
    FROM
    `member`
    INNER JOIN
    `team`
    ON
    `member`.`teamId` = `team`. `teamId`
    WHERE
    1
    ";
    

    if($teamId)
    {
        $heroesSQL .= " AND member.teamId = " . $teamId;
    }

    $heroesSQL .= " GROUP BY `member`.`memberId`";

    $heroesSQL .= " ORDER BY team.teamTitle ASC, member.memberTitle ASC";

    $result = $conn->query($heroesSQL) or die($conn->error . "<br />" . $heroesSQL);

    $members = $result->fetch_all(MYSQLI_ASSOC);

    $conn->close();

    return $members;
}

function getHeroByMemberId($memberId)
{

    $conn = db_connect();

    $team = array();

    $getTeamSQL = "
    SELECT
    team.teamId, team.teamTitle
    FROM
    team
    JOIN
    member
    ON
    team.teamId = member.teamId
    WHERE
    member.memberId = " . $memberId;

    $result = $conn->query($getTeamSQL);

    $team = $result->fetch_assoc();

    $conn->close();

    return $team;
}

function displayHeroes()
{
    $members = getHeroes();
    //     echo "<pre>";
    // var_dump($members);
    // echo "</pre>";
    // die("line:" . __LINE__);
    if($members)
    {
        if(!isset($_GET['teamId']) && !isset($_GET['memberId'])) //When link is clicked this code allows data from the database to be shown  
        {
            echo "<h2>All Team member's</h2>";
        }
        else
        {
            echo "<h2>" . $members[0]['teamTitle'] . "</h2>";
        }
        
        foreach($members as $member) // Changes $members variable to $member
        {
            if($member['memberImage'] == "")
            {
                $memberImage = "assets/img/MissingIcon.png";
            }
            else
            {
                $memberImage = "" .$member['memberImage'];
            }
            
            ?>
            <div class="hero-card">
                <div class="hero-image">
                    <img src="<?php echo $memberImage;?>" class="memberImage" />
                </div>
                <div class="hero-info">
                    <h3><?php echo $member['memberTitle']; ?></h3>
                    <h5><?php echo $member['shortDescription']; ?></h5>
                    <a class="more-info-btn" href="<?php echo $_SERVER['PHP_SELF']; ?>?memberId=<?php echo $member['memberId']; ?>">Rate & Review</a>
                </div>
            </div>

            <?php
        }    
    }
}

function getMember($memberId = false)
{
    if(isset($_GET['memberId']))
    {
        $memberId = $_GET['memberId'];
    }

    $conn = db_connect();

    $member = array();

    $getHeroSQL = "
    SELECT * FROM member JOIN team ON member.teamId = team.teamId
    ";

    if($memberId)
    {
        $getHeroSQL .= " AND member.memberId = " . $memberId;
    }
    elseif(isset($_GET['teamId']))
    {
        $getHeroSQL .= " AND member.teamId = " . $_GET['teamId'];
    }    
    

    $result = $conn->query($getHeroSQL) or die($conn->error . "<br/>" . $getHeroSQL);

    $member = $result->fetch_all(MYSQLI_ASSOC);

    $conn->close();

    return $member;
}

function displayMember($message = false)
{
    $member = getMember();

    // echo "<pre>";
    // var_dump($member);
    // echo "</pre>";
    // die("line:" . __LINE__);

    if($member[0]['memberImage'] == "")
    {
        $memberImage = "img/main/no-photo.jpg";
    }
    else
    {
        $memberImage = "" . $member[0]['memberImage']; 
    }
    if($member)
    {
        
        echo "<h2>" . $member[0]['memberTitle'] . "</h2>";
        ?>
        <div class="hero-banner">
            <div class="star-rating">
                <div class="score width"></div>
                <div class="rating-text">
                </div>
            </div>
        </div>
        <div class="hero-image">
            <img src="<?php echo $memberImage;?>"/>
        </div>
        <h3>Info</h3>
        <?php echo nl2br($member[0]['longDescription']);?>
        <h3>Properties</h3>
        <?php echo nl2br($member[0]['heroProperties']);?>

         <?php
        $return = storeMessage();
        ?>

        <form action="index.php" method="POST" name="reviewForm">
        <?php 
        if(is_array($return))
        {

            ?>
            <ul class="errorList">
                <?php
                foreach($return as $value)
                {
                    ?><li><?php echo $value; ?></li><?php
                }
                ?>
                </ul>
                <?php
        }
        ?>
        <div class="pinfo">Reviewer's info</div>
        <script src="https://use.fontawesome.com/a6f0361695.js"></script>
        <div class="form-group">
        <div class="col-md-4 inputGroupContainer">
        <div class="input-group">
        <span class="input-group-addon"><i class="fa fa-user"></i></span>
        <input  name="firstNamelastName" id="firstNamelastName" placeholder="First and Last Name" class="form-control"  type="text" required>
            </div>
        </div>
        </div>

        <div class="form-group">
        <div class="col-md-4 inputGroupContainer">
        <div class="input-group">
        <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
            <input name="email" id="email"  placeholder="Enter your Email Address" type="email" class="form-control" required>
            </div>
        </div>
        </div>

        <div class="pinfo">Rate this Hero</div>
        

        <div class="form-group">
        <div class="col-md-4 inputGroupContainer">
        <div class="input-group">
        <span class="input-group-addon"><i class="fa fa-heart"></i></span>
        <select class="form-control" id="rating" name="rating" required> 
            <option value="1star">1</option>
            <option value="2stars">2</option>
            <option value="3stars">3</option>
            <option value="4stars">4</option>
            <option value="5stars">5</option>
            </select>
            </div>
        </div>
        </div>

        <div class="pinfo">Comment on this Hero</div>
        

        <div class="form-group">
        <div class="col-md-4 inputGroupContainer">
        <div class="input-group">
        <span class="input-group-addon"><i class="fa fa-pencil"></i></span>
        <textarea id="review" name="review" class="form-control"  rows="3" required></textarea>
        
            </div>
        </div>
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>

        <input type="hidden" name="memberId" value="<?php echo $member[0]['memberId'];?>">


        </form>
        <?php
        displayReviews($member[0]['memberId']);
    }
}

function storeMessage() ///Stores message information into database
{
    if($_SERVER['REQUEST_METHOD'] == "POST")
    {

        $Name          = trim($_POST['firstNamelastName']);
        $email         = trim($_POST['email']);

        $rating        = trim($_POST['rating']);
        $review        = trim($_POST['review']);
        
        $memberId      = $_POST['memberId'];

        $errorMessage = [];

        if($Name == "")
        {
            $errorMessage[] = "Please enter your first name and last name";
        }

        if($email == "")
        {
            $errorMessage[] = "Please enter your email address";
        }

        elseif(!filter_var($email, FILTER_VALIDATE_EMAIL))
        {
            $errorMessage[] = "This email address is not valid, please enter a valid email address";
        }

        if($rating == "")
        {
            $errorMessage[] = "Please leave a valid title";
        }

        if($review == "")
        {
            $errorMessage[] = "Please leave a valid message";
        }

        elseif(strlen($review) > 160)
        {
            $errorMessage[] = "The message provided is too long, max 160 characters!";
        }

        if(count($errorMessage) > 0)
        {
            return $errorMessage;
        }
        else
        {
            // connect to db
            $conn = db_connect();
           

            // the SQL query tpo be sent to the database
            $ratingformSQL = "
            INSERT INTO `rating`
            (
                `ratingId`,
                `memberId`, 
                `ratingDate`,
                `firstNamelastName`, 
                `email`,
                `ratingNumber`,
                `ratingReview`
            ) 
            VALUES 
            (
                null,
                '" . $memberId . "',
                NOW(),
                '" . $Name . "',
                '" . $email . "',
                '" . $rating . "',
                '" . $review . "' 
            )
            ";
            // var_dump($ratingformSQL);
            // die(" dump");
            // execute insert SQL or return a die with some errors
            $result = $conn->query($ratingformSQL) or die($conn->error . "<br >" . $ratingformSQL);
            
        }
        if($result)
        {
           // die(" Hi, i'm on line " . __LINE__);
           // everything went fine, return a succes message that data was inserted
            return array("Thanks for filling in the for,", "We look forward to your next rating!");
        }
        else
        {

            die(" Hi, i'm in File "  . __FILE__ . "  and on line " . __LINE__);
        }

        return false;
    }

    return "Please fill in your rating form";
}

function getReviews($memberId)
{
    $conn = db_connect();
    
    $reviews = array();

    $getReviewsSQL = "
    SELECT
    *
    FROM
    rating
    WHERE
    memberId = " . $memberId;

    $getReviewsSQL .= "
    ORDER BY
    ratingDate
    DESC
    ";

    $result = $conn->query($getReviewsSQL) or die($conn->error . "<br />" . $getReviewsSQL);

    $reviews = $result->fetch_all(MYSQLI_ASSOC);

    return $reviews;
}

function displayReviews($memberId)
{
    $reviews = getReviews($memberId);

    $member = getMember();

    ?>
    <h4>Reviews for <?php echo $member[0]['memberTitle']; ?></h4>
    <?php

    if(count($reviews) > 0)
    {
        foreach($reviews as $review)
        {
            ?>
            <div id="message">
            <h1><?php echo $review['firstNamelastName']; ?></h1>
            <p><?php echo $review['ratingDate']; ?></p>
            <p><?php echo $review['ratingReview']; ?></p>
            <p>Rating for this Hero: <?php echo $review['ratingNumber']; ?></p>
            </div>
            <hr>
            <?php
        }
    }
    else
    {
        echo "No reviews for " . $member[0]['memberTitle'];;

    }
}

// function getHeroRating($memberId)
// {
//     $conn = db_connect();

//     $getRatingSQL = "
//     SELECT
//     AVG(`ratingNumber`)
//     AS avgRating,
//     COUNT(`ratingNumber`)
//     AS numRating
//     FROM
//     rating
//     WHERE
//     memberId = " . $memberId;

//     $result = $conn->query($getRatingSQL) or die($conn->error . "<br />" . $getRatingSQL);

//     $rating = $result->fetch_assoc();

//     return $rating;
// }
// ?>
    