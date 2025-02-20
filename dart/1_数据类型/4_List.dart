void main(){
  /*
  * Dart中的数组，由List对象表示。list有两种声明方式
  *   .字面量方式
  *     .List list = [];不限定元素的数据类型
  *     .List list =<int>[];限定元素的数据类型，元素类型是int
  *   .构造函数方式
  *     .List list = List.empty(growable: true);不限长度的空列表
  *     .List list = List.filled(3, 0);声明指定长的填充列表
  * 扩展操作符(...)
  *   .var list =[1,2,3];
  *   .var list2 =[0,...list];
  *
  *
  * */
  //声明list - 字面量
  List list = ['a','b','c',1,2,3,4];
  print(list);
  //限定元素的数据类型只能是int
  List list2 = <int>[1,2,5,6,7];
  print(list2);

  //通过构造函数的方式声明list
  List list3 = List.empty(growable: true);
  list3.add(1);
  list3.add("hello");
  list3.add("6");
  print(list3);
  //限定列表长的，列表用指定数据来填充
  List list4 = List.filled(12, "null");
  print(list4);
  //拓展操作符
  var list5 = [0,...list2];
  print(list5);

  var l7;
  /*
  * var l8 =[7,...l7];
  *  print(l8);
  * 运行结果type 'Null' is not a subtype of type 'Iterable<dynamic>'
  * null数据 不能进行拓展
  *
  * */
  var l8 = [7,...?l7];
  print(l8);
  //运行结果[7]  ?不为null才进行操作，避免程序报错

  /*
  * 列表的常用api
  * */
  //获取列表的长度
  List l1 = [1,2,3,4,5,2];
  print(l1.length);
  //列表反转
  // l1.reversed 返回一个可迭代的列表,严格意义已经不是列表了，通过toList转成列表
  print(l1.reversed.toList());
  //添加元素 l1.addAll(iterable) iterable可迭代的对象，list set map 都是可迭代的
  l1.addAll([5,9,6]);
  print(l1);
  //删除指定元素
  l1.remove(2);
  print(l1);

  //根据下标删除元素
  l1.removeAt(0);
  print(l1);
  //在指定位置插入元素
  l1.insert(3, "hello");
  print(l1);
  //清空列表
  l1.clear();
  print(l1);
  //合并元素
  List words = ['hello','words'];
  words.join('-');
  print(words);

  /*
  * 遍历List
  *
  *   .forEach()
  *       .遍历列表
  *   .map()
  *       .遍历并处理元素,然后生成新的列表
  *   .where()
  *       .返回满足条件的元素
  *   .any()
  *       .判断列表中的元素只要有一项满足条件，即返回true
  *   .every()
  *       .判断列表中所有的元素都满足条件才返回true
  *
  *
  *
  * */
  var nums=[1,2,3,4,5,6,7,8,9];
  //for 循环进行遍历
  for(var i=0;i<nums.length;i++){
    print(nums[i]);
  }
  nums = nums.reversed.toList();
  print("-----for ... in-----");
  //for ... in
  for(var item in nums){
    print(item);
  }
  nums = nums.reversed.toList();
  print("-----forEach-----");
  nums.forEach((element){
    print(element);
  });
  print("-----map-----");
  var list_1 = [1,2,3];
  var newNums = list_1.map((ele){
   return ele*10;
  });
  print(newNums.toList());
  //map 相当于下面的代码逻辑，只是map返回的是一个可迭代的对象，需要toList转成列表
  var newNums2 = [];
  for(var i=0; i<list_1.length;i++){
    newNums2.add(list_1[i]*10);

  }
  print(newNums2);

  //where()返回符合条件的元素
  var list_2 =[1,2,3,4,5,6,7,8,9];
  //判断数字是否是奇数
  bool isOdd (n) => n % 2 == 1;
  var oddNums = list_2.where(isOdd);
  print('-----where-----');
  print(oddNums);
  //使用any()来检查是否有奇数，至少一个
  print('-----any-----');
  print(list_2.any(isOdd));
  //使用every()来检查所有元素是否是奇数
  print('-----every-----');
  print(list_2.every(isOdd));
  //拓展expand 进行降维
  var pairs = [[1,2],[3,4]];
  // var flattened = pairs.expand((toElements){
  //   return toElements;
  // }).toList();
  //简写
  var flattened = pairs.expand((toElements)=>toElements).toList();
  print('-----expand-----');
  print(flattened);
  
  //折叠将列表的元素挨个操作

   int res = list_2.fold(2, (p,ele)=>p*ele);
   print(res);
  /*
  * 等同于 int res = list_2.fold(2, (p,ele)=>p*ele);
  * int initialValue =2;
  *  for(var item in list_2){
  *    initialValue = initialValue * item;
  *  }
  *  print(initialValue);
  * */


}