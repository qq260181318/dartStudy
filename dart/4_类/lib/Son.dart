import 'Father.dart';
class Son extends Father{
  //通过super 继承父类的普通构造函数
  //Son(String job):super(job);
  //通过super 继承父类的命名构造函数
  Son(String job):super.origin(job);

  //子类会覆写父类的同名方法
  @override
  say(){
    //通过super 调用父元素的非私有内容

    super.say();
    print("我是刘禅");
  }
  String get Job{
    // 通过super 访问父类的属性
    return super.job;
  }
}