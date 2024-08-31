import 'package:flutter/material.dart';
import 'package:resume_builder/screen/components/text_box.dart';
import 'package:resume_builder/utils/colors.dart';
import 'package:resume_builder/utils/global.dart';

class Educationpage extends StatefulWidget {
  const Educationpage({super.key});

  @override
  State<Educationpage> createState() => _EducationpageState();
}

class _EducationpageState extends State<Educationpage> {
  @override
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
            'Education',
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
        body: Stack(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Great,let's work on your education.",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),),
                  Text("Include every school,even if you are still there or \n didn't graduate.",style: TextStyle(),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10,left: 10,top: 50),
              child: SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Column(
                    children: List.generate(
                      educationlist.length,
                      (index) => Container(
                        margin: const EdgeInsets.all(10),
                        height: 420,
                        width: double.infinity,
                        decoration: const BoxDecoration(color: Colors.white),
                        child: Column(children: [
                          const SizedBox(
                            height: 20,
                          ),
                          textBox(
                              isPhone: false,
                              isAddress: false,
                              label: 'School Name',
                              hint: 'Podar School',
                              txtController: educationlist[index]['School Name']),
                          textBox(
                              isPhone: false,
                              isAddress: false,
                              label: 'Degree',
                              hint: 'B.com',
                              txtController: educationlist[index]['Degree']),
                          Row(
                            children: [
                              Expanded(
                                child: textBox(
                                    isPhone: true,
                                    isAddress: false,
                                    label: 'Start Date',
                                    hint: '01/03/2022',
                                    txtController: educationlist[index]
                                        ['Start Date']),
                              ),
                              Expanded(
                                child: textBox(
                                    isPhone: true,
                                    isAddress: false,
                                    label: 'EndDate',
                                    hint: '01/04/2023',
                                    txtController: educationlist[index]
                                        ['End Date']),
                              ),
                            ],
                          ),
                          textBox(
                              isPhone: false,
                              isAddress: true,
                              label: 'Description',
                              hint:
                                  'i have done my b.com degree from vnsgu university',
                              txtController: educationlist[index]
                                  ['Description']),
                        ]),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 180,
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        margin: EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                            color: blue,
                            border: Border.all(color: grey, width: 2),
                            borderRadius: BorderRadius.circular(12)),
                        alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              educationlist.add({
                                'School Name':TextEditingController(),
                                'Degree':TextEditingController(),
                                'Start Date':TextEditingController(),
                                'End Date':TextEditingController(),
                                'Description':TextEditingController(),
                              });
                            });
                          },
                          child: Text(
                            "Add +",
                            style: TextStyle(color: offWhite, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 180,
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        margin: EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                            color: blue,
                            border: Border.all(color: grey, width: 2),
                            borderRadius: BorderRadius.circular(12)),
                        alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              if (educationlist.length > 1) {
                                educationlist.removeAt(educationlist.length - 1);
                              }
                            });
                          },
                          child: Text(
                            "Remove -",
                            style: TextStyle(color: offWhite, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 10, right: 10,bottom: 10),
                  decoration: BoxDecoration(
                      color: blue, borderRadius: BorderRadius.circular(12)),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('/skill');
                        },
                        child: Text(
                          "SAVE & NEXT ",
                          style: TextStyle(color: offWhite, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
    );
  }
}
