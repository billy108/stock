
var app = angular.module("myCtrl", ["ngRoute"]);

app.controller("startCtrl", function ($scope, $http) {
  //系统当前时间
  var currentTime = new Date().Format("yyyyMM");
  //当页面加载时，在start.html自动添加表头

  //表头的月份List
  $scope.monthList = [];
  for(var i = Number(statistics_start_date);i<=Number(currentTime);i++){
    var year = i.toString().substr(0, 4);
    var month = i.toString().substr(4);
    var item = {};

    if(month == "13"){
      year = (Number(year) + 1).toString();
      month = "01";
      i = Number(year + month);
    }
    item.month = i;
    item.sales = "销量";
    $scope.monthList.push(item);
  }
  //获取OrderList信息
  $http.get("./data/getStatisticsList.php").success(function (data) {
    $scope.statisticsList = data;
    console.log(data);
    // for(var i=0;i<$scope.orderList.length;i++){
    //   sortOrderList(data[i],$scope.allOrderList);
    // }
  });
  //获取商品List信息
  $http.get("./data/getList.php").success(function (data) {
    $scope.productList = data;
  });
});
































//查看每个订单的日期，根据日期年月，把订单添加到allOrderList
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
function sortOrderList(order, allOrder){
  var orderDate = order.order_time.split("-");
  //得到订单的年份
  var orderYear = orderDate[0];
  //得到订单的月份
  var orderMonth = orderDate[1];

  var order_product_id = order.ean;
  var order_product_num = Number(order.sold_quantity);

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
