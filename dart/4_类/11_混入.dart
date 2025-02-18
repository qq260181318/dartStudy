/*
* .混入（Mixin）是一段公共代码。混入有两种声明方式：
*     .将类当作混入 class MixinA{...}
*         .作为Mixin的类只能继承Object,不能继承其它类
*         .作为Mixin的类不能有构造函数
*     .使用Mixin关键字声明 mixin MixinB{...}
* .混入（Mixin）可以提高代码复用的效率，普通类可以通过 with来使用混入
*     .class MyClass with MixinA,MixinB{...}
* .使用多个混入时，后引入的混入会覆盖之前混入中的重复内容
*     .MixinA和MixinB中都有hello()方法，MyClass中会使用后引入MixinB中的hello()方法
*
* */
class Father{

}
//
//mixin class MixinA extends Father{ 报错，用作混入的类，不能继承除了Object 以为的类
//mixin class MixinA extends Object{ 不报错
mixin class MixinA{
  String name ="MixinA";
  // MixinA(this.name); 用做混入的类不能有构造函数
  void printA(){
    print("A");
  }
  void run(){
    print("A is running");
  }
}
mixin MixinB{
  String name ="MixinB";
  // MixinB(); 用做混入的类不能有构造函数
  void printB(){
    print("B");
  }
  void run(){
    print("B is running");
  }
}
class MyClass with MixinA,MixinB{

}
void main(){
  var c = MyClass();
  c.printA();
  c.printB();
  //引入多个混入相同的字段或方法后引入的覆盖前引入的
  print(c.name);
  c.run();
}