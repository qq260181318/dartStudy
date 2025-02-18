void main(){
  /*
  * .默认构造函数
  *   .与类同名的函数,在实例化时，自动被调用
  * .命名构造函数
  *   .在类中使用命名构造器（类名.函数名）实现多个构造器，可以提供额外的清晰度
  * .常量构造函数
  *   .如果类生成的对象不会改变,就可以通过常量构造函数使这些对象成为编译时常量
  * .工厂构造函数
  *   .通过factory声明，工厂函数不会自动生成实例，而是通过代码来决定返回的实例
  *
  * */
  //默认构造函数
  Point point = Point(5,10);
  print(point.x);
  print(point.y);
  //命名构造函数
  Point p =Point.origin();
  print(p.x);
  print(p.y);
  Point p2 =Point.fromJson(x: 50,y: 561);
  print(p2.x);
  print(p2.y);
  //常量构造函数，可以当普通构造函数使用
  ImmutablePoint imp = ImmutablePoint(50, 30);
  ImmutablePoint imp2 = ImmutablePoint(50, 30);
  print(imp2==imp);
  //常量构造函数需要const 声明
  ImmutablePoint imp3 = const ImmutablePoint(50, 30);
  ImmutablePoint imp4 = const ImmutablePoint(50,30);
  print(imp3==imp4);
  //工厂构造函数
  Porson porson = new Porson("李四");
  print(porson.name);
  Porson porson2 = new Porson("王五");
  print(porson2.name);
  print(porson==porson2);
}
//工厂构造函数
class Porson{
  late String name;
  static final Map<String,Porson> instance={};
  //   //工厂构造函数
  factory Porson(String name){

    return instance.putIfAbsent('name', ()=>Porson.newSelf(name));


  }
  Porson.newSelf(this.name);
}


class Point{
  late num x,y;
  // Point(){
  //   print("我是默认构造函数，实例时自动被调用");
  //   //this 可以省略
  //   x=0;
  //   y=0;
  // }

  // Point(num x,num y){
  //   //当命名指向有歧义时，this能省略
  //   this.x=x;
  //   this.y=y;
  // }
  Point(this.x,this.y);
  //命名构造函数
  Point.origin(){
    x=0;
    y=0;
  }
  //命名构造函数
  Point.fromJson({int x =0,int y=0}){
    this.x=x;
    this.y=y;
  }
}
class ImmutablePoint{
  //属性必须使用final 声明
  final num x,y;
  //常量构造函数必须使用const声明,不能有{}代码块
  const ImmutablePoint(this.x,this.y);
  void getx(){
    print(x);
  }
}