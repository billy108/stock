var app = angular.module("myCtrl", ["ngRoute"]);

app.controller("startCtrl", function ($scope, $http) {
  $scope.allOrderList = {};
  //获取商品信息
  $http.get("./data/getList.php").success(function (data) {
    $scope.productList = data;
  });
  //获取订单信息
  $http.get("./data/getOrderList.php").success(function (data) {
     $scope.orderList = data;
    for(var i=0;i<data.length;i++){
      sortOrderList(data[i],$scope.allOrderList);
    }
    console.log($scope.allOrderList);
  });
});































//查看每个订单的日期，根据日期年月，把订单添加到allOrderList
function sortOrderList(order, allOrder){
  var orderDate = order.order_time.split("-");
  //得到订单的年份
  var orderYear = orderDate[0];
  //得到订单的月份
  var orderMonth = orderDate[1];

  //建立allOrderList的结构
  //
  //var allOrderList = {
  //  "2016":{
  //    "01":{},
  //    "02":{},
  //  },
  //  "2017":{
  //    "01":{},
  //    "02":{},
  //    "03":{},
  //    "04":{},
  //  }
  //};

  order_product_id = order.ean;
  order_product_num = Number(order.sold_quantity);

  //判断是否有订单的年份
  if(allOrder.hasOwnProperty(orderYear)){
    //判断是否有这个订单的月份，并添加订单
    if(!allOrder[orderYear].hasOwnProperty(orderMonth)){
      (allOrder[orderYear])[orderMonth] = {};
    }else{
      if((allOrder[orderYear])[orderMonth].hasOwnProperty(order_product_id)){
        ((allOrder[orderYear])[orderMonth])[order_product_id] += order_product_num;
      }else{
        ((allOrder[orderYear])[orderMonth])[order_product_id] = order_product_num;
      }
    }
  }else {
    allOrder[orderYear] = {};
    (allOrder[orderYear])[orderMonth] = {};
    ((allOrder[orderYear])[orderMonth])[order_product_id] = order_product_num;
  }
}