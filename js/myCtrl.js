
var app = angular.module("myCtrl", ["ngRoute"]);

app.controller("startCtrl", function ($scope, $http) {
  //系统当前时间
  var currentTime = new Date().Format("yyyyMM").toString();

  //表头的月份List
  var months = [];
  $scope.head_months = [];
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
    months.push(i);
    $scope.head_months.push("d" + i.toString());
  }
  $http.get("./data/getStatisticsList_update.php").success(function (data) {
    $scope.statisticsList = data;
  });
  //获取近三个月的销售额
  $scope.nearly_3_months = [];
  for(var i = $scope.head_months.length;i>$scope.head_months.length - 4;i--){
    $scope.nearly_3_months.push("s" + $scope.head_months[i-1].substr(1));//[ "s201702", "s201701", "s201612", "s201611" ]
  }
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
