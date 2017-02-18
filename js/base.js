var app = angular.module("stock", ["ngRoute", "myCtrl"]);

app.config(function ($routeProvider) {
  $routeProvider
    .when("/", {
      templateUrl: "./view/start.html",
      controller: "startCtrl"
    });
});
//添加订单列表相关按钮操作
$("#btn_addOrderList").click(function () {
  $("#container").show();
});

$("#addList").click(function () {
  var txt = '{"json":' + $("#text_addOrderList").val() + '}';
  if(txt.length != 9){
    //内容不为空，异步提交内容
    var json = JSON.parse(txt);
    $.post(
      "./data/addOrderList.php",
      json,
      function (data) {
        console.log(data);
        //隐藏addOrderList界面
        $("#container").hide();
      }
    , "json");
  }else{
    alert("请填写内容！")
  }
});

$("#closeList").click(function () {
  //隐藏addOrderList界面
  $("#container").hide();
});
//添加商品列表相关按钮操作
$("#btn_addProducts").click(function () {
  $("#container_products").show();
});

$("#addProducts").click(function () {
  var txt = '{"json":' + $("#text_addProducts").val() + '}';
  //内容不为空，异步提交内容
  if(txt.length != 9){
    var json = JSON.parse(txt);
    $.post(
      "./data/addProducts.php",
      json,
      function (data) {
        console.log(data);
        //隐藏addOrderList界面
        $("#container_products").hide();
      }
      , "json");
  }else{
    alert("请填写内容！")
  }
});

$("#closeProducts").click(function () {
  //隐藏addOrderList界面
  $("#container_products").hide();
});

