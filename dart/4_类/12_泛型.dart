/*
* .泛型是在函数、类、接口中指定宽泛数据类型的语法
*     .泛型函数
*     .泛型类
*     .泛型接口
* .通常，在尖括号中，使用一个字母来代表类型，例如E,T,S,K,和 V 等
*     返回类型 函数名<输入类型>(参数类型 参数){
*       函数体
*     }
*     T getData<T>(T value){
*       return value;
*     }
* .作用：使用泛型可以减少重复的代码
* */

//泛型函数
T getData<T>(T value){
  return value;
}
//只约定输入类型，不约定返回类型
getData2<T>(T data){
  if(data is Map){
    return data.containsKey("age")?"我今年"+data['age'].toString()+"了":data;
  }
  return data;
}
//泛型类
class CommonClass<T>{
  Set s = Set<T>();
  void add(T value){
    s.add(value);
  }
  void info(){
    print(s);
  }
}
//泛型接口
abstract class Cache<T>{
  getBykey(String key);
  void setBykey(String key,T data);
}
//泛型接口实现
class FileCache<T> implements Cache<T>{
  @override
  getBykey(String key) {
    print(key);
  }

  @override
  void setBykey(String key, T data) {
    print("文件缓存：key:${key},data:${data}");
  }

}
//使用泛型限制参数类型
class Person{

}
class Animal<T extends Person> {
  void info(){
    print("您创建了一个动物类");
  }
}
class Man extends Person{

}
void main(){
  //泛型函数
  print(getData<int>(15));
  print(getData<String>("hello world"));
  //只约定输入类型不约定返回类型的泛型函数
  print(getData2<Map>({"name":"张三","age":15}));
  //泛型类
  var c = CommonClass<int>();
  c.add(1);
  c.add(2);
  c.add(15);
  c.info();
  var c2 = CommonClass<String>();
  c2.add("刘备");
  c2.add("关羽");
  c2.add("张飞");
  c2.info();
  //字面量形式的泛型
  Set s = <int>{};
  s.addAll([774,12,58].reversed);
  print(s);
  //泛型接口
  var f = FileCache<String>();
  f.setBykey("mykey123", "mydata456");
  var f2 = FileCache<Map<String,String>>();
  f.setBykey("mykey123", "mydata456");
  f2.setBykey("wenyi", {"name":"wenyi","age":"25"});
  //泛型限制参数类型
  Animal animal = Animal<Person>();
  animal.info();
  //参数类型可以是限定类型的子类
  Animal animal2 = Animal<Man>();
  animal2.info();
  /*
  * 错误代码
  * Animal animal3 = Animal<String>();
  *  animal3.info();
  * */

}