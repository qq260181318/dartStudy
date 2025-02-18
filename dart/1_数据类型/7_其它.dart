void main(){
  /*
  * Runes(符文)
  *   .Punes对象是一个32位字符对象，它可以把文字转换成符号表情或特定的文字
  *   .print('\u{1f44d}') 结果=>👍
  *   .https://copychar.cc/
  * Symbol
  *   .在Dart中用#开头表示的标识符，一般用户反射
  * dynamic
  *   .动态数据类型
  *
  * */
  print('\u{1f44d}');
  var str = "😍";
  print(str.length); //utf-16字符长度 结果是2
  print(str.runes.length);//转成utf-32字符，获取长度
  //Runes 可以叫UTF-32字符集表示的内容转成符号
  Runes input = Runes("\u{1f680}");
  print(String.fromCharCodes(input));

  //Symbol
    //字面量
      var a = #abc;
      print(a);
    //构造函数
      var b = Symbol("abc");
      print(b);
      print(a==b);

  //dynamic动态类型
  dynamic value = 123;
  print(value);
  value="张三";
  print(value);
  
}