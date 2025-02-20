import 'package:http/http.dart' as http;
import 'dart:convert';
void main() async{
  /*
  * .Dart中，异步调用通过Futuer来实现
  *   .async函数返回一个futuer,await用于等待Futuer
  * */

  getIpAddress().then((ip)=>print(ip)).catchError((onError)=>print(onError));
  try{
    final ip = await getIpAddress2();
    print(ip);
  }catch(error){
    print(error);
  }

}
//第一种写法使用then
Future getIpAddress(){
  const url ='http://httpbin.org/ip';
  return http.get(Uri.parse(url)).then((res){
    String ip = jsonDecode(res.body)['origin'];
    return ip;
  });
}
//第二种写法使用 async和await
Future getIpAddress2() async{
  const url ='http://httpbin.org/ip';
  final body = await http.get(Uri.parse(url));
  return jsonDecode(body.body)['origin'];
}