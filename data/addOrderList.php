<?php
    //获取传过来的数据
    $data = $_POST['json'];
//    $data = array(["2017/1/4","rugaustralia","9350329002768 ","1","300"],
//                    ["2017/1/4","rugaustralia","9350329000429 ","1","187.49"],
//                    ["2017/1/3","aussierugs","9350329002737 ","1","280"]);

    //连接数据库
    $conn = mysqli_connect("127.0.0.1", "root", "", "stock");
    //每次提交新订单时，都要先删除临时表中的数据
    $sql = "TRUNCATE temp_orderList";
    mysqli_query($conn, $sql);
    //遍历新订单
    foreach($data as $item){
        //把新订单添加进临时表中
        $sql = "insert into temp_orderList values ('$item[0]','$item[1]','".trim($item[2])."',$item[3],$item[4],'')";
        mysqli_query($conn, $sql);
        //把新订单添加进订单总表中
        $sql = "insert into orderList values ('$item[0]','$item[1]','".trim($item[2])."',$item[3],$item[4],'')";
        mysqli_query($conn, $sql);
    };
?>