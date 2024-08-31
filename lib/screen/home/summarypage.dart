import 'package:flutter/material.dart';
import 'package:resume_builder/screen/components/text_box.dart';
import 'package:resume_builder/utils/colors.dart';
import 'package:resume_builder/utils/global.dart';
class Summarypage extends StatefulWidget {
  const Summarypage({super.key});

  @override
  State<Summarypage> createState() => _SummarypageState();
}

class _SummarypageState extends State<Summarypage> {
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
          'Summary',
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
                Text("Finally let's work on your summary.",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),),
                Text("Please select the one that best meets your objective.",style: TextStyle(),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10,left: 10,top: 50),
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  children: [ Container(
                      margin: const EdgeInsets.all(10),
                      height: 170,
                      width: double.infinity,
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Column(children: [
                        const SizedBox(
                          height: 20,
                        ),
                        textBox(
                            isPhone: false,
                            isAddress: true,
                            label: 'About Me',
                            hint: 'seeking a challenging and fast-paced role',
                            txtController: txtSummary,
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
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
                        Navigator.of(context).pushNamed('/language');
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
