import 'package:flutter/material.dart';

void main() {
  runApp(const ContainerColorApp());
}
class ContainerColorApp extends StatefulWidget{
const StatefulWidget{
  const ContainerColorApp({super.key});
    @override
    State<ContainerColorApp>
     createState()=> _ContainerColorApp();
  }
  class _ContainerColorAppState extends State<ContainerColorApp>{
    bool colorChange=true;
    @override
    Widget build(BuildContext context){
      return MaterialApp(
        title: const Text("Container Color App"),
        centerTitle:true,
        backgroundColor:Colors.blue,
      ),
      body:Center(
        child: Container(
          width: 250,
          height: 250,
          color: (colorChange)?Colors.amber:Colors.blue,
        ),
      ),
      FloatingActionButton(onPressed: (){
        if(colorChange){
          colorChange=false;
        }
        else{
          colorChange=true;
        }
        setState(() {});
        }
        child: const
        Icon(Icons.add),
      ),
      ),
      );
      
      
      
    }
  }

      

    
  


  


