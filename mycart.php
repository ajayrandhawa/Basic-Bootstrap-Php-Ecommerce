<?php
session_start();
error_reporting(E_ALL);
include('config.php');

if (isset($_SESSION['user'])) {
    $user = $_SESSION['user'];

    if (isset($_GET['rem'])) {
        $productid = $_GET['rem'];
        $sql = "DELETE FROM cart WHERE id = (:productid)";
        $query = $db->prepare($sql);
        $query->bindParam(':productid', $productid, PDO::PARAM_STR);
        $query->execute();
    }

    // FECTH PRODUCTS
    $sql = "SELECT cart.id,products.title,products.price,products.img FROM cart INNER JOIN products ON products.id = cart.productid WHERE cart.user=:user";
    $query = $db->prepare($sql);
    $query->bindParam(':user', $user, PDO::PARAM_STR);
    $query->execute();
    $itemCount = $query->rowCount();
    $results = $query->fetchAll(PDO::FETCH_OBJ);

    // TOTAL
    $sql = "SELECT SUM(products.price) as total FROM cart INNER JOIN products ON products.id = cart.productid WHERE cart.user=:user";
    $query = $db->prepare($sql);
    $query->bindParam(':user', $user, PDO::PARAM_STR);
    $query->execute();
    $total = $query->fetch(PDO::FETCH_OBJ);
}



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
    <script>
        if (typeof window.history.pushState == 'function') {
            window.history.pushState({}, "Hide", '<?php echo $_SERVER['PHP_SELF']; ?>');
        }
    </script>
</head>

<body>
    <section>
        <?php include('./inc/header.php'); ?>

        <?php if (strlen(isset($_SESSION['login']) == 0)) { ?>
            <div class="container mt-5 p-5">
                <h3 class="p-5 m-5 text-center">Please Login To Check Cart</h3>
            </div>
        <?php } else { ?>
            <div class="container mt-5 p-5">
                <div class="clearfix">
                    <h3 class="py-4 float-left">My Cart</h3>
                    <h3 class="py-4 float-right">Total : <?php echo CURRENCY; ?> <?php echo $total->total; ?></h3>
                </div>

                <?php
                if ($query->rowCount() > 0) {
                    foreach ($results as $result) {       ?>
                        <hr>
                        <div class="row">
                            <div class="col-3">
                                <img class="cart-img" src="./img/products/<?php echo $result->img; ?>">
                            </div>
                            <div class="col-3">
                                <h5><?php echo $result->title; ?></h5>
                            </div>
                            <div class="col-3">
                                <h5><?php echo CURRENCY; ?> <?php echo $result->price; ?></h5>
                            </div>
                            <div class="col-3">
                                <h5><a href="mycart.php?rem=<?php echo $result->id; ?>">Remove</a></h5>
                            </div>
                        </div>

                <?php }
                } ?>
                <hr>

                <?php if($itemCount > 0){ ?> 
                <div class="row p-4">
                    <div class="col-6">
                        <h3>Proceed to Checkout</h3>
                    </div>
                    <div class="col-6 text-right">
                    <a href="checkout.php" class="btn btn-primary">Checkout</a>
                    </div>
                </div>
                <?php } ?>

                <?php if($itemCount == 0){ ?> 
                <div class="row p-4">
                    <div class="col-12 text-center">
                        <h3>Cart Empty</h3>
                    </div>
                </div>
                <?php } ?>

            </div>
        <?php } ?>

        <?php include('./inc/footer.php'); ?>
    </section>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>

</html>