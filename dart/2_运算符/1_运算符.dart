void main(){
  /*
  * .地板除 （~/）
  * .类型判断运算符（is | is!）
  * .避空运算符（?? | ??=）
  * .条件属性访问（?.）
  * .级联运算符（..）
  *     .myObject.myMethod();//返回myMethod字段的值
  *     .myObject..myMethod();//返回myObject对象的引用
  *
  * */
  //地板除，向下取正
    print(7/4);
    print(7~/4);
  //类型判断运算符
    List list =[];
    if(list is List){
      print("list is List");
    }else{
      print("list is not List");
    }
    if(list is! List){
      print("list 不是 List");
    }else{
      print("list 是 List");
    }
  //避空运算符
    print(1??3); //输出1
    print(null??5);//输出5
    var foo;
    print(foo??10); //如果foo数null则返回后面的
  //避空运算符赋值
    foo??=5;
    print(foo);//输出5，foo为null赋值
    foo??=15;
    print(foo);//输出5，foo不为null不赋值
    /*
    * 避空运算符赋值等同于
    * if(foo ==null){
    *   foo=5
    * }
    * */

  //条件属性运算符 (保护可能为空的属性)
    var m =new Map();
    print(m.length);
    var obj;
   //print(obj.length); 报错
    print(obj?.length); //?.先判断后访问，有才访问，没有返回null
  //级联运算符
    var s = Set();
    s.add(1);
    s.add(2);
    s.add(3);
    s.remove(2);
    print(s);
    var s2 =Set();
    s2..add(1)
      ..add(2)
      ..add(3)
      ..remove(2);
    print(s2);
}