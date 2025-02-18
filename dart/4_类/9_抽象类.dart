/*
* .抽象类使用abstract 关键子修饰的类
* .抽象类的作用是充当普通类的模板，约定一些必要的属性和方法
* .抽象方法是指没有方法体的方法
*     .抽象类中一般都有抽象方法，也可以没有抽象方法
*     .普通类中不能有抽象方法
* .抽象类不能被实例化（不能被new）
* .抽象类可以被普通类继承（extends）
*     .如果普通类继承抽象类，必须实现抽象类中所有的抽象方法
* .抽象类还可以充当接口被实现（implements）
*     .如果把抽象类当接口实现的话，普通类必须实现抽象类里面定义的所有属性和方法。
* */

//声明抽象类
abstract class Phone{
  //声明抽象方法，不能有方法体

  //手机的处理机
  void processor();
  //手机的摄像头
  void canera();
  //抽象类可以有普通方法
  void printInfo(){
    print("我是抽象类中的一个普通方法");
  }
}
//子类继承抽象类，来实现抽象类
class XiaoMi extends Phone{
  //普通类继承了抽象类，就必须实现抽象类中的所有方法
  @override
  void canera() {
    print("三星摄像头");
  }

  @override
  void processor() {
    print("晓龙888");
  }
  //普通类不能有抽象方法
  //void aaa();
}
abstract class Person{
  //抽象类可以没有抽象方法
}
void main(){
  XiaoMi xiaoMi = XiaoMi();
  xiaoMi.processor();
  xiaoMi.canera();
  xiaoMi.printInfo();
}