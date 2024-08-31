import 'package:flutter/material.dart';
import 'package:resume_builder/screen/components/text_box.dart';
import 'package:resume_builder/utils/colors.dart';
import 'package:resume_builder/utils/global.dart';

class Referencepage extends StatefulWidget {
  const Referencepage({super.key});

  @override
  State<Referencepage> createState() => _ReferencepageState();
}

class _ReferencepageState extends State<Referencepage> {
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
          'Reference',
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
                Text(
                  "Review or edit this Reference.",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10, top: 20),
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  children: List.generate(
                    referencelist.length,
                    (index) => Container(
                      margin: const EdgeInsets.all(10),
                      height: 320,
                      width: double.infinity,
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Column(children: [
                        const SizedBox(
                          height: 20,
                        ),
                        textBox(
                            isPhone: false,
                            isAddress: false,
                            label: 'Reference Name',
                            hint: 'Rishi Dadhich',
                            txtController: referencelist[index]
                                ['Reference Name']),
                        textBox(
                            isPhone: false,
                            isAddress: false,
                            label: 'Job Title',
                            hint: 'manager',
                            txtController: referencelist[index]['Job Title']),
                        textBox(
                            isPhone: false,
                            isAddress: false,
                            label: 'Email Address',
                            hint: 'rd@gmail.com',
                            txtController: referencelist[index]
                                ['Email Address']),
                        Row(
                          children: [
                            Expanded(
                              child: textBox(
                                  isPhone: false,
                                  isAddress: false,
                                  label: 'Company Name',
                                  hint: 'rk tech',
                                  txtController: referencelist[index]
                                      ['Company Name']),
                            ),
                            Expanded(
                              child: textBox(
                                  isPhone: true,
                                  isAddress: false,
                                  label: 'Phone',
                                  hint: '8756354234',
                                  txtController: referencelist[index]['Phone']),
                            ),
                          ],
                        ),
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
                            referencelist.add({
                              'Reference Name':TextEditingController(),
                              'Job Title':TextEditingController(),
                              'Email Address':TextEditingController(),
                              'Company Name':TextEditingController(),
                              'Phone':TextEditingController(),
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
                            if (referencelist.length > 1) {
                              referencelist.removeAt(referencelist.length - 1);
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
                margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                decoration: BoxDecoration(
                    color: blue, borderRadius: BorderRadius.circular(12)),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/project');
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
