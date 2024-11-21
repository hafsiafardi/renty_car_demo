// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

// import 'dart:io';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_agence1/ath/car.dart';
import 'package:image_picker/image_picker.dart';
class EditProfilPage extends StatefulWidget {
  const EditProfilPage({super.key});
@override
  // ignore: library_private_types_in_public_api
  _EditProfilPageState createState() => _EditProfilPageState();
}

class _EditProfilPageState extends State<EditProfilPage> {
  final ImagePicker _picker = ImagePicker();
   File? _profileImage;

  Future<void> _pickImage(ImageSource source) async {
    // ignore: no_leading_underscores_for_local_identifiers
    try {
final XFile? image =
        await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        // _profileImage = File(image.path);
      });
    }
  }
  catch (e) {
    // ignore: avoid_print
    print("Erreur lors de la sélection de l'image : $e");
  }
  }
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  
  get style => null;
    
  @override
  void dispose() {
    emailController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    phoneController.dispose();
    super.dispose();
  }
  

  @override
    Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            Container(
              padding: EdgeInsets.only(top: 40, left: 20, right: 20),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [

                      IconButton(
                        onPressed: () {
                          // Ajouter une fonction pour revenir à l'écran précédent
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Edit Profile",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: 40), // Pour équilibrer l'espace du bouton
                    ],
                  ),
                  SizedBox(height: 20),
                  // Photo de profil
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      // CircleAvatar(
                      //   radius: 50,
                      //   backgroundImage: AssetImage('assets/profil.png'), // Ajouter votre image ici
                      // ),
                      // Positioned(
                      //   bottom: 0,
                      //   right: 10,
                      //   child: InkWell(
                      //     onTap: () {
                      //       // Ajouter une fonction pour changer la photo de profil
                      //     },
                      //     child: Container(
                      //       padding: EdgeInsets.all(5),
                      //       decoration: BoxDecoration(
                      //         color: Colors.white,
                      //         shape: BoxShape.circle,
                      //         boxShadow: [
                      //           BoxShadow(
                      //             color: Colors.black26,
                      //             blurRadius: 5,
                      //           ),
                      //         ],
                      //       ),
                      //       child: Icon(
                      //         Icons.camera_alt,
                      //         color: Colors.green,
                      //       ),
                      //     ),
                      //   ), 
                      // ),

                      CircleAvatar(
              radius: 60,
              backgroundColor: Colors.grey.shade200,
              backgroundImage:
                  _profileImage != null ? FileImage(_profileImage!) : null,
              child: _profileImage == null
                  ? Icon(
                      Icons.camera_alt,
                      color: Colors.grey,
                      size: 50,
                    )
                  : null,
            ),
            SizedBox(height: 20),
            // Bouton pour ajouter une image
            ElevatedButton.icon(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          leading: Icon(Icons.photo),
                          title: Text('Choose from Gallery'),
                          onTap: () {
                            Navigator.pop(context);
                            _pickImage(ImageSource.gallery);
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.camera_alt),
                          title: Text('Take a Photo'),
                          onTap: () {
                            Navigator.pop(context);
                            _pickImage(ImageSource.camera);
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              icon: Icon(Icons.camera_alt),
              label: Text('Add Image'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
                    ],
                  ),
              ),
            SizedBox(height: 20),
            // Formulaire
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  // Prénom
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Full Name",
                      // hintText: "Christi",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  // Nom
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Email",
                      // hintText: "Nataylor",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  // Numéro de téléphone
                  TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: "Mobile Number",
                      // hintText: "+91 0000 51412",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),             
                  SizedBox(height: 30),
                  // Bouton de sauvegarde
                  ElevatedButton(
                    onPressed: () {
                      // Ajouter une fonction pour sauvegarder les changements
                       Navigator.of(context).push(MaterialPageRoute(builder:(context)=>const CarPage()));
                       },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      "Save",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
