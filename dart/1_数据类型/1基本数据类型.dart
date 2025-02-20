/*
* 语法基础--变量
*   .变量是一个引用，Dart万物皆对象，变量存储的是对象的引用
*   .声明变量
*       .明确指定类型：int age = 18;
*       .不明确类型：var age = 18; 或 dynamic age = 148;
*   .变量名大小写敏感（age与Age是两个不同的变量）
*   .变量的默认值是null
*   .Dart变量的值不会进行隐式转换（null不会自动转成false）
* 语法基础--常量
*   .const age = 18;
*   .final age = 18;
*  .const与final 的区别
*       .const time = DateTime.now(); //报错-无法将运行时的值分配给const变量
*       .final time = DateTime.now(); //成功-可以将运行时的值分配给final
*       --const 只能读取编译是给的值，final可读取运行时给的值
* 数据类型：
*         1.Number
*                 .num数字类型（既可以是整数，也可以是小数）
*                 .int表示整数（必须是整数）
*                 .double表示浮点数（既可以是整数，也可以是小数）
*                 常用api
*                   https://api.dart.cn/stable/datr-core/num-class.html
*         2.String
*                 声明
*                   .单引号、双引号都可以
*                   .三个引号可以声明包含换行符的字符串
*                 正则表达式
*                   .RegExp(r'正则表达式')
*         3.Boolean
*         4.List
*         5.Set
*         6.Map
*         7.其它
*
* */

void main(){
  //变量声明
  var age = 18;
  print(age);
  //指定数据类型的方式声明变量
  String name = "wenyi";
  print(name);
  //动态方式声明变量
  //dynamic myname = "lisi";
  dynamic myname = 16;
  print(myname);
  //变量的默认值
  var defaultName;
  print(defaultName);//输出null
  //变量名大小写敏感
  var Aeg = 30;
  print(age);
  print(Aeg);
  //常量
  const n1 = 1;
  //n1=2;//报错，常量声明后不能被修改
  print(n1);
  final n2 =2;
  print(n2);






}

