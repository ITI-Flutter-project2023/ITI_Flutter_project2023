// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: depend_on_referenced_packages, file_names, avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
class FirestoreImageDisplay extends StatefulWidget {
   const FirestoreImageDisplay({Key? key}) : super(key: key);
  @override
  State<FirestoreImageDisplay> createState() => _MyWidgetState();
}
class _MyWidgetState extends State<FirestoreImageDisplay> {
  late String imageUrl;
  late String imageUrl1;
  late String imageUrl2;
  late String imageUrl3;
  late String imageUrl4;
  late String imageUrl5;
  late String imageUrl6;
  late String imageUrl7;
  final storage = FirebaseStorage.instance;
  bool islike= false;
  bool islike1= false;
  bool islike2= false;
  bool islike3= false;
  bool islike4= false;
  bool islike5= false;
  bool islike6= false;
  bool islike7= false;

  final Color interactive =Colors.pinkAccent;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    imageUrl  = '';
    imageUrl1 = '';
    imageUrl2 = '';
    imageUrl3 = '';
    imageUrl4 = '';
    imageUrl5 = '';
    imageUrl6 = '';
    imageUrl7 = '';
    getImageUrl();
  }
  // @override
  // void initState() {
  //   super.initState();
  //   // Set the initial value of imageUrl to an empty stringimageUrl  = '';
  //       imageUrl1 = '';
  //       imageUrl2 = '';
  //       imageUrl3 = '';
  //       imageUrl4 = '';
  //       imageUrl5 = '';
  //       imageUrl6 = '';
  //       imageUrl7 = '';
  //  //Retrieve the imge grom Firebase Storage
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              width: 160,
                              height: 180,
                              decoration:  BoxDecoration(
                                color: const Color.fromARGB(255, 197, 161, 181),
                                borderRadius: BorderRadius.circular(30.0), //add border radius
                              ),
                              child:
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30.0), //add border radius
                                child: Image(
                                  image: NetworkImage(imageUrl1),
                                  height: 250,
                                  fit:BoxFit.fill,
                                ),
                              ),
                            ),
                            ListTile(
                              title:
                              const Text('Jeans',style: TextStyle(
                                  fontSize:25,
                                  fontWeight: FontWeight.bold
                              ),
                              ),
                              subtitle:
                              const Text('\$200',style: TextStyle(
                                  fontSize:25,
                                  fontWeight: FontWeight.bold
                              ),
                              ),
                              trailing: Container(
                                height: 45,
                                width: 45,
                                decoration:  BoxDecoration(
                                  color: const Color.fromARGB(255, 197, 161, 181),
                                  borderRadius: BorderRadius.circular(30.0), //add border radius
                                ),
                                child:
                                IconButton(
                                  icon: Icon(
                                    islike1 ? Icons.favorite : Icons.favorite_border,
                                    color: islike1 ? Colors.red : Colors.grey,
                                    size: 30,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      islike1 = !islike1;
                                    });
                                  },
                                  splashColor: Colors.red,
                                  highlightColor: Colors.transparent,
                                  // shape: RoundedRectangleBorder(
                                  //   borderRadius: BorderRadius.circular(10.0),
                                  // ),
                                ),
                              ),

                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              width: 160,
                              height: 180,
                              decoration:  BoxDecoration(
                                color: const Color.fromARGB(255, 197, 161, 181),
                                borderRadius: BorderRadius.circular(30.0), //add border radius
                              ),
                              child:
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30.0), //add border radius
                                child: Image(
                                  image: NetworkImage(imageUrl),
                                  height: 250,
                                  fit:BoxFit.fill,
                                ),
                              ),
                            ),
                            ListTile(
                              title:
                              const Text('Jeans',style: TextStyle(
                                  fontSize:25,
                                  fontWeight: FontWeight.bold
                              ),
                              ),
                              subtitle:
                              const Text('\$200',style: TextStyle(
                                  fontSize:25,
                                  fontWeight: FontWeight.bold
                              ),
                              ),
                              trailing: Container(
                                height: 45,
                                width: 45,
                                decoration:  BoxDecoration(
                                  color: const Color.fromARGB(255, 197, 161, 181),
                                  borderRadius: BorderRadius.circular(30.0), //add border radius
                                ),
                                child:
                                IconButton(
                                  icon: Icon(
                                    islike2 ? Icons.favorite : Icons.favorite_border,
                                    color: islike2 ? Colors.red : Colors.grey,
                                    size: 30,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      islike2 = !islike2;
                                    });
                                  },
                                  splashColor: Colors.red,
                                  highlightColor: Colors.transparent,
                                  // shape: RoundedRectangleBorder(
                                  //   borderRadius: BorderRadius.circular(10.0),
                                  // ),
                                ),
                              ),

                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              width: 160,
                              height: 180,
                              decoration:  BoxDecoration(
                                color: const Color.fromARGB(255, 197, 161, 181),
                                borderRadius: BorderRadius.circular(30.0), //add border radius
                              ),
                              child:
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30.0), //add border radius
                                child: Image(
                                  image: NetworkImage(imageUrl2),
                                  height: 250,
                                  fit:BoxFit.fill,
                                ),
                              ),
                            ),
                            ListTile(
                              title:
                              const Text('Skirt',style: TextStyle(
                                  fontSize:25,
                                  fontWeight: FontWeight.bold
                              ),
                              ),
                              subtitle:
                              const Text('\$150',style: TextStyle(
                                  fontSize:25,
                                  fontWeight: FontWeight.bold
                              ),
                              ),
                              trailing: Container(
                                height: 45,
                                width: 45,
                                decoration:  BoxDecoration(
                                  color: const Color.fromARGB(255, 197, 161, 181),
                                  borderRadius: BorderRadius.circular(30.0), //add border radius
                                ),
                                child:
                                IconButton(
                                  icon: Icon(
                                    islike ? Icons.favorite : Icons.favorite_border,
                                    color: islike ? Colors.red : Colors.grey,
                                    size: 30,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      islike = !islike;
                                    });
                                  },
                                  splashColor: Colors.red,
                                  highlightColor: Colors.transparent,
                                  // shape: RoundedRectangleBorder(
                                  //   borderRadius: BorderRadius.circular(10.0),
                                  // ),
                                ),
                              ),

                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              width: 160,
                              height: 180,
                              decoration:  BoxDecoration(
                                color: const Color.fromARGB(255, 197, 161, 181),
                                borderRadius: BorderRadius.circular(30.0), //add border radius
                              ),
                              child:
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30.0), //add border radius
                                child: Image(
                                  image: NetworkImage(imageUrl3),
                                  height: 250,
                                  fit:BoxFit.fill,
                                ),
                              ),
                            ),
                            ListTile(
                              title:
                              const Text('Skirt',style: TextStyle(
                                  fontSize:25,
                                  fontWeight: FontWeight.bold
                              ),
                              ),
                              subtitle:
                              const Text('\$150',style: TextStyle(
                                  fontSize:25,
                                  fontWeight: FontWeight.bold
                              ),
                              ),
                              trailing: Container(
                                height: 45,
                                width: 45,
                                decoration:  BoxDecoration(
                                  color: const Color.fromARGB(255, 197, 161, 181),
                                  borderRadius: BorderRadius.circular(30.0), //add border radius
                                ),
                                child:
                                IconButton(
                                  icon: Icon(
                                    islike3 ? Icons.favorite : Icons.favorite_border,
                                    color: islike3 ? Colors.red : Colors.grey,
                                    size: 30,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      islike3 = !islike3;
                                    });
                                  },
                                  splashColor: Colors.red,
                                  highlightColor: Colors.transparent,
                                  // shape: RoundedRectangleBorder(
                                  //   borderRadius: BorderRadius.circular(10.0),
                                  // ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              width: 160,
                              height: 180,
                              decoration:  BoxDecoration(
                                color: const Color.fromARGB(255, 197, 161, 181),
                                borderRadius: BorderRadius.circular(30.0), //add border radius
                              ),
                              child:
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30.0), //add border radius
                                child: Image(
                                  image: NetworkImage(imageUrl4),
                                  height: 250,
                                  fit:BoxFit.fill,
                                ),
                              ),
                            ),
                            ListTile(
                              title:
                              const Text('Bijame',style: TextStyle(
                                  fontSize:25,
                                  fontWeight: FontWeight.bold
                              ),
                              ),
                              subtitle:
                              const Text('\$300',style: TextStyle(
                                  fontSize:25,
                                  fontWeight: FontWeight.bold
                              ),
                              ),
                              trailing: Container(
                                height: 45,
                                width: 45,
                                decoration:  BoxDecoration(
                                  color: const Color.fromARGB(255, 197, 161, 181),
                                  borderRadius: BorderRadius.circular(30.0), //add border radius
                                ),
                                child:
                                IconButton(
                                  icon: Icon(
                                    islike4 ? Icons.favorite : Icons.favorite_border,
                                    color: islike4 ? Colors.red : Colors.grey,
                                    size: 30,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      islike4 = !islike4;
                                    });
                                  },
                                  splashColor: Colors.red,
                                  highlightColor: Colors.transparent,
                                  // shape: RoundedRectangleBorder(
                                  //   borderRadius: BorderRadius.circular(10.0),
                                  // ),
                                ),
                              ),

                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              width: 160,
                              height: 180,
                              decoration:  BoxDecoration(
                                color: const Color.fromARGB(255, 197, 161, 181),
                                borderRadius: BorderRadius.circular(30.0), //add border radius
                              ),
                              child:
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30.0), //add border radius
                                child: Image(
                                  image: NetworkImage(imageUrl5),
                                  height: 250,
                                  fit:BoxFit.fill,
                                ),
                              ),
                            ),
                            ListTile(
                              title:
                              const Text('Bijame',style: TextStyle(
                                  fontSize:25,
                                  fontWeight: FontWeight.bold
                              ),
                              ),
                              subtitle:
                              const Text('\$300',style: TextStyle(
                                  fontSize:25,
                                  fontWeight: FontWeight.bold
                              ),
                              ),
                              trailing: Container(
                                height: 45,
                                width: 45,
                                decoration:  BoxDecoration(
                                  color: const Color.fromARGB(255, 197, 161, 181),
                                  borderRadius: BorderRadius.circular(30.0), //add border radius
                                ),
                                child:
                                IconButton(
                                  icon: Icon(
                                    islike5 ? Icons.favorite : Icons.favorite_border,
                                    color: islike5 ? Colors.red : Colors.grey,
                                    size: 30,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      islike5 = !islike5;
                                    });
                                  },
                                  splashColor: Colors.red,
                                  highlightColor: Colors.transparent,
                                  // shape: RoundedRectangleBorder(
                                  //   borderRadius: BorderRadius.circular(10.0),
                                  // ),
                                ),
                              ),

                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              width: 160,
                              height: 180,
                              decoration:  BoxDecoration(
                                color: const Color.fromARGB(255, 197, 161, 181),
                                borderRadius: BorderRadius.circular(30.0), //add border radius
                              ),
                              child:
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30.0), //add border radius
                                child: Image(
                                  image: NetworkImage(imageUrl6),
                                  height: 250,
                                  fit:BoxFit.fill,
                                ),
                              ),
                            ),
                            ListTile(
                              title:
                              const Text('Jacket',style: TextStyle(
                                  fontSize:25,
                                  fontWeight: FontWeight.bold
                              ),
                              ),
                              subtitle:
                              const Text('\$250',style: TextStyle(
                                  fontSize:25,
                                  fontWeight: FontWeight.bold
                              ),
                              ),
                              trailing: Container(
                                height: 45,
                                width: 45,
                                decoration:  BoxDecoration(
                                  color: const Color.fromARGB(255, 197, 161, 181),
                                  borderRadius: BorderRadius.circular(30.0), //add border radius
                                ),
                                child:
                                IconButton(
                                  icon: Icon(
                                    islike6 ? Icons.favorite : Icons.favorite_border,
                                    color: islike6 ? Colors.red : Colors.grey,
                                    size: 30,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      islike6 = !islike6;
                                    });
                                  },
                                  splashColor: Colors.red,
                                  highlightColor: Colors.transparent,
                                  // shape: RoundedRectangleBorder(
                                  //   borderRadius: BorderRadius.circular(10.0),
                                  // ),
                                ),
                              ),

                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              width: 160,
                              height: 180,
                              decoration:  BoxDecoration(
                                color: const Color.fromARGB(255, 197, 161, 181),
                                borderRadius: BorderRadius.circular(30.0), //add border radius
                              ),
                              child:
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30.0), //add border radius
                                child: Image(
                                  image: NetworkImage(imageUrl7),
                                  height: 250,
                                  fit:BoxFit.fill,
                                ),
                              ),
                            ),
                            ListTile(
                              title:
                              const Text('Jacket',style: TextStyle(
                                  fontSize:25,
                                  fontWeight: FontWeight.bold
                              ),
                              ),
                              subtitle:
                              const Text('\$250',style: TextStyle(
                                  fontSize:25,
                                  fontWeight: FontWeight.bold
                              ),
                              ),
                              trailing: Container(
                                height: 45,
                                width: 45,
                                decoration:  BoxDecoration(
                                  color: const Color.fromARGB(255, 197, 161, 181),
                                  borderRadius: BorderRadius.circular(30.0), //add border radius
                                ),
                                child:
                                IconButton(
                                  icon: Icon(
                                    islike7 ? Icons.favorite : Icons.favorite_border,
                                    color: islike7 ? Colors.red : Colors.grey,
                                    size: 30,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      islike7 = !islike7;
                                    });
                                  },
                                  splashColor: Colors.red,
                                  highlightColor: Colors.transparent,
                                  // shape: RoundedRectangleBorder(
                                  //   borderRadius: BorderRadius.circular(10.0),
                                  // ),
                                ),
                              ),

                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Future<void> getImageUrl() async {
    // Get the feference to the image file in Firebase Storage
    final ref  = storage.ref().child('/je.jpg');
    final ref1 = storage.ref().child('/je1.jpg');
    final ref2 = storage.ref().child('/sk.jpg');
    final ref3 = storage.ref().child('/sk1.jpg');
    final ref4 = storage.ref().child('/bj.jpg');
    final ref5 = storage.ref().child('/bj1.jpg');
    final ref6 = storage.ref().child('/ja.jpg');
    final ref7 = storage.ref().child('/ja1.jpg');
    // Get teh inageUrl to download URL
    final url  = await ref.getDownloadURL();
    final url1 = await ref1.getDownloadURL();
    final url2 = await ref2.getDownloadURL();
    final url3 = await ref3.getDownloadURL();
    final url4 = await ref4.getDownloadURL();
    final url5 = await ref5.getDownloadURL();
    final url6 = await ref6.getDownloadURL();
    final url7 = await ref7.getDownloadURL();
    setState(() {
      imageUrl  = url;
      imageUrl1 = url1;
      imageUrl2 = url2;
      imageUrl3 = url3;
      imageUrl4 = url4;
      imageUrl5 = url5;
      imageUrl6 = url6;
      imageUrl7 = url7;
    });
  }
}

