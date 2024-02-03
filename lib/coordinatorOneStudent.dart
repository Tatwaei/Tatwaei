import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:async';
import 'dart:math';
import 'StudentOppDetails.dart';

class coordinatorOneStudent extends StatefulWidget {
  @override
  _coordinatorOneStudent createState() => _coordinatorOneStudent();
}

class _coordinatorOneStudent extends State<coordinatorOneStudent> {

String initialName = "رغد بنت محمد ال ناصر المحمدي";
String initialID = "0000000";

Future getImageFromDatabase() async {
  // Execute a query to retrieve the image data from the database
  //var imageData = await executeQuery('SELECT image_data FROM images WHERE id = 1');

  // Convert the image data to a suitable format (e.g., Uint8List)
  //var imageBytes = convertImageData(imageData);

  setState(() {
  //  image = imageBytes;
  });

  myAlert();
}

  bool showList1 = false;
  bool showList2 = false;

  List<String> currentList =List<String>.generate(30, (index) => 'Item $index');
  List<String> compList = List<String>.generate(30, (index) => 'Item $index');

  void myAlert() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Color(0xFFf4f1be),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            
            content: Container(
              height: MediaQuery.of(context).size.width * 0.8,
              width: MediaQuery.of(context).size.height * 0.4,
              child: Column(
                children: [
                //  if (image != null)
                    Container(
                      width: 200, // Set the desired width of the container
                      height: 200, // Set the desired height of the container
                     // child: Image.memory(
                       // image,
                      //  fit: BoxFit.cover,
                     // ),
                    ),
                 // if (image == null)
                   // Text(
                    //  'No Image Uploaded',
                    //  style: TextStyle(fontSize: 20),
                   // ),
                 
                 
                ],
              ),
            ),
            actions: [
              ButtonBar(
                buttonPadding: EdgeInsets.only(right: 50),
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFFb4d392)),
                    ),
                    child: Text('رفض',
                        style: TextStyle(color: Color(0xFF0A2F5A))),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Perform save operation
                      // Add your save logic here
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFFb4d392)),
                    ),
                    child:
                        Text('توثيق', style: TextStyle(color: Color(0xFF0A2F5A))),
                  ),
                ],
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
            backgroundColor: Color(0xFFece793),
            iconTheme: IconThemeData(color: Color(0xFFD3CA25), size: 45.0),
            title: Stack(
              alignment: Alignment.centerRight,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(0),
                      height: 58,
                      width: 60,
                    ),
                  ],
                ),
                Positioned(
                  right: 80,
                  top: 20,
                  child: Text(
                    'طلابي',
                    style: TextStyle(
                      color: Color(0xFF0A2F5A),
                      fontSize: 28,
                    ),
                  ),
                ),
              ],
            ),
            leading: IconButton(
                iconSize: 70,
                padding: EdgeInsets.only(bottom: 6, left: 300),
                color: Color.fromARGB(115, 127, 179, 71),
                onPressed: () {},
                icon: Icon(Icons.handshake_rounded))),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 20.0),
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  color: Color(0xFFD3CA25),
                  padding: EdgeInsets.only(bottom: 10, left: 310),
                  icon: Transform(
                    alignment: Alignment.topRight,
                    transform: Matrix4.rotationY(pi),
                    child: Icon(Icons.arrow_back),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              SizedBox(height: 10),

              Container(
                alignment: Alignment.center,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xFFb4d392)
                          ),
                        
                                    child: Text(
                                      initialName,
                                      style: TextStyle(fontSize: 18,
                                      color: Color(0xFF0A2F5A)),
                                    
                                ),),

              SizedBox(height: 10),

              Container(
                         alignment: Alignment.center,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xFFb4d392)
                          ),
                         
                                    child: Text(
                                      initialID,
                                      style: TextStyle(fontSize: 18,
                                      color: Color(0xFF0A2F5A)),
                                    ),
                                ),

              SizedBox(height: 10),
              
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 30),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          showList2 = !showList2;
                        });
                      },
                      child: Text(
                        "المكتملة",
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(fontSize: 20, color: Color(0xFF0A2F5A)),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFFb4d392)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: BorderSide(
                              color: Color(0xFFb4d392),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 30),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          showList1 = !showList1;
                        });
                      },
                      child: Text(
                        "الحالية",
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(fontSize: 20, color: Color(0xFF0A2F5A)),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFFb4d392)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: BorderSide(
                              color: Color(0xFFb4d392),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              if (showList1) ...[
                Expanded(
                  child: ListView.builder(
                    itemCount: currentList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFFf7f6d4),
                        ),
                        width: 70.0,
                        height: 90.0,
                        margin: EdgeInsets.only(bottom: 20),
                        child: ListTile(
                          title: Stack(
                            children: [
                              Positioned(
                                top: 12,
                                left: 140,
                                child: Text(
                                  currentList[index],
                                  style: TextStyle(
                                    color: Color(0xFF0A2F5A),
                                    backgroundColor:
                                        Color.fromARGB(115, 127, 179, 71),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 50,
                                left: 140,
                                child: Text(
                                  'Subtitle 1',
                                  style: TextStyle(
                                    color: Color(0xFF0A2F5A),
                                    fontSize: 12,
                                    backgroundColor:
                                        Color.fromARGB(115, 127, 179, 71),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 50,
                                left: 40,
                                child: Text(
                                  'Subtitle 2',
                                  style: TextStyle(
                                    color: Color(0xFF0A2F5A),
                                    fontSize: 12,
                                    backgroundColor:
                                        Color.fromARGB(115, 127, 179, 71),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 0,
                                child: Container(
                                  width: 70.0,
                                  height: 70.0,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.white,
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage('images/logo1.png'),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => OpportunityDetails(),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
              if (showList2) ...[
                Expanded(
                  child: ListView.builder(
                    itemCount: compList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFFf7f6d4),
                        ),
                        width: 70.0,
                        height: 90.0,
                        margin: EdgeInsets.only(bottom: 20),
                        child: ListTile(
                          title: Stack(
                            children: [
                              Positioned(
                                top: 16,
                                left: 140,
                                child: Text(
                                  compList[index],
                                  style: TextStyle(
                                    color: Color(0xFF0A2F5A),
                                    backgroundColor:
                                        Color.fromARGB(115, 127, 179, 71),
                                  ),
                                ),
                              ),
                              Stack(
                                children: [
                                  Positioned(
                                    top: 38,
                                    right: 180,
                                    child: Column(
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            myAlert();
                                          },
                                          child: Text(
                                            'عرض الشهادة',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xFF0A2F5A)),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color.fromARGB(
                                                255, 187, 213, 159),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 9),
                                          ),
                                        ),
                                        SizedBox(height: 20),
                                       // image != null
                                         //   ? Padding(
                                          //      padding:
                                           //         const EdgeInsets.symmetric(horizontal: 20),
                                            //    child: ClipRRect(
                                             //     borderRadius:
                                              //        BorderRadius.circular(8),
                                               //   child: Image.file(
                                                    //to show image, you type like this.
                                                  //  File(image!.memory),
                                                  //  fit: BoxFit.cover,
                                                  //  width:
                                                  //      MediaQuery.of(context)
                                                  //          .size
                                                   //         .width,
                                                  //  height: 300,
                                                 // ),
                                               // ),
                                             // )
                                           // :
                                             Text(
                                                "No Image",
                                                style: TextStyle(fontSize: 20),
                                              ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Positioned(
                                right: 0,
                                child: Container(
                                  width: 70.0,
                                  height: 70.0,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.white,
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage('images/logo1.png'),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => OpportunityDetails(),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}