/*
* .Dart中的库就是具有特定功能的模块
*     .可能包含单个文件，也可能包含多个文件
* .按照库的作者进行划分，库可以分成三类
*     .自定义库（工程师自己写的）
*     .系统库（Dart中自带的）
*     .第三方库（Dart生态中的）
* Dart生态
*     .https://pub.dev
*
*  .自定义库
*     1.通过library来声明
*     2.通过import 来引入库
*     3.通过part 和 part of 来组装库
*   .每个Dart文件默认都是一个库，只是没有使用library来显示声明
*   .Dart使用_(下划线)开头的标识符，表示库内访问可见(私有)
*   .library关键字声明的库名称建议使用：小写字母+下划线
*   .不同类型的库，引入方式不同
*       .自定义库（import '库的位置/库名称.dart'）
*       .系统库(import 'dart:库名称)
*   .引入部分库(仅引入需要的内容)
*       .包含引入（show）
*       .排除引入（hide）
*  .指定库的前缀
*     .当库名冲突时，可以通过as关键字，给库声明一个前缀
*  .延迟引入（懒加载）
*     .使用deferred as 关键字来标识需要延时加载的库
*  .通过part 与 part of 来组装库
*      1.分库通过part of 主库(与主库建立连接)
*      2.主库通过part '分库'（与主库建立连接）
*      3.使用 import '主库'
*   .第三方库
*     .来源
*         .https://pub.dev
*         .https://pub.flutter-io.cn/packages
*         .https://pub.dartlang.org/flutter
*     .使用
*         .在项目目录下的pubspec.yaml中声明第三方库（依赖）
*         .项目中引入以安装的第三方库（import 'package:xxxx/xxxx.dart'）
*
* */

//引入自定义库
import 'lib/1_自定义库.dart';
//引入系统库
import 'dart:convert';
//包含引入
import 'lib/2_包含引入.dart' show f2;
//排除引入
import 'lib/3_排除引入.dart' hide d2;
//库内方法重名，通过as关键字给库添加前缀
import 'lib/4_重名库.dart' as myfunc;
//延时引入
import 'lib/5_延时引入.dart' deferred as ys;
//引入主库
import 'lib/6_主库.dart';
//引入第三方库
import 'package:http/http.dart' as http;
void main(){
  MyCuston myCuston = new MyCuston();
  myCuston.info();
  print(jsonEncode({"name":"wenyi","age":18}));
  //包含引入,只能运行包含的内容
  f2();
  //排除引入,可运行排除的其它的内容
  d1();
  d3();
  myfunc.f2();
  //ys.q1(); 直接引入报错
  print(1);
  greet();
  print(2);
  //引入主库
  wenyi();
  hello();
  user();
  //使用第三方库
  http.get(Uri.parse("http://httpbin.org/ip")).then((reported){
    print(reported.body);
  });
}
Future greet() async{
  //加载库
  await ys.loadLibrary();
  ys.q1();
}