// Padding(
//   padding: const EdgeInsets.all(8.0),
//   child:
//   Row(
//     children: [
//       Expanded(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child:
//           Container(
//             width: 200,
//             height: 320,
//             decoration:  BoxDecoration(
//                 color: Color.fromARGB(255, 197, 161, 181),                            borderRadius: BorderRadius.circular(25)
//             ),
//             child: Column(
//               children: [
//                 ClipOval(
//                   child: Image(
//                     image: NetworkImage(imageUrl1),
//                     height: 250,
//                     fit:BoxFit.fill,
//                   ),
//                 ),
//
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const Text('Janes ',style:TextStyle(
//                     color: Colors.white,
//                     fontSize: 20
//                 ) ,),
//                 RatingBar(
//                     itemSize:25 ,
//                     initialRating: 0,
//                     direction: Axis.horizontal,
//                     allowHalfRating: true,
//                     itemCount: 5,
//                     ratingWidget: RatingWidget(
//
//                         full: const Icon(Icons.star, color: Colors.orange),
//                         half: const Icon(
//                           Icons.star_half,
//                           color: Colors.orange,
//                         ),
//                         empty: const Icon(
//                           Icons.star_outline,
//                           color: Colors.orange,
//                         )),
//                     onRatingUpdate: (value) {
//                       setState(() {
//                       });
//                     }),
//
//               ],
//             ),
//
//           ),
//         ),
//       ),
//       Expanded(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             width: 200,
//             height: 320,
//             decoration:  BoxDecoration(
//                 color: Color.fromARGB(255, 197, 161, 181),                              borderRadius: BorderRadius.circular(25)
//             ),
//             child: Column(
//               children: [
//                 ClipRRect(
//                   child: Image(
//                     image: NetworkImage(imageUrl2),
//                     height: 250,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const Text('Skirts',style:TextStyle(
//                     color: Colors.white,
//                     fontSize: 20
//                 ) ,),
//                 RatingBar(
//                     itemSize:25 ,
//                     initialRating: 0,
//                     direction: Axis.horizontal,
//                     allowHalfRating: true,
//                     itemCount: 5,
//                     ratingWidget: RatingWidget(
//
//                         full: const Icon(Icons.star, color: Colors.orange),
//                         half: const Icon(
//                           Icons.star_half,
//                           color: Colors.orange,
//                         ),
//                         empty: const Icon(
//                           Icons.star_outline,
//                           color: Colors.orange,
//                         )),
//                     onRatingUpdate: (value) {
//                       setState(() {
//                       });
//                     }),
//
//               ],
//             ),
//
//           ),
//         ),
//       ),
//
//     ],
//   ),
// ),
// Padding(
//   padding: const EdgeInsets.all(8.0),
//   child:
//   Row(
//     children: [
//       Expanded(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             width: 200,
//             height: 320,
//             decoration:  BoxDecoration(
//                 color: Color.fromARGB(255, 197, 161, 181),                              borderRadius: BorderRadius.circular(25)
//             ),
//             child: Column(
//               children: [
//                 ClipOval(
//                   child: Image(
//                     image: NetworkImage(imageUrl1),
//                     height: 250,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const Text('Jacket ',style:TextStyle(
//                     color: Colors.white,
//                     fontSize: 20
//                 ) ,),
//                 RatingBar(
//                     itemSize:25 ,
//                     initialRating: 0,
//                     direction: Axis.horizontal,
//                     allowHalfRating: true,
//                     itemCount: 5,
//                     ratingWidget: RatingWidget(
//
//                         full: const Icon(Icons.star, color: Colors.orange),
//                         half: const Icon(
//                           Icons.star_half,
//                           color: Colors.orange,
//                         ),
//                         empty: const Icon(
//                           Icons.star_outline,
//                           color: Colors.orange,
//                         )),
//                     onRatingUpdate: (value) {
//                       setState(() {
//                       });
//                     }),
//
//               ],
//             ),
//
//           ),
//         ),
//       ),
//       Expanded(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             width: 200,
//             height: 320,
//             decoration:  BoxDecoration(
//                 color: Color.fromARGB(255, 197, 161, 181),
//                 borderRadius: BorderRadius.circular(25)
//             ),
//             child: Column(
//               children: [
//                 Image(
//                   image: NetworkImage(imageUrl2),
//                   height: 250,
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const Text('Skirts',style:TextStyle(
//                     color: Colors.white,
//                     fontSize: 20
//                 ) ,),
//                 RatingBar(
//                     itemSize:25 ,
//                     initialRating: 0,
//                     direction: Axis.horizontal,
//                     allowHalfRating: true,
//                     itemCount: 5,
//                     ratingWidget: RatingWidget(
//
//                         full: const Icon(Icons.star, color: Colors.orange),
//                         half: const Icon(
//                           Icons.star_half,
//                           color: Colors.orange,
//                         ),
//                         empty: const Icon(
//                           Icons.star_outline,
//                           color: Colors.orange,
//                         )),
//                     onRatingUpdate: (value) {
//                       setState(() {
//                       });
//                     }),
//
//               ],
//             ),
//
//           ),
//         ),
//       ),
//
//     ],
//   ),
// ),
// Padding(
//   padding: const EdgeInsets.all(8.0),
//   child:
//   Row(
//     children: [
//       Expanded(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             width: 200,
//             height: 320,
//             decoration:  BoxDecoration(
//                 color: Color.fromARGB(255, 197, 161, 181),
//                 borderRadius: BorderRadius.circular(25)
//             ),
//             child: Column(
//               children: [
//                 ClipOval(
//                   child: Image(
//                     image: NetworkImage(imageUrl),
//                     height: 250,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const Text('tamer mohamed ',style:TextStyle(
//                     color: Colors.white,
//                     fontSize: 20
//                 ) ,),
//                 RatingBar(
//                     itemSize:25 ,
//                     initialRating: 0,
//                     direction: Axis.horizontal,
//                     allowHalfRating: true,
//                     itemCount: 5,
//                     ratingWidget: RatingWidget(
//
//                         full: const Icon(Icons.star, color: Colors.orange),
//                         half: const Icon(
//                           Icons.star_half,
//                           color: Colors.orange,
//                         ),
//                         empty: const Icon(
//                           Icons.star_outline,
//                           color: Colors.orange,
//                         )),
//                     onRatingUpdate: (value) {
//                       setState(() {
//                       });
//                     }),
//
//               ],
//             ),
//
//           ),
//         ),
//       ),
//       Expanded(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             width: 200,
//             height: 320,
//             decoration:  BoxDecoration(
//                 color: Color.fromARGB(255, 197, 161, 181),
//                 borderRadius: BorderRadius.circular(25)
//             ),
//             child: Column(
//               children: [
//                 ClipOval(
//                   child: Image(
//                     image: NetworkImage(imageUrl),
//                     height: 250,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const Text('tamer mohamed ',style:TextStyle(
//                     color: Colors.white,
//                     fontSize: 20
//                 ) ,),
//                 RatingBar(
//                     itemSize:25 ,
//                     initialRating: 0,
//                     direction: Axis.horizontal,
//                     allowHalfRating: true,
//                     itemCount: 5,
//                     ratingWidget: RatingWidget(
//
//                         full: const Icon(Icons.star, color: Colors.orange),
//                         half: const Icon(
//                           Icons.star_half,
//                           color: Colors.orange,
//                         ),
//                         empty: const Icon(
//                           Icons.star_outline,
//                           color: Colors.orange,
//                         )),
//                     onRatingUpdate: (value) {
//                       setState(() {
//                       });
//                     }),
//
//               ],
//             ),
//
//           ),
//         ),
//       ),
//
//     ],
//   ),
// ),
// Padding(
//   padding: const EdgeInsets.all(8.0),
//   child:
//   Row(
//     children: [
//       Expanded(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             width: 200,
//             height: 320,
//             decoration:  BoxDecoration(
//                 color: Color.fromARGB(255, 197, 161, 181),
//                 borderRadius: BorderRadius.circular(25)
//             ),
//             child: Column(
//               children: [
//                 ClipOval(
//                   child: Image(
//                     image: NetworkImage(imageUrl),
//                     height: 250,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const Text('tamer mohamed ',style:TextStyle(
//                     color: Colors.white,
//                     fontSize: 20
//                 ) ,),
//                 RatingBar(
//                     itemSize:25 ,
//                     initialRating: 0,
//                     direction: Axis.horizontal,
//                     allowHalfRating: true,
//                     itemCount: 5,
//                     ratingWidget: RatingWidget(
//
//                         full: const Icon(Icons.star, color: Colors.orange),
//                         half: const Icon(
//                           Icons.star_half,
//                           color: Colors.orange,
//                         ),
//                         empty: const Icon(
//                           Icons.star_outline,
//                           color: Colors.orange,
//                         )),
//                     onRatingUpdate: (value) {
//                       setState(() {
//                       });
//                     }),
//
//               ],
//             ),
//
//           ),
//         ),
//       ),
//       Expanded(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             width: 200,
//             height: 320,
//             decoration:  BoxDecoration(
//                 color: Color.fromARGB(255, 197, 161, 181),
//                 borderRadius: BorderRadius.circular(25)
//             ),
//             child: Column(
//               children: [
//                 ClipOval(
//                   child: Image(
//                     image: NetworkImage(imageUrl),
//                     height: 250,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const Text('tamer mohamed ',style:TextStyle(
//                     color: Colors.white,
//                     fontSize: 20
//                 ) ,),
//                 RatingBar(
//                     itemSize:25 ,
//                     initialRating: 0,
//                     direction: Axis.horizontal,
//                     allowHalfRating: true,
//                     itemCount: 5,
//                     ratingWidget: RatingWidget(
//
//                         full: const Icon(Icons.star, color: Colors.orange),
//                         half: const Icon(
//                           Icons.star_half,
//                           color: Colors.orange,
//                         ),
//                         empty: const Icon(
//                           Icons.star_outline,
//                           color: Colors.orange,
//                         )),
//                     onRatingUpdate: (value) {
//                       setState(() {
//                       });
//                     }),
//
//               ],
//             ),
//
//           ),
//         ),
//       ),
//
//     ],
//   ),
// ),
// Padding(
//   padding: const EdgeInsets.all(8.0),
//   child:
//   Row(
//     children: [
//       Expanded(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child:
//           Container(
//             width: 200,
//             height: 320,
//             decoration:  BoxDecoration(
//                 color: Color.fromARGB(255, 197, 161, 181),                            borderRadius: BorderRadius.circular(25)
//             ),
//             child: Column(
//               children: [
//                 ClipOval(
//                   child: Image(
//                     image: NetworkImage(imageUrl1),
//                     height: 250,
//                     fit:BoxFit.fill,
//                   ),
//                 ),
//
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const Text('Janes ',style:TextStyle(
//                     color: Colors.white,
//                     fontSize: 20
//                 ) ,),
//                 RatingBar(
//                     itemSize:25 ,
//                     initialRating: 0,
//                     direction: Axis.horizontal,
//                     allowHalfRating: true,
//                     itemCount: 5,
//                     ratingWidget: RatingWidget(
//
//                         full: const Icon(Icons.star, color: Colors.orange),
//                         half: const Icon(
//                           Icons.star_half,
//                           color: Colors.orange,
//                         ),
//                         empty: const Icon(
//                           Icons.star_outline,
//                           color: Colors.orange,
//                         )),
//                     onRatingUpdate: (value) {
//                       setState(() {
//                       });
//                     }),
//
//               ],
//             ),
//
//           ),
//         ),
//       ),
//       Expanded(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             width: 200,
//             height: 320,
//             decoration:  BoxDecoration(
//                 color: Color.fromARGB(255, 197, 161, 181),                              borderRadius: BorderRadius.circular(25)
//             ),
//             child: Column(
//               children: [
//                 ClipRRect(
//                   child: Image(
//                     image: NetworkImage(imageUrl2),
//                     height: 250,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const Text('Skirts',style:TextStyle(
//                     color: Colors.white,
//                     fontSize: 20
//                 ) ,),
//                 RatingBar(
//                     itemSize:25 ,
//                     initialRating: 0,
//                     direction: Axis.horizontal,
//                     allowHalfRating: true,
//                     itemCount: 5,
//                     ratingWidget: RatingWidget(
//
//                         full: const Icon(Icons.star, color: Colors.orange),
//                         half: const Icon(
//                           Icons.star_half,
//                           color: Colors.orange,
//                         ),
//                         empty: const Icon(
//                           Icons.star_outline,
//                           color: Colors.orange,
//                         )),
//                     onRatingUpdate: (value) {
//                       setState(() {
//                       });
//                     }),
//
//               ],
//             ),
//
//           ),
//         ),
//       ),
//
//     ],
//   ),
// ),
// Padding(
//   padding: const EdgeInsets.all(8.0),
//   child:
//   Row(
//     children: [
//       Expanded(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             width: 200,
//             height: 320,
//             decoration:  BoxDecoration(
//                 color: Color.fromARGB(255, 197, 161, 181),                              borderRadius: BorderRadius.circular(25)
//             ),
//             child: Column(
//               children: [
//                 ClipOval(
//                   child: Image(
//                     image: NetworkImage(imageUrl1),
//                     height: 250,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const Text('Jacket ',style:TextStyle(
//                     color: Colors.white,
//                     fontSize: 20
//                 ) ,),
//                 RatingBar(
//                     itemSize:25 ,
//                     initialRating: 0,
//                     direction: Axis.horizontal,
//                     allowHalfRating: true,
//                     itemCount: 5,
//                     ratingWidget: RatingWidget(
//
//                         full: const Icon(Icons.star, color: Colors.orange),
//                         half: const Icon(
//                           Icons.star_half,
//                           color: Colors.orange,
//                         ),
//                         empty: const Icon(
//                           Icons.star_outline,
//                           color: Colors.orange,
//                         )),
//                     onRatingUpdate: (value) {
//                       setState(() {
//                       });
//                     }),
//
//               ],
//             ),
//
//           ),
//         ),
//       ),
//       Expanded(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             width: 200,
//             height: 320,
//             decoration:  BoxDecoration(
//                 color: Color.fromARGB(255, 197, 161, 181),
//                 borderRadius: BorderRadius.circular(25)
//             ),
//             child: Column(
//               children: [
//                 Image(
//                   image: NetworkImage(imageUrl2),
//                   height: 250,
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const Text('Skirts',style:TextStyle(
//                     color: Colors.white,
//                     fontSize: 20
//                 ) ,),
//                 RatingBar(
//                     itemSize:25 ,
//                     initialRating: 0,
//                     direction: Axis.horizontal,
//                     allowHalfRating: true,
//                     itemCount: 5,
//                     ratingWidget: RatingWidget(
//
//                         full: const Icon(Icons.star, color: Colors.orange),
//                         half: const Icon(
//                           Icons.star_half,
//                           color: Colors.orange,
//                         ),
//                         empty: const Icon(
//                           Icons.star_outline,
//                           color: Colors.orange,
//                         )),
//                     onRatingUpdate: (value) {
//                       setState(() {
//                       });
//                     }),
//
//               ],
//             ),
//
//           ),
//         ),
//       ),
//
//     ],
//   ),
// ),
// Padding(
//   padding: const EdgeInsets.all(8.0),
//   child:
//   Row(
//     children: [
//       Expanded(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             width: 200,
//             height: 320,
//             decoration:  BoxDecoration(
//                 color: Color.fromARGB(255, 197, 161, 181),
//                 borderRadius: BorderRadius.circular(25)
//             ),
//             child: Column(
//               children: [
//                 ClipOval(
//                   child: Image(
//                     image: NetworkImage(imageUrl),
//                     height: 250,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const Text('tamer mohamed ',style:TextStyle(
//                     color: Colors.white,
//                     fontSize: 20
//                 ) ,),
//                 RatingBar(
//                     itemSize:25 ,
//                     initialRating: 0,
//                     direction: Axis.horizontal,
//                     allowHalfRating: true,
//                     itemCount: 5,
//                     ratingWidget: RatingWidget(
//
//                         full: const Icon(Icons.star, color: Colors.orange),
//                         half: const Icon(
//                           Icons.star_half,
//                           color: Colors.orange,
//                         ),
//                         empty: const Icon(
//                           Icons.star_outline,
//                           color: Colors.orange,
//                         )),
//                     onRatingUpdate: (value) {
//                       setState(() {
//                       });
//                     }),
//
//               ],
//             ),
//
//           ),
//         ),
//       ),
//       Expanded(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             width: 200,
//             height: 320,
//             decoration:  BoxDecoration(
//                 color: Color.fromARGB(255, 197, 161, 181),
//                 borderRadius: BorderRadius.circular(25)
//             ),
//             child: Column(
//               children: [
//                 ClipOval(
//                   child: Image(
//                     image: NetworkImage(imageUrl),
//                     height: 250,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const Text('tamer mohamed ',style:TextStyle(
//                     color: Colors.white,
//                     fontSize: 20
//                 ) ,),
//                 RatingBar(
//                     itemSize:25 ,
//                     initialRating: 0,
//                     direction: Axis.horizontal,
//                     allowHalfRating: true,
//                     itemCount: 5,
//                     ratingWidget: RatingWidget(
//
//                         full: const Icon(Icons.star, color: Colors.orange),
//                         half: const Icon(
//                           Icons.star_half,
//                           color: Colors.orange,
//                         ),
//                         empty: const Icon(
//                           Icons.star_outline,
//                           color: Colors.orange,
//                         )),
//                     onRatingUpdate: (value) {
//                       setState(() {
//                       });
//                     }),
//
//               ],
//             ),
//
//           ),
//         ),
//       ),
//
//     ],
//   ),
// ),
// Padding(
//   padding: const EdgeInsets.all(8.0),
//   child:
//   Row(
//     children: [
//       Expanded(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             width: 200,
//             height: 320,
//             decoration:  BoxDecoration(
//                 color: Color.fromARGB(255, 197, 161, 181),
//                 borderRadius: BorderRadius.circular(25)
//             ),
//             child: Column(
//               children: [
//                 ClipOval(
//                   child: Image(
//                     image: NetworkImage(imageUrl),
//                     height: 250,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const Text('tamer mohamed ',style:TextStyle(
//                     color: Colors.white,
//                     fontSize: 20
//                 ) ,),
//                 RatingBar(
//                     itemSize:25 ,
//                     initialRating: 0,
//                     direction: Axis.horizontal,
//                     allowHalfRating: true,
//                     itemCount: 5,
//                     ratingWidget: RatingWidget(
//
//                         full: const Icon(Icons.star, color: Colors.orange),
//                         half: const Icon(
//                           Icons.star_half,
//                           color: Colors.orange,
//                         ),
//                         empty: const Icon(
//                           Icons.star_outline,
//                           color: Colors.orange,
//                         )),
//                     onRatingUpdate: (value) {
//                       setState(() {
//                       });
//                     }),
//
//               ],
//             ),
//
//           ),
//         ),
//       ),
//       Expanded(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             width: 200,
//             height: 320,
//             decoration:  BoxDecoration(
//                 color: Color.fromARGB(255, 197, 161, 181),
//                 borderRadius: BorderRadius.circular(25)
//             ),
//             child: Column(
//               children: [
//                 ClipOval(
//                   child: Image(
//                     image: NetworkImage(imageUrl),
//                     height: 250,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const Text('tamer mohamed ',style:TextStyle(
//                     color: Colors.white,
//                     fontSize: 20
//                 ) ,),
//                 RatingBar(
//                     itemSize:25 ,
//                     initialRating: 0,
//                     direction: Axis.horizontal,
//                     allowHalfRating: true,
//                     itemCount: 5,
//                     ratingWidget: RatingWidget(
//
//                         full: const Icon(Icons.star, color: Colors.orange),
//                         half: const Icon(
//                           Icons.star_half,
//                           color: Colors.orange,
//                         ),
//                         empty: const Icon(
//                           Icons.star_outline,
//                           color: Colors.orange,
//                         )),
//                     onRatingUpdate: (value) {
//                       setState(() {
//                       });
//                     }),
//
//               ],
//             ),
//
//           ),
//         ),
//       ),
//
//     ],
//   ),
// ),

// Padding(
// padding: const EdgeInsets.all(8.0),
// child:
// Row(
// children: [
// Expanded(
// child: Padding(
// padding: const EdgeInsets.all(8.0),
// child: Container(
// width: 180,
// height: 160,
// decoration:  BoxDecoration(
// color: Color.fromARGB(255, 197, 161, 181),                            borderRadius: BorderRadius.circular(25)
// ),
// child: Column(
// children: [
// ClipRRect(
// borderRadius: BorderRadius.circular(10.0), //add border radius
// child: Image(
// image: NetworkImage(imageUrl2),
// fit:BoxFit.fill,
// ),
// ),
// const SizedBox(
// height: 10,
// ),
// const Text('Janes ',style:TextStyle(
// color: Colors.white,
// fontSize: 20
// ) ,),
// RatingBar(
// itemSize:25 ,
// initialRating: 0,
// direction: Axis.horizontal,
// allowHalfRating: true,
// itemCount: 5,
// ratingWidget: RatingWidget(
//
// full: const Icon(Icons.star, color: Colors.orange),
// half: const Icon(
// Icons.star_half,
// color: Colors.orange,
// ),
// empty: const Icon(
// Icons.star_outline,
// color: Colors.orange,
// )),
// onRatingUpdate: (value) {
// setState(() {
// });
// }),
//
// ],
// ),
//
// ),
// ),
// ),
// Expanded(
// child: Padding(
// padding: const EdgeInsets.all(8.0),
// child: Container(
// width: 200,
// height: 320,
// decoration:  BoxDecoration(
// color: Color.fromARGB(255, 197, 161, 181),                              borderRadius: BorderRadius.circular(25)
// ),
// child: Column(
// children: [
// ClipRRect(
// child: Image(
// image: NetworkImage(imageUrl2),
// height: 250,
// ),
// ),
// const SizedBox(
// height: 10,
// ),
// const Text('Skirts',style:TextStyle(
// color: Colors.white,
// fontSize: 20
// ) ,),
// RatingBar(
// itemSize:25 ,
// initialRating: 0,
// direction: Axis.horizontal,
// allowHalfRating: true,
// itemCount: 5,
// ratingWidget: RatingWidget(
//
// full: const Icon(Icons.star, color: Colors.orange),
// half: const Icon(
// Icons.star_half,
// color: Colors.orange,
// ),
// empty: const Icon(
// Icons.star_outline,
// color: Colors.orange,
// )),
// onRatingUpdate: (value) {
// setState(() {
// });
// }),
//
// ],
// ),
//
// ),
// ),
// ),
//
// ],
// ),
// ),
//
