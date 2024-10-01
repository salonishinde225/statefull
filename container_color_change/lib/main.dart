import"package:flutter/material.dart";

void main(){
  runApp(const ContainerColorApp());
}
class ContainerColorApp  extends StatefulWidget{
 const ContainerColorApp({super.key});

 @override
State createState()=> _ContainerColorAppState();
}
class _ContainerColorAppState extends State{
  
  bool changecolor = true;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar:AppBar(
          title : const Text(" ContainerColorApp"),
          centerTitle: true,
          backgroundColor: Colors.blue,
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
          },backgroundColor:Colors. blue,
            child :  const Text("Change"),
          ),
        ),
      );
    }
  }
  
  

