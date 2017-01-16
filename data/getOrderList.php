<?php
    //连接数据库
    $conn = mysqli_connect("127.0.0.1", "root", "", "stock");

    //获取salesStatistics表里所有的字段
    $sql = "SHOW COLUMNS FROM salesStatistics";
    $array = [];
    mysqli_query($conn, "set names utf8");
    $result = mysqli_query($conn,$sql);
    while($row1=mysqli_fetch_array($result,MYSQL_ASSOC))   {
    $array[]=$row1[Field];
    }

    $sql1 = "select order_time, ean, sold_quantity from orderList";
    mysqli_query($conn, "set names utf8");
    $result_orderList = mysqli_query($conn, $sql1);

    $orderList = [];
    while ($row = mysqli_fetch_array($result_orderList, MYSQL_ASSOC)) {
        //获取订单的年月
        $date = "d".substr($row["order_time"], 0, 4).substr($row["order_time"], 5, 2);//d201701
        //获取订单的EAN
        $ean = $row['ean'];
        //获取订单的销量
        $sales = $row['sold_quantity'];
       //判断salesstatistics表里是否有$data字段
       if(in_array($date,$array)) {
            //把数据插入salesstatistics表里
            $insert_order = "insert into salesStatistics(ean) values ($ean)";
            mysqli_query($conn, $insert_order);

            $select_order = "select $date from salesStatistics where ean=$ean";
            $my = mysqli_query($conn, $select_order);
            while($row = mysqli_fetch_array($my, MYSQL_ASSOC)){
                $old_sales = $row[$date];
                $sales = $sales + $old_sales;
            }

            $update_order = "update salesStatistics set $date = $sales where ean=$ean";
            mysqli_query($conn, $update_order);
       }else{
            //添加日期的新列并把数据插入salesstatistics表里
            $alert_date_col = "alter table salesStatistics add $date varchar(10) default 0";
            mysqli_query($conn, "set names utf8");
            mysqli_query($conn, $alert_date_col);

            $insert_order = "insert into salesStatistics(ean) values ($ean)";
            mysqli_query($conn, $insert_order);

            $select_order = "select $date from salesStatistics where ean=$ean";
            $my = mysqli_query($conn, $select_order);
            while($row = mysqli_fetch_array($my, MYSQL_ASSOC)){
                $old_sales = $row[$date];
                $sales = $sales + $old_sales;
            }

            $update_order = "update salesStatistics set $date = $sales where ean=$ean";
            mysqli_query($conn, $update_order);
       }

    }
//    echo json_encode($orderList);
?>
