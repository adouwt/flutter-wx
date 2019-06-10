import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

// void main() => runApp(new MyScreen());

class MyScreen extends StatelessWidget {
  Future getImage() async {
    await ImagePicker.pickImage(source: ImageSource.camera);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我的", 
          style: TextStyle(
          color: Colors.black,
          fontSize: 18.0,
          fontFamily: "Courier",
        ),),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.photo_library),
            tooltip: 'photo_library',
            color: Colors.black,
            onPressed: () {
              Navigator.pushNamed(context, "camera");
            },
          ),
          IconButton(
            icon: Icon(Icons.photo_camera),
            tooltip: 'takePhoto',
            color: Colors.black,
            // onPressed: () {
            //   Navigator.pushNamed(context, "camera");
            // },
            onPressed: getImage,
          ),
        ],
        backgroundColor: Colors.grey[300],
      ),
      body: Center(
        child: Text("This is My route"),
      ),
    );
  }
}
