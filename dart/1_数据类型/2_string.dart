void main(){

  /*
  *  2.String
  *       声明
  *       .单引号、双引号都可以
  *       .三个引号可以声明包含换行符的字符串
  *       正则表达式
  *           .RegExp(r'正则表达式')
  *
  * */
  //字符串
  //动态类型声明
  var name1 = "wenyi"; //双引号
  var name2 = 'lulu';   //单引号
  var hello ='''支持换行符的变量
             声明方式,单引号''';
  var hello2 ="""支持换行符的变量
             声明方式,单引号""";
  //指定类型方式声明
  String myname1 = "wenyi双引号";
  String myname2 = 'wenyi单引号';
  String hello3 ="""支持换行符的变量
             声明方式,单引号""";
  //常规操作
  //字符串拼接
  print(name1+myname1);
  //模板字符串的写法
  print("我的名字是 $name1 我喜欢 $name2 ");
  String str = "hello world";
  //字符串分割
  print(str.split(""));
  //字符串的裁切
  print("  你好漂亮  ".trim());
  //判断字符串是否为空
  print("".isEmpty);//为空返回真
  print("".isNotEmpty);//不为空返回真
  //字符串替换
  print(str.replaceAll("world", "dart"));
  //支持正则替换
  print("sdf5g4fdg4542fb1fghft96wew3".replaceAll(RegExp(r'\d+'), "_"));
  //字符串正则匹配（通过正则匹配手机好）
  var isPhone = RegExp(r'^1\d{10}$');
  print(isPhone.hasMatch("17735247338"));
  print(isPhone.hasMatch("1773524733"));

  //字符串查找
  print(str.contains("3e"));
  //字符串定位
  print(str.indexOf("e"));//从左往右查找返回索引
  print(str.lastIndexOf("e"));//从右往左查找返回索引
}