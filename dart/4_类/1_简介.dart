void main(){
  /*
  * .类是通过class声明的代码段，包含属性和方法
  *     .属性：用来描述类的变量
  *     .方法：类中的函数称为类的方法
  * .对象是类的实例化结果（var obj = new MyClass()）
  *
  *       @类        @对象
  *      设计图  new  房子
  *       抽象        实例（占用空间）
  * .编程方式
  *   .面向对象编程（oop）
  *   .面向过程编程（pop）
  * */

  //实例化类，然后得到一个对象
  Person p = Person();
  //访问类中的属性
  print(p.name);
  //访问类中的方法
  p.getInfo();
}

//声明类
class Person{
  //类的属性
  String name = '张三';
  //类的方法
  void getInfo(){
    print('我是 $name');
  }
}