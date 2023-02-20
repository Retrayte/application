import 'package:flutter/material.dart';
import 'package:shopping/table.dart';

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//             title: Text("Restourant", textAlign: TextAlign.center,
//                 style: TextStyle(
//                     fontFamily: 'Open Sans', fontWeight: FontWeight.bold, color: Colors.black
//                     )),
//             leading: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Image.asset(
//                   "assets/images/logo.avif",
//                   scale: 8.0,
//                 )
//             )
//         ),
//         backgroundColor: Colors.transparent,
//         body: Container(
//             child:  Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
            
             
//                   Image.network('https://bcassetcdn.com/public/blog/wp-content/uploads/2020/04/23103401/lipton-logo.png', scale: 2.5),
//                   SizedBox(height: 20,),
//                   Text("Restourant", style: TextStyle(
//                       fontSize: 30, backgroundColor: Colors.white,color: Color.fromARGB(255, 164, 216, 42),fontFamily: 'Open Sans',
//                       fontWeight: FontWeight.bold)),
//                 ]
//             ),
//             alignment: Alignment(0, -0.5),
//             width: MediaQuery
//                 .of(context)
//                 .size
//                 .width,
//             height: MediaQuery
//                 .of(context)
//                 .size
//                 .height,
//             decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: NetworkImage('https://images.pexels.com/photos/1581384/pexels-photo-1581384.jpeg?cs=srgb&dl=pexels-rene-asmussen-1581384.jpg&fm=jpg'),
//                   fit: BoxFit.cover,
//                 )
//             )
//         )        
//     ); 
//   }
// }
class Home extends StatefulWidget {
  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text("Restaurant",
            style: TextStyle(color: Colors.black, fontSize: 20)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_none, color: Colors.black),
              iconSize: 20),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings, color: Colors.black),
              iconSize: 20),
        ],
      ),
      
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [ 
            // ElevatedButton(onPressed: (){
            //         Navigator.of(context).push(
            //           MaterialPageRoute(builder: (BuildContext context) {
            //             return  FormApp();
            //           })
            //         );
            //       }, child: Text('Booking')),
            Container(
              height: 39,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  AspectRatio(
                    aspectRatio: 2.2 / 1,
                    child: Container(
                      margin: EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Text("All", style: TextStyle(fontSize: 20))),
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 2.2 / 1,
                    child: Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Center(
                          child:
                              Text("Steaks", style: TextStyle(fontSize: 20))),
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 2.2 / 1,
                    child: Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Center(
                          child: Text("Garnir", style: TextStyle(fontSize: 20))),
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 2.2 / 1,
                    child: Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Center(
                          child:
                              Text("Burger", style: TextStyle(fontSize: 20))),
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 2.2 / 1,
                    child: Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Center(
                          child:
                              Text("Drinks", style: TextStyle(fontSize: 20))),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            MakeItem(context, "red", "assets/one.jpg"),
            MakeItem(context, "red", "assets/cat.jfif"),
            MakeItem(context, "red", "assets/cat.jfif"),
          ],
        ),
      ),
    );
  }

  Widget MakeItem(context, tag, image) {
    return Hero(
      tag: tag,
      child: GestureDetector(
        child: Container(
          height: 250,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, blurRadius: 10, offset: Offset(0, 10)),
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Burger",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text(
                        "KFC",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),

                    ],

                  ),
                  Expanded(
                    child: Container()
                  ),

                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      shape : BoxShape.circle,
                      color : Colors.white,
                    ),
                    child: Center(
                        child :Icon(Icons.favorite_border,size: 20,)
                    ),

                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}