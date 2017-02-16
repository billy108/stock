<?php
    //获取传过来的数据
//    $data = $_POST['json'];
    $data = array(["2017/1/4","rugaustralia","9350329002768 ","1","300"],
                    ["2017/1/4","rugaustralia","9350329000429 ","1","187.49"],
                    ["2017/1/3","aussierugs","9350329002737 ","1","280"]);

    //连接数据库
    $conn = mysqli_connect("127.0.0.1", "root", "", "stock");

    foreach($data as $item){
        $sql = "insert temp_orderList values ('$item[0]','$item[1]','".trim($item[2])."',$item[3],$item[4])";
        mysqli_query($conn, $sql);
    };
?>