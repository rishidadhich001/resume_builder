import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_builder/model/model.dart';

List l1=[
  {
    'icon':Icons.file_download_outlined,
    'name':"Download CV's",
  },
  {
    'icon':Icons.star_border_purple500,
    'name':'Rate Us',
  },
  {
    'icon':Icons.feedback_outlined,
    'name':'Feedback',
  },
  {
    'icon':Icons.share,
    'name':'Share App',
  },
  {
    'icon':Icons.privacy_tip,
    'name':'Privacy Policy & Terms',
  },
  {
    'icon':Icons.apps_sharp,
    'name':'More Apps(Ads)',
  },
  {
    'icon':Icons.update,
    'name':'Check For Update',
  },
  {
    'icon':Icons.language,
    'name':'Choose App Language',
  },
];

List<User> userList = [];

// personal detail
TextEditingController txtFirstName = TextEditingController();
TextEditingController txtLastName = TextEditingController();
TextEditingController txtPhone = TextEditingController();
TextEditingController txtAddress =
TextEditingController();
TextEditingController txtProfession =
TextEditingController();
TextEditingController txtGender =
TextEditingController();
TextEditingController txtNationality =
TextEditingController();
TextEditingController txtDob=TextEditingController();
TextEditingController txtEmailaddress =
TextEditingController();

const String defaultProfileImageUrl = "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png";
// work page
List worklist=[{
  'Employer':TextEditingController(),
  'Job':TextEditingController(),
  'Start Date':TextEditingController(),
  'End Date':TextEditingController(),
  'Description':TextEditingController(),
}
];
// education page
List educationlist=[{
  'School Name':TextEditingController(),
  'Degree':TextEditingController(),
  'Start Date':TextEditingController(),
  'End Date':TextEditingController(),
  'Description':TextEditingController(),
}];
// skill page
TextEditingController txtskill=TextEditingController();
List skilllist=[txtskill];
// summary page
TextEditingController txtSummary =TextEditingController();
// language page
TextEditingController txtlanguage=TextEditingController();
List languagelist=[txtlanguage];
// hobbie page
TextEditingController txthobbie=TextEditingController();
List hobbielist=[txthobbie];
// achievement page
List achievementlist=[{
  'Achievement':TextEditingController(),
  'Description':TextEditingController(),
}];
// reference page
List referencelist=[{
  'Reference Name':TextEditingController(),
  'Job Title':TextEditingController(),
  'Email Address':TextEditingController(),
  'Company Name':TextEditingController(),
  'Phone':TextEditingController(),
}];
// project page
List projectlist=[{
  'Project':TextEditingController(),
  'Description':TextEditingController(),
}];

ImagePicker imagePicker = ImagePicker();
File? fileImage;