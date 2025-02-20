/*
* .接口在Dart中就是一个类（只是用法不同）
*     .与java不同，java中的接口需要用interface关键字声明，dart中不需要
*     .接口可以是任意类，但一般使用抽象类做接口
* .一个类可以实现（implements）多个接口，多个接口用逗号分隔
*     .class myClass implements interface1,interface2{...}
*     .接口可以看成一个个小零件。类实现接口就相当于组装零件
* .普通类实现接口后，必须重写接口中所有的属性和方法
*
* */
//手机处理器
abstract class Processor{
  late String cores; //内核：2核 4核
  arch(String name);
}
//手机摄像头
abstract class Camera{
  late String resolution; //像素：1000万 3000万
  brand(String name);
}
//通过普通类实现接口
class Phone implements Processor,Camera{
  @override
  String cores;

  @override
  String resolution;
  Phone(this.cores,this.resolution);
  @override
  arch(String name) {
    print("芯片制程：$name，内核$cores");
  }

  @override
  brand(String name) {
    print("摄像头品牌：$name，像素$resolution");
  }

}
void main(){
  Phone phone = Phone("八核", "1500万");
  phone.arch("7纳米");
  phone.brand("索尼");
}