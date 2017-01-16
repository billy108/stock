<?php
    $conn = mysqli_connect("127.0.0.1", "root", "", "stock");

    $sql = "select * from products";
    mysqli_query($conn, "set names utf8");
    $result_productList = mysqli_query($conn, $sql);

    $productList = [];
    while($row = mysqli_fetch_array($result_productList, MYSQL_ASSOC)){
        $productList[] = $row;
    }

    echo json_encode($productList);
?>
