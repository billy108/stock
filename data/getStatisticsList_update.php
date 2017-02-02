<?php
    //读取orderList表的所有数据，更新数据到salesStatistics表里，并返回查询结果

    //连接数据库
    $conn = mysqli_connect("127.0.0.1", "root", "", "stock");
    //获取传到服务器的数据
    //$months = $_POST['currentTime'];
    //判断当前月份是否存在在salesstatistics表里，没有则把当前月份生成字段加入
    //获取salesStatistics表里所有的字段
    $sql = "SHOW COLUMNS FROM salesStatistics";
    $array = [];
    mysqli_query($conn, "set names utf8");
    $result = mysqli_query($conn,$sql);
    while($row=mysqli_fetch_array($result,MYSQL_ASSOC))   {
    $array[]=$row['Field'];
    }
    //查询orderList表
    $sql1 = "select order_time, ean, sold_quantity from temp_orderList";
    mysqli_query($conn, "set names utf8");
    $result_orderList = mysqli_query($conn, $sql1);
    while ($row = mysqli_fetch_array($result_orderList, MYSQL_ASSOC)) {
        //获取订单的年月
        $date = "d".substr($row["order_time"], 0, 4).substr($row["order_time"], 5, 2);//d201701
        //获取订单的EAN
        $ean = $row['ean'];
        //获取订单的销量
        $sales = $row['sold_quantity'];
       //判断salesstatistics表里是否有$data字段
       if(in_array($date,$array)) {
       //判断是否有这个EAN
       $select_order = "select $date from salesStatistics where ean=$ean";
       $my = mysqli_query($conn, $select_order);
       if(!mysqli_num_rows($my)){
        //把EAN插入salesstatistics表里
        $insert_order = "insert into salesStatistics(ean) values ($ean)";
        mysqli_query($conn, $insert_order);
       }else{
        //先查询这个EAN的原始销量，再把订单中的销量加上，赋值给$sales
        while($row = mysqli_fetch_array($my, MYSQL_ASSOC)){
           $old_sales = $row[$date];
           $sales = $sales + $old_sales;
        }
       }
            //更新这个EAN的销量
            $update_order = "update salesStatistics set $date = $sales where ean=$ean";
            mysqli_query($conn, $update_order);
       }else{
            //先把date列插入salesstatistics表里
            $alert_date_col = "alter table salesStatistics add $date varchar(10) default 0";
            mysqli_query($conn, "set names utf8");
            mysqli_query($conn, $alert_date_col);
            //再把EAN插入salesstatistics表里
            $insert_order = "insert into salesStatistics(ean) values ($ean)";
            mysqli_query($conn, $insert_order);
            //先查询这个EAN的原始销量，再把订单中的销量加上，赋值给$sales
            $select_order = "select $date from salesStatistics where ean=$ean";
            $my = mysqli_query($conn, $select_order);
            while($row = mysqli_fetch_array($my, MYSQL_ASSOC)){
                $old_sales = $row[$date];
                $sales = $sales + $old_sales;
            }
            //修改EAN对应的date值
            $update_order = "update salesStatistics set $date = $sales where ean=$ean";
            mysqli_query($conn, $update_order);
       }
    }

    //查询salesStatistics和productList联表查询，并返回结果
    $result_statistics = [];
    $select_sales_statistics_all = "SELECT productlist.ean,productlist.design_id,productlist.size,productlist.supplier,salesstatistics.* FROM productlist,salesstatistics WHERE productlist.ean = salesstatistics.ean";
    $result_sales_Statistics = mysqli_query($conn, $select_sales_statistics_all);
    while($row = mysqli_fetch_array($result_sales_Statistics, MYSQL_ASSOC)){
        $result_statistics[] = $row;
    }
    echo json_encode($result_statistics);
?>
