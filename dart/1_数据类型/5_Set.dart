void main(){
  /*
  * .Set是一个无序的，元素唯一的集合
  * .Set有字面量和构造函数两种声明方式（用大括号{}）
  * .无法通过下标取值
  * .具有集合特有的操作
  *     .例如：求交际，并集，差集等
  *
  * */
  //Set 字面量方式声明用{}，元素是唯一的重复的会去掉
  var nums = <int>{1,2,3,3,5};
  my_print("Set字面量声明", nums);
  //Set 构造函数声明
  var fruits =Set();
  fruits.add("橘子");
  fruits.add("苹果");
  fruits.add("香蕉");
  my_print("Set构造函数声明", fruits);
  //集合转列表
  my_print("集合转列表，集合是用{}大括起来的,列表是用[]中括起来的", fruits.toList());
  //列表转集合 -重复的数据会过滤掉
  List list = <int>[1,2,3,5,2,6,2,9];
  my_print("列表转集合，重复的数据会被过滤掉", list.toSet());
  /*
  * 集合的常用操作
  * */
  //批量添加数据
  var caocao = Set();
  caocao.addAll(["张辽","关羽","司马懿"]);
  var liubei = Set();
  liubei.addAll(["关羽","张飞","诸葛亮"]);
  //求交际
  my_print("Set求交际", caocao.intersection(liubei));
  //求并集
  my_print("Set求并集", caocao.union(liubei));
  //求差集
  my_print("Set求差集", caocao.difference(liubei));
  //返回第一个元素
  my_print("Set返回第一个元素", caocao.first);
  //返回最后一个元素
  my_print("Set返回最后一个元素", caocao.last);

  /*
  * caocao[1] 报错，集合不能通过下标取值
  * */

}
void my_print(String tip,dynamic value){
  print("------$tip------");
  print(value);
}