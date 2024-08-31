import 'package:flutter/material.dart';

import 'package:resume_builder/screen/home/achievementpage.dart';
import 'package:resume_builder/screen/home/educationpage.dart';
import 'package:resume_builder/screen/home/hobbiepage.dart';
import 'package:resume_builder/screen/home/languagepage.dart';
import 'package:resume_builder/screen/home/personalpage.dart';
import 'package:resume_builder/screen/home/projectdetail.dart';
import 'package:resume_builder/screen/home/referencepage.dart';
import 'package:resume_builder/screen/home/resumebuilder.dart';
import 'package:resume_builder/screen/home/skillpage.dart';
import 'package:resume_builder/screen/home/summarypage.dart';
import 'package:resume_builder/screen/home/workpage.dart';
import 'package:resume_builder/screen/pdf_view.dart';


Map<String, Widget Function(BuildContext context)> routes = {
  '/':(context)=>const Resumebuilder(),
  '/personal':(context)=>const Personalpage(),
  '/work':(context)=>const Workpage(),
  '/education':(context)=> const Educationpage(),
  '/skill':(context)=>const Skillpage(),
  '/summary':(context)=>const Summarypage(),
  '/language':(context)=>const Languagepage(),
  '/hobbie':(context)=>const Hobbiepage(),
  '/achieve':(context)=>const Achievementpage(),
  '/reference':(context)=>const Referencepage(),
  '/project':(context)=>const Projectdetail(),
  '/pdf':(context)=>const PdfViewPage(),
};