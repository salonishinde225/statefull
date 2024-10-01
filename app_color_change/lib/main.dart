import"package:flutter/material.dart";

void main(){
  runApp(const AppBarColorApp());
}
class AppBarColorApp  extends StatefulWidget{
 const AppBarColorApp({super.key});

 @override
State createState()=> _AppBarColorAppState();
}
class _AppBarColorAppState extends State{
  
  bool changecolor = true;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar:AppBar(
          title : const Text("AppBarColorApp"),
          centerTitle: true,
          backgroundColor:changecolor?Colors.blue:Colors.pink,
        ),
        body: Center(
          child: Container(
            height : 150,
            width : 150,
            color: changecolor?Colors.red:Colors.black,
         ),
         ),
         floatingActionButton: FloatingActionButton(
          onPressed: (){
            if (changecolor == true){
              changecolor = false;
            }else{
              changecolor=true;
            }setState((){});
          },backgroundColor:Colors.purple,
            child :  const Text("Change"),
          ),
        ),
      );
    }
  }
  
  

