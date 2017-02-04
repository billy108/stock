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
  var txt = $("#text_addOrderList").val();
  //内容不为空，异步提交内容
  if(txt.length != 0){
    $.post(
      "./data/addOrderList.php",
      txt,
      function (data) {
        console.log(data);
        //隐藏addOrderList界面
        $("#container").hide();
      }
    , "json");
  }else{
    confirm("请填写内容！")
  }
});

