/*
* .根据类的先后顺序，可以将类分成父类和子类
* .子类通过extends关键字继承父类
*     .继承后，子类可以使用父类中，可见的内容（属性和方法）
* .子类中，可以通过@override元数据来标记"覆写"方法
*     .“覆写”方法：子类中于父类中同名的方法
* .子类中，可以通过super关键字来引用父类中，可见的内容
*     .属性
*     .方法（普通构造函数，命名构造函数）
* */

import 'lib/Son.dart';
void main(){
  Son son = Son("黄帝");
  son.say();
  print(son.name);
  print(son.Job);
  //print(son.momey);子类不能访问父类私有的属性和方法
}