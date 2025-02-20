
import '1_声明函数.dart';

var globalNum =100;
void main(){

 /*
 * 变量的作用域内层可以访问外层的
 * Dart中闭包的实现方式与JavaScript中完全一致
 *  .使用时机：及能重用变量，又保护变量不被污染
 *  .实现原理：外层函数被调用后，外层函数的作用域对象（ao）被内层函数引用着
 *   ，导致外层函数的作用域对象无法释放，从而形成闭包
 *
 * */
  printInfo(){
    //局部变量
    var lobalNum = 10;
    print(lobalNum);
    //内层函数访问外部变量
    print(globalNum);
  }
  printInfo();
  //print(lobalNum); 外层无法访问内层

  //闭包
  myUser(){
    var money = 1000;
    return (){
      money-=100;
      print(money);


    };
  }
  var user = myUser();
  user();
  user();
  user();
}
