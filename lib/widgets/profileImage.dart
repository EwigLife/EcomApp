import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:firebase_storage/firebase_storage.dart';

class ProfileImageView extends StatefulWidget {
  @override
  _ProfileImageViewState createState() => _ProfileImageViewState();
}

File _image;

final ImagePicker _picker = ImagePicker();

class _ProfileImageViewState extends State<ProfileImageView> {

  Future getImage() async{
    var image= await _picker.getImage(source: ImageSource.gallery);

    setState((){
      _image = File(image.path);
      print('Image Path $_image');
    });
  }

  Future uploadPic(BuildContext context) async{
    String fileName = basename(_image.path);
    StorageReference firebaseStorageRef = FirebaseStorage.instance.ref().child(fileName);
    StorageUploadTask uploadTask = firebaseStorageRef.putFile(_image);
    StorageTaskSnapshot taskSnapshot=await uploadTask.onComplete;
    setState(() {
      print("Profile Picture uploaded");
      Scaffold.of(context).showSnackBar(SnackBar(content: Text('Profile Picture Uploaded')));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 95,
                backgroundColor: Colors.pinkAccent,
                child: ClipOval(
                  child: SizedBox(
                    width: 180.0,
                    height: 180.0,
                    child: (_image!=null)?Image.file(
                      _image,
                      fit: BoxFit.fill,):Image.network(
                      "https://images.unsplash.com/photo-1502164980785-f8aa41d53611?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100.0,),
                child: IconButton(
                  icon: Icon(
                    Icons.camera_alt,
                    size: 30.0,
                    ),
                    onPressed: () async {
                      await getImage();
                      uploadPic(context);
                      },
                      ),
              ),
            ],
          ),
        ]
      ),
    );
  }
}

