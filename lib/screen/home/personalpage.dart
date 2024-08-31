import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_builder/screen/components/text_box.dart';
import 'package:resume_builder/utils/colors.dart';
import 'package:resume_builder/utils/global.dart';

class Personalpage extends StatefulWidget {
  const Personalpage({super.key});

  @override
  State<Personalpage> createState() => _PersonalpageState();
}

class _PersonalpageState extends State<Personalpage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blue,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back,
              color: offWhite,
            )),
        title: Text(
          'Personal Detail',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w500, color: offWhite),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.home),
            color: offWhite,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('view'),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(children: [
              GestureDetector(
                onTap: () async {
                  XFile? img =
                      await imagePicker.pickImage(source: ImageSource.gallery);
                  setState(() {
                    fileImage = File(img!.path);
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: grey,
                      width: 1.5,
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: fileImage != null
                        ? FileImage(fileImage!)
                        : const NetworkImage(defaultProfileImageUrl),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: textBox(
                        isPhone: false,
                        isAddress: false,
                        label: 'First Name',
                        hint: 'Rishi',
                        txtController: txtFirstName),
                  ),
                  Expanded(
                    child: textBox(
                        isPhone: false,
                        isAddress: false,
                        label: 'Last Name',
                        hint: 'Dadhich',
                        txtController: txtLastName),
                  ),
                ],
              ),
              textBox(
                  isPhone: false,
                  isAddress: false,
                  label: 'Profession',
                  hint: 'developer',
                  txtController: txtProfession),
              Row(
                children: [
                  Expanded(
                    child: textBox(
                        isPhone: false,
                        isAddress: false,
                        label: 'Gender',
                        hint: 'male',
                        txtController: txtGender),
                  ),
                  Expanded(
                    child: textBox(
                        isPhone: false,
                        isAddress: false,
                        label: 'Nationality',
                        hint: 'india',
                        txtController: txtNationality),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: textBox(
                        isPhone: true,
                        isAddress: false,
                        label: 'Date of Birth',
                        hint: '01/09/2003',
                        txtController: txtDob),
                  ),
                  Expanded(
                    child: textBox(
                        isPhone: true,
                        isAddress: false,
                        label: 'Phone',
                        hint: '8745673789',
                        txtController: txtPhone),
                  ),
                ],
              ),
              textBox(
                  isPhone: false,
                  isAddress: false,
                  label: 'Email Address',
                  hint: 'rd@gmail.com',
                  txtController: txtEmailaddress),
              textBox(
                  isPhone: false,
                  isAddress: true,
                  label: 'Address',
                  hint: 'B-601 Gokuldham,parvat patiya,surat',
                  txtController: txtAddress),
            ]),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            if (formKey.currentState!.validate() && fileImage != null) {
              Navigator.of(context).pushNamed('/work');
            }
          },
          child: Container(
            alignment: Alignment.center,
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: blue,
              borderRadius: BorderRadius.circular(15),
            ),
              child: Text(
            'NEXT:WORK HISTORY',
            style: TextStyle(
                fontSize: 25, color: offWhite, fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('formKey', formKey));
  }
}
