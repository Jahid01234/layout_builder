import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
        (
        title: Text("Layout Builder Example",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),

      body: SafeArea(
        child: LayoutBuilder(
          builder: (context,constrain){

            final height = constrain.maxHeight;
            final width  = constrain.maxWidth;

            // The 1st condition
            if(width<=600){

              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Text("This is Moblibe Device",style: TextStyle(fontSize: 30,color: Colors.teal) ),
                    SizedBox(height: 4,),
                    Text("Width: $width",style: TextStyle(fontSize: 20,color: Colors.red) )
                  ],

                ),
              );
            }
            // The 2nd condition
            else if(width>601 && width<=900)
            {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Text("This is Tablet Device",style: TextStyle(fontSize: 30,color: Colors.teal) ),
                    SizedBox(height: 4,),
                    Text("Width: $width",style: TextStyle(fontSize: 20,color: Colors.red) )
                  ],

                ),
              );
            }

            // The 3rd condition
            else
            {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Text("This is Desktop Device",style: TextStyle(fontSize: 30,color: Colors.teal) ),
                    SizedBox(height: 4,),
                    Text("Width: $width",style: TextStyle(fontSize: 20,color: Colors.red) )
                  ],

                ),
              );
            }




          },
        ),
      ),
    );
  }
}
