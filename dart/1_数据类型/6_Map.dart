void main(){
  /*
  * .Map是一个无序的键值对（key-value）映射。通常被称作哈希或字典
  * .声明方式
  *   .字面量：
  *       var map ={"key1":"value","key2":"value"};
  *   .构造函数：
  *       var map =Map();
  *       map['key']=value;
  * */

  //字面量
    var person = {
      "name":"小明",
      "sex":"男",
      "age":"20"
    };
    my_print("Map字面量声明", person);
  //构造函数
    var person2 = Map();
    person2['name']="小红";
    person2['sex']="女";
    person2['age']="18";
    my_print("Map构造函数声明", person2);
  //访问属性
    my_print("Map访问属性", person2['name']);
  //判断Map中的key是否存在
    my_print("Map判断Map中的key是否存在name", person2.containsKey("name"));
    my_print("Map判断Map中的key是否存在weight", person2.containsKey("weight"));
  //获取Map中的所有key
    my_print("获取Map中的所有key", person2.keys);
  //获取Map中的所有values
    my_print("获取Map中的所有key", person2.values);
  //更具key赋值
    person2.putIfAbsent("weight", ()=>'55Kg');
    my_print("putIfAbsent key不存时在赋值",person2);
    person2.putIfAbsent("weight", ()=>'55Kg');
    my_print("putIfAbsent key存在就不执行后续", person2);
  //根据条件删除
    person2.removeWhere((k,v)=>k=='weight');
    my_print("removeWhere根据条件删除", person2);









}


void my_print(String tip,dynamic value){
  print('-------$tip------');
  print(value);
}