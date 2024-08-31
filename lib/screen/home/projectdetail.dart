import 'package:flutter/material.dart';
import 'package:resume_builder/screen/components/text_box.dart';
import 'package:resume_builder/utils/colors.dart';
import 'package:resume_builder/utils/global.dart';
class Projectdetail extends StatefulWidget {
  const Projectdetail({super.key});

  @override
  State<Projectdetail> createState() => _ProjectdetailState();
}

class _ProjectdetailState extends State<Projectdetail> {
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
          'Project',
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
                Text("Add your Project Details.",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),),
                Text("We suggest including an email and phone number.",style: TextStyle(),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10,left: 10,top: 40),
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  children: List.generate(
                    projectlist.length,
                        (index) => Container(
                      margin: const EdgeInsets.all(10),
                      height: 270,
                      width: double.infinity,
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Column(children: [
                        const SizedBox(
                          height: 20,
                        ),
                        textBox(
                            isPhone: false,
                            isAddress: false,
                            label: 'Project',
                            hint: 'Ecommerce app',
                            txtController: projectlist[index]['Project']),
                        textBox(
                            isPhone: false,
                            isAddress: true,
                            label: 'Description',
                            hint: 'i have done my project work in company',
                            txtController: projectlist[index]['Description']),
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
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                          color: blue,
                          border: Border.all(color: grey, width: 2),
                          borderRadius: BorderRadius.circular(12)),
                      alignment: Alignment.center,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            projectlist.add({
                              'Project':TextEditingController(),
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
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                          color: blue,
                          border: Border.all(color: grey, width: 2),
                          borderRadius: BorderRadius.circular(12)),
                      alignment: Alignment.center,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            if (projectlist.length > 1) {
                              projectlist.removeAt(projectlist.length - 1);
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
                margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                decoration: BoxDecoration(
                    color: blue, borderRadius: BorderRadius.circular(12)),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/pdf');
                      },
                      child: Text(
                        "CREATE PDF",
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
