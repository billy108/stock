<?php
    $conn = mysqli_connect("127.0.0.1", "root", "", "stock");

    $sql1 = "select * from orderList";
    mysqli_query($conn, "set names utf8");
    $result_orderList = mysqli_query($conn, $sql1);

    $orderList = [];
    while ($row = mysqli_fetch_array($result_orderList, MYSQL_ASSOC)) {
        $orderList[] = $row;
    }
    echo json_encode($orderList);
?>
