<?php
session_start();
error_reporting(0);
include('config.php');

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TrendZ | Online Store for Latest Trends</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="./css/style.css">
</head>
<body>

    <section>
        <?php include('./inc/header.php') ;?> 
       
            <div class="container my-5">
                <h3 class="py-4">Terms & Conditions</h3>
                <div class="row">

                <p>The Intellectual Property disclosure will inform users that the contents, logo and other visual media you created is your property and is protected by copyright laws.</p>
                
                <p>A Termination clause will inform that users' accounts on your website and mobile app or users' access to your website and mobile (if users can't have an account with you) can be terminated in case of abuses or at your sole discretion.</p>
                <p>A Governing Law will inform users which laws govern the agreement. This should the country in which your company is headquartered or the country from which you operate your website and mobile app.</p>
                <p>A Links To Other Web Sites clause will inform users that you are not responsible for any third party websites that you link to. This kind of clause will generally inform users that they are responsible for reading and agreeing (or disagreeing) with the Terms and Conditions or Privacy Policies of these third parties.</p>
                <p>If your website or mobile app allows users to create content and make that content public to other users, a Content section will inform users that they own the rights to the content they have created. The "Content" clause usually mentions that users must give you (the website or mobile app developer) a license so that you can share this content on your website/mobile app and to make it available to other users.</p>

                <p>Because the content created by users is public to other users, a DMCA notice clause (or Copyright Infringement ) section is helpful to inform users and copyright authors that, if any content is found to be a copyright infringement, you will respond to any DMCA takedown notices received and you will take down the content.</p>

                <p>A Limit What Users Can Do clause can inform users that by agreeing to use your service, they're also agreeing to not do certain things. This can be part of a very long and thorough list in your Terms and Conditions agreements so as to encompass the most amount of negative uses.
                Here's how 500px lists its prohibited activities:</p>

                <p>500px Terms of Use: Excerpt of User Conduct clause - Prohibited activities</p>

                <p>You can also use your T&C to inform users aboutÂ trademarks, design rights and other intellectual property rights:</p>

                <p>500px Terms of Use: Trademarks clause</p>

                <p>If you operate a SaaS app, a "Termination clause" will be very important. The relationship with your customers can end for any number of reasons, from a customer changing careers to a new and better SaaS option becoming available or just general dissatisfaction with a service.</p>

                <p>But as the owner of the app, you should have   </p>  
              </div>
        </div>
    
        <?php include('./inc/footer.php') ;?> 
    </section>
        
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>