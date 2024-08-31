import 'package:flutter/material.dart';
import 'package:resume_builder/utils/colors.dart';
import 'package:resume_builder/utils/global.dart';

class Resumebuilder extends StatefulWidget {
  const Resumebuilder({super.key});

  @override
  State<Resumebuilder> createState() => _ResumebuilderState();
}

class _ResumebuilderState extends State<Resumebuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blue,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: offWhite,
            )),
        title: Text(
          'Resume Builder',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w500, color: offWhite),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.file_download_outlined),
            color: offWhite,
          ),
        ],
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed('/personal');
        },
        child: Container(
          height: 60,
          width: double.infinity,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: blue,
          ),
          alignment: Alignment.center,
          child: Text(
            "CREATE",
            style: TextStyle(
              color: offWhite,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}

ListTile l1Contain({required int index}) {
  return ListTile(
    leading: Icon(
      l1[index]['icon'],
      color: Colors.black,
    ),
    title: Text(
      l1[index]['name'],
      style: const TextStyle(color: Colors.black),
    ),
  );
}
