void main(){
  /*
  * 函数声明
  *   .直接声明
  *       .Dart中声明函数不需要function关键字
  *   .箭头函数
  *       .Dart中的箭头函数中，函数体只能写一行，且不能用分号
  *       .Dart中的箭头函数,只是函数的一种简写形式
  *   .匿名函数
  *       没有函数名的函数
  *   .立即执行函数
  *
  *
  * */
  //调用函数
    printInfo();
    print(getNum());
  //匿名函数使用
    List list =["苹果","橘子","草莓"];
    list.forEach(fun);
  //箭头函数
    list.forEach((e)=>print(e));
  //立即执行函数
    ((int n){
      print(n);
    })(15);
}
/**
 * Dart中声明函数不需要function关键子
 */
//void没有返回值
void printInfo(){
  print("Hello World");
}
//声明函数 返回类型 函数名(){}
int getNum(){
  //返回值要与返回类型一样，不然就报错
  return 1;
}
//匿名函数
var fun =(value){
  print(value);
};


