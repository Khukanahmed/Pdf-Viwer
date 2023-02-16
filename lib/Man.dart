import 'package:book/Asset.dart';
import 'package:book/Book.dart';
import 'package:book/Bookdesign.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Man extends StatefulWidget {
  const Man({super.key});

  @override
  State<Man> createState() => _ManState();
}

class _ManState extends State<Man> {
  final Stream<QuerySnapshot> _users =
      FirebaseFirestore.instance.collection('Man').snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder(
            stream: _users,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasError) {
                return Text('Something went wrong');
              }

              if (snapshot.connectionState == ConnectionState.waiting) {
                return Text("Loading");
              }
              return ListView.builder(
                  itemCount: snapshot.data.docs.length,
                  itemBuilder: (context, index) {
                    var indexData = snapshot.data.docs[index].data()
                        as Map<String, dynamic>;
                    return Column(children: [
                      Padding(padding: EdgeInsets.only(top: 50)),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Bookdesign(
                              text: indexData['Name'],
                              color: Colors.amber,
                              images: indexData['image'],
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Book()));
                              }),
                          Bookdesign(
                              text: indexData['Name2'],
                              color: Colors.amber,
                              images: indexData['image'],
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Book2()));
                              }),
                        ],
                      ),

                      // Text(indexData['Name']),
                      // Container(height: 200,width: 200,
                      // decoration: BoxDecoration(
                      //   image: DecorationImage(
                      //     image: NetworkImage(indexData['image']),
                      //     fit: BoxFit.cover
                      //   )
                      // ),
                    ]
                        // Image.network(indexData['image'],height: 200,),

                        );
                  });
              // return ListView(
              //   children: snapshot.data!.docs.map((DocumentSnapshot document) {
              //     Map<String, dynamic> data =
              //         document.data()! as Map<String, dynamic>;
              //     return Column(
              //       children: [
              //         Padding(padding: EdgeInsets.only(top: 50)),
              //         Row(
              //           children: [
              //             Bookdesign(
              //                 text: data['Name'],
              //                 color: Colors.pink,
              //                 images: data['image'],
              //                 onTap: () {

              //                 }),
              //             Bookdesign(
              //                 text: data['Name'],
              //                 color: Colors.pink,
              //                 images: data['image'],
              //                 onTap: (() {}))
              //           ],
              //         )
              //       ],
              //     );
              //   }).toList(),
              // );
            }));
  }
}
