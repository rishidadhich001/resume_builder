import 'package:flutter/material.dart';
import 'package:resume_builder/screen/components/text_box.dart';
import 'package:resume_builder/utils/colors.dart';
import 'package:resume_builder/utils/global.dart';
class Hobbiepage extends StatefulWidget {
  const Hobbiepage({super.key});

  @override
  State<Hobbiepage> createState() => _HobbiepageState();
}

class _HobbiepageState extends State<Hobbiepage> {
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
          'Hobbies',
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
                Text("Add your Hobbies.",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),),
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
                    hobbielist.length,
                        (index) => Container(
                      margin: const EdgeInsets.all(10),
                      height: 120,
                      width: double.infinity,
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Column(children: [
                        const SizedBox(
                          height: 20,
                        ),
                        textBox(
                            isPhone: false,
                            isAddress: false,
                            label: 'Hobbies',
                            hint: 'Writing',
                            txtController: hobbielist[index]),
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
                            TextEditingController hobbie =
                            TextEditingController();
                            hobbielist.add(hobbie);
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
                            if (hobbielist.length > 1) {
                              hobbielist.removeAt(hobbielist.length - 1);
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
                        Navigator.of(context).pushNamed('/achieve');
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
