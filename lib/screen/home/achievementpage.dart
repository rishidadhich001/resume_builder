import 'package:flutter/material.dart';
import 'package:resume_builder/screen/components/text_box.dart';
import 'package:resume_builder/utils/colors.dart';
import 'package:resume_builder/utils/global.dart';

class Achievementpage extends StatefulWidget {
  const Achievementpage({super.key});

  @override
  State<Achievementpage> createState() => _AchievementpageState();
}

class _AchievementpageState extends State<Achievementpage> {
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
          'Achievement',
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
                  "Add your Achievement.",
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
                    achievementlist.length,
                    (index) => Container(
                      margin: const EdgeInsets.all(10),
                      height: 240,
                      width: double.infinity,
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Column(children: [
                        const SizedBox(
                          height: 20,
                        ),
                        textBox(
                            isPhone: false,
                            isAddress: false,
                            label: 'Achievement',
                            hint: 'certificate achieve by company',
                            txtController: achievementlist[index]['Achievement']),
                        textBox(
                            isPhone: false,
                            isAddress: true,
                            label: 'Description',
                            hint: 'i have done my best work in company',
                            txtController: achievementlist[index]['Description']),
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
                            achievementlist.add({
                              'Achievement':TextEditingController(),
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
                            if (achievementlist.length > 1) {
                              achievementlist
                                  .removeAt(achievementlist.length - 1);
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
                        Navigator.of(context).pushNamed('/reference');
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
