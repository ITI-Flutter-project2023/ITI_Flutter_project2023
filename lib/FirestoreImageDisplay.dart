// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: depend_on_referenced_packages, file_names
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
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
  final storage = FirebaseStorage.instance;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    imageUrl = '';
    imageUrl1 = '';
    imageUrl2 = '';
    imageUrl3 = '';
    getImageUrl();
  }
  // @override
  // void initState() {
  //   super.initState();
  //   // Set the initial value of imageUrl to an empty string
  //   imageUrl = '';
  //   imageUrl1 = '';
  //   imageUrl2 = '';
  //   imageUrl3 = '';
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
                child:
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 200,
                          height: 320,
                          decoration:  BoxDecoration(
                              color: Colors.black,
                            borderRadius: BorderRadius.circular(25)
                          ),
                          child: Column(
                            children: [
                              ClipOval(
                                child: Image(
                                  image: NetworkImage(imageUrl),
                                  height: 250,
                                ),
                              ),

                              const SizedBox(
                                height: 10,
                              ),
                              const Text('tamer mohamed ',style:TextStyle(
                                  color: Colors.white,
                                  fontSize: 20
                              ) ,),
                              RatingBar(
                                  itemSize:25 ,
                                  initialRating: 0,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  ratingWidget: RatingWidget(

                                      full: const Icon(Icons.star, color: Colors.orange),
                                      half: const Icon(
                                        Icons.star_half,
                                        color: Colors.orange,
                                      ),
                                      empty: const Icon(
                                        Icons.star_outline,
                                        color: Colors.orange,
                                      )),
                                  onRatingUpdate: (value) {
                                    setState(() {
                                    });
                                  }),

                            ],
                          ),

                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 200,
                          height: 320,
                          decoration:  BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(25)
                          ),
                          child: Column(
                            children: [
                              ClipOval(
                                child: Image(
                                  image: NetworkImage(imageUrl),
                                  height: 250,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text('tamer mohamed ',style:TextStyle(
                                  color: Colors.white,
                                  fontSize: 20
                              ) ,),
                              RatingBar(
                                  itemSize:25 ,
                                  initialRating: 0,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  ratingWidget: RatingWidget(

                                      full: const Icon(Icons.star, color: Colors.orange),
                                      half: const Icon(
                                        Icons.star_half,
                                        color: Colors.orange,
                                      ),
                                      empty: const Icon(
                                        Icons.star_outline,
                                        color: Colors.orange,
                                      )),
                                  onRatingUpdate: (value) {
                                    setState(() {
                                    });
                                  }),

                            ],
                          ),

                        ),
                      ),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 200,
                          height: 320,
                          decoration:  BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(25)
                          ),
                          child: Column(
                            children: [
                              ClipOval(
                                child: Image(
                                  image: NetworkImage(imageUrl1),
                                  height: 250,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text('tamer mohamed ',style:TextStyle(
                                  color: Colors.white,
                                  fontSize: 20
                              ) ,),
                              RatingBar(
                                  itemSize:25 ,
                                  initialRating: 0,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  ratingWidget: RatingWidget(

                                      full: const Icon(Icons.star, color: Colors.orange),
                                      half: const Icon(
                                        Icons.star_half,
                                        color: Colors.orange,
                                      ),
                                      empty: const Icon(
                                        Icons.star_outline,
                                        color: Colors.orange,
                                      )),
                                  onRatingUpdate: (value) {
                                    setState(() {
                                    });
                                  }),

                            ],
                          ),

                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 200,
                          height: 320,
                          decoration:  BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(25)
                          ),
                          child: Column(
                            children: [
                              ClipOval(
                                child: Image(
                                  image: NetworkImage(imageUrl),
                                  height: 250,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text('tamer mohamed ',style:TextStyle(
                                  color: Colors.white,
                                  fontSize: 20
                              ) ,),
                              RatingBar(
                                  itemSize:25 ,
                                  initialRating: 0,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  ratingWidget: RatingWidget(

                                      full: const Icon(Icons.star, color: Colors.orange),
                                      half: const Icon(
                                        Icons.star_half,
                                        color: Colors.orange,
                                      ),
                                      empty: const Icon(
                                        Icons.star_outline,
                                        color: Colors.orange,
                                      )),
                                  onRatingUpdate: (value) {
                                    setState(() {
                                    });
                                  }),

                            ],
                          ),

                        ),
                      ),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 200,
                          height: 320,
                          decoration:  BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(25)
                          ),
                          child: Column(
                            children: [
                              ClipOval(
                                child: Image(
                                  image: NetworkImage(imageUrl),
                                  height: 250,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text('tamer mohamed ',style:TextStyle(
                                  color: Colors.white,
                                  fontSize: 20
                              ) ,),
                              RatingBar(
                                  itemSize:25 ,
                                  initialRating: 0,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  ratingWidget: RatingWidget(

                                      full: const Icon(Icons.star, color: Colors.orange),
                                      half: const Icon(
                                        Icons.star_half,
                                        color: Colors.orange,
                                      ),
                                      empty: const Icon(
                                        Icons.star_outline,
                                        color: Colors.orange,
                                      )),
                                  onRatingUpdate: (value) {
                                    setState(() {
                                    });
                                  }),

                            ],
                          ),

                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 200,
                          height: 320,
                          decoration:  BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(25)
                          ),
                          child: Column(
                            children: [
                              ClipOval(
                                child: Image(
                                  image: NetworkImage(imageUrl),
                                  height: 250,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text('tamer mohamed ',style:TextStyle(
                                  color: Colors.white,
                                  fontSize: 20
                              ) ,),
                              RatingBar(
                                  itemSize:25 ,
                                  initialRating: 0,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  ratingWidget: RatingWidget(

                                      full: const Icon(Icons.star, color: Colors.orange),
                                      half: const Icon(
                                        Icons.star_half,
                                        color: Colors.orange,
                                      ),
                                      empty: const Icon(
                                        Icons.star_outline,
                                        color: Colors.orange,
                                      )),
                                  onRatingUpdate: (value) {
                                    setState(() {
                                    });
                                  }),

                            ],
                          ),

                        ),
                      ),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 200,
                          height: 320,
                          decoration:  BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(25)
                          ),
                          child: Column(
                            children: [
                              ClipOval(
                                child: Image(
                                  image: NetworkImage(imageUrl),
                                  height: 250,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text('tamer mohamed ',style:TextStyle(
                                  color: Colors.white,
                                  fontSize: 20
                              ) ,),
                              RatingBar(
                                  itemSize:25 ,
                                  initialRating: 0,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  ratingWidget: RatingWidget(

                                      full: const Icon(Icons.star, color: Colors.orange),
                                      half: const Icon(
                                        Icons.star_half,
                                        color: Colors.orange,
                                      ),
                                      empty: const Icon(
                                        Icons.star_outline,
                                        color: Colors.orange,
                                      )),
                                  onRatingUpdate: (value) {
                                    setState(() {
                                    });
                                  }),

                            ],
                          ),

                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 200,
                          height: 320,
                          decoration:  BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(25)
                          ),
                          child: Column(
                            children: [
                              ClipOval(
                                child: Image(
                                  image: NetworkImage(imageUrl),
                                  height: 250,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text('tamer mohamed ',style:TextStyle(
                                  color: Colors.white,
                                  fontSize: 20
                              ) ,),
                              RatingBar(
                                  itemSize:25 ,
                                  initialRating: 0,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  ratingWidget: RatingWidget(

                                      full: const Icon(Icons.star, color: Colors.orange),
                                      half: const Icon(
                                        Icons.star_half,
                                        color: Colors.orange,
                                      ),
                                      empty: const Icon(
                                        Icons.star_outline,
                                        color: Colors.orange,
                                      )),
                                  onRatingUpdate: (value) {
                                    setState(() {
                                    });
                                  }),

                            ],
                          ),

                        ),
                      ),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 200,
                          height: 320,
                          decoration:  BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(25)
                          ),
                          child: Column(
                            children: [
                              ClipOval(
                                child: Image(
                                  image: NetworkImage(imageUrl),
                                  height: 250,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text('tamer mohamed ',style:TextStyle(
                                  color: Colors.white,
                                  fontSize: 20
                              ) ,),
                              RatingBar(
                                  itemSize:25 ,
                                  initialRating: 0,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  ratingWidget: RatingWidget(

                                      full: const Icon(Icons.star, color: Colors.orange),
                                      half: const Icon(
                                        Icons.star_half,
                                        color: Colors.orange,
                                      ),
                                      empty: const Icon(
                                        Icons.star_outline,
                                        color: Colors.orange,
                                      )),
                                  onRatingUpdate: (value) {
                                    setState(() {
                                    });
                                  }),

                            ],
                          ),

                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 200,
                          height: 320,
                          decoration:  BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(25)
                          ),
                          child: Column(
                            children: [
                              ClipOval(
                                child: Image(
                                  image: NetworkImage(imageUrl),
                                  height: 250,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text('tamer mohamed ',style:TextStyle(
                                  color: Colors.white,
                                  fontSize: 20
                              ) ,),
                              RatingBar(
                                  itemSize:25 ,
                                  initialRating: 0,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  ratingWidget: RatingWidget(

                                      full: const Icon(Icons.star, color: Colors.orange),
                                      half: const Icon(
                                        Icons.star_half,
                                        color: Colors.orange,
                                      ),
                                      empty: const Icon(
                                        Icons.star_outline,
                                        color: Colors.orange,
                                      )),
                                  onRatingUpdate: (value) {
                                    setState(() {
                                    });
                                  }),

                            ],
                          ),

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
    final ref = storage.ref().child('/file/5.jpg');
    final ref1 = storage.ref().child('/file/1.jpg');
    final ref2 = storage.ref().child('/file/2.jpg');
    final ref3 = storage.ref().child('/file/3.jpg');
    // Get teh inageUrl to download URL
    final url = await ref.getDownloadURL();
    final url1 = await ref1.getDownloadURL();
    final url2 = await ref2.getDownloadURL();
    final url3 = await ref3.getDownloadURL();
    setState(() {
      imageUrl = url;
      imageUrl1 = url1;
      imageUrl2 = url2;
      imageUrl3 = url3;
    });
  }
}

