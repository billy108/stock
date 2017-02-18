<?php
    //获取传过来的数据
//    $data = $_POST['json'];
    $data = array(
                  ["9350329000009 ","HI001DRI01GRE1623","DRI01","RL-01","-","GREY","160x230cm ","3.68 ","印度手工","120","30","150","5","5","20.00 ","100000","12*12*160","0","15.00 ","1.00 ","Polyester","200.00 ","80.00 ","80.00 ","200.00 ","200.00 ","200.00 ","200.00 ","200.00 ","200.00 "]
                  );

    //连接数据库
    $conn = mysqli_connect("127.0.0.1", "root", "", "stock");
    //遍历新订单
    foreach($data as $item){
        //把新订单添加进临时表中
        $sql = "insert into productList values ('".trim($item[0])."','$item[1]','$item[2]','$item[3]','$item[4]','$item[5]','$item[6]',".trim($item[7]).",'$item[8]',$item[9],$item[10],$item[11],$item[12],$item[13],".trim($item[14]).",$item[15],'$item[16]',$item[17],$item[18],$item[19],'$item[20]',".trim($item[21]).",".trim($item[22]).",".trim($item[23]).",".trim($item[24]).",".trim($item[25]).",".trim($item[26]).",".trim($item[27]).",".trim($item[28]).",".trim($item[29]).")";
        echo "sql==".$sql;
        mysqli_query($conn, "set names utf8");
        mysqli_query($conn, $sql);
    };
?>