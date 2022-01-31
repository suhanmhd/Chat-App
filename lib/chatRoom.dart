

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ChatRoom extends StatelessWidget {
  const ChatRoom({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

   final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar:AppBar(
        title: Text('Name'),
        ) ,
        body: 
       
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                 height: size.height/1.25,
                width: size.width,
                child: StreamBuilder<QuerySnapshot>(builder: (context,snap),),
              ),
              Container(
                
                height: size.height/10,
                width: size.width,
                alignment: Alignment.center,
                child: Container(
                  height: size.height/12,
                  width: size.width/1.2,
                  child: Row(
                   children: [
                     Container(
                        height: size.height/12,
                  width: size.width/1.5,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)
                      ),
                      
                    ),
                  ),
                     ),
                     IconButton(onPressed: (){}, icon: Icon(Icons.send))
                   ],
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}