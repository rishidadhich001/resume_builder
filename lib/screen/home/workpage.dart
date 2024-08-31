import 'package:flutter/material.dart';
import 'package:resume_builder/screen/components/text_box.dart';
import 'package:resume_builder/utils/colors.dart';
import 'package:resume_builder/utils/global.dart';

class Workpage extends StatefulWidget {
  const Workpage({super.key});

  @override
  State<Workpage> createState() => _WorkpageState();
}

class _WorkpageState extends State<Workpage> {
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
          'Work History',
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
                Text("Tell us about your most recent Job.",style: TextStyle(fontSize:15,fontWeight: FontWeight.bold,),),
                Text("we'll start there and work backward.",style: TextStyle(),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10,left: 10,top: 30),
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  children: List.generate(
                    worklist.length,
                    (index) => Container(
                      margin: const EdgeInsets.all(10),
                      height: 440,
                      width: double.infinity,
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Column(children: [
                        const SizedBox(
                          height: 20,
                        ),
                        textBox(
                            isPhone: false,
                            isAddress: false,
                            label: 'Employer',
                            hint: 'Rishi Dadhich',
                            txtController: worklist[index]['Employer']),
                        textBox(
                            isPhone: false,
                            isAddress: false,
                            label: 'Job Title',
                            hint: 'Manager',
                            txtController: worklist[index]['Job']),
                        Row(
                          children: [
                            Expanded(
                              child: textBox(
                                  isPhone: true,
                                  isAddress: false,
                                  label: 'Start Date',
                                  hint: '01/03/2022',
                                  txtController: worklist[index]['Start Date']),
                            ),
                            Expanded(
                              child: textBox(
                                  isPhone: true,
                                  isAddress: false,
                                  label: 'EndDate',
                                  hint: '01/04/2023',
                                  txtController: worklist[index]['End Date']),
                            ),
                          ],
                        ),
                        textBox(
                            isPhone: false,
                            isAddress: true,
                            label: 'Description',
                            hint:
                                'i am working in it company as a flutter developer',
                            txtController: worklist[index]['Description']),
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
                            worklist.add({
                              'Employer': TextEditingController(),
                              'Job': TextEditingController(),
                              'Start Date': TextEditingController(),
                              'End Date': TextEditingController(),
                              'Description': TextEditingController(),
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
                            if (worklist.length > 1) {
                              worklist.removeAt(worklist.length - 1);
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
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/education');
                  },
                  child: Text(
                    "SAVE & NEXT ",
                    style: TextStyle(color: offWhite, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
