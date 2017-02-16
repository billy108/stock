var app = angular.module("stock", ["ngRoute", "myCtrl"]);

app.config(function ($routeProvider) {
  $routeProvider
    .when("/", {
      templateUrl: "./view/start.html",
      controller: "startCtrl"
    });
});

$("#btn_addOrderList").click(function () {
  $("#container").show();
});

$("#addList").click(function () {
  var txt = '{"json":' + $("#text_addOrderList").val() + '}';
  var json = JSON.parse(txt);
  //内容不为空，异步提交内容
  if(txt.length != 0){
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

