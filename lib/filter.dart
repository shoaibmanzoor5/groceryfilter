






import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class filter extends StatefulWidget {
  const filter({Key? key}) : super(key: key);

  @override
  _filterState createState() => _filterState();
}

class _filterState extends State<filter> {
  String selected = "";
  List checkListItems = [
    {
      "id": 0,
      "value": false,
      "title": "Eggs",
    },
    {
      "id": 1,
      "value": false,
      "title": "Noodle & Pasta",
    },
    {
      "id": 2,
      "value": false,
      "title": "Chips & Crips",
    },
    {
      "id": 3,
      "value": false,
      "title": "Fast Food",
    },

  ];
  String selected1 = "";
  List checkListItems1 = [
    {
      "id": 0,
      "value": false,
      "title": "Individual Callection",
    },
    {
      "id": 1,
      "value": false,
      "title": "Cocola",
    },
    {
      "id": 2,
      "value": false,
      "title": "Ifad",
    },
    {
      "id": 3,
      "value": false,
      "title": "Kazi Farmas",
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

          leading: IconButton(
            color: Color(0xff3A456E),
            onPressed: () {},
            icon: Icon(Icons.clear),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          actions: <Widget>[

            //   https://github.com/NadeemGitH/GroceryApplication.git



            Padding(
              padding: EdgeInsets.only(right: 150.w, top: 15.h),
              child: Text(
                'Filters',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff3A456E),
                ),
              ),
            ),
          ]),

      body: Container(
        margin: EdgeInsets.only(top: 10.h),

        width: 400.w,
        height: 700.h,
        decoration: BoxDecoration(
            color: Color(0xffF2F3F2),
            borderRadius: BorderRadius.circular(25)),
        child: Column(
          children: [

            Container(
              height: 70,
              width: 500,
              child: Row(children: [
                Padding(
                  padding: EdgeInsets.only(left: 26.w),
                  child: Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff3A456E),
                    ),
                  ),
                ),
              ]),
            ),
            Padding(
              padding: EdgeInsets.only(right: 2.w, left: 20.w),
              child: Column(
                children: List.generate(
                  checkListItems.length,
                      (index) => CheckboxListTile(

                    activeColor: Color(0xff53B175),
                    controlAffinity: ListTileControlAffinity.leading,
                    contentPadding: EdgeInsets.zero,
                    dense: true,
                    title: Text(
                      checkListItems[index]["title"],
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                    value: checkListItems[index]["value"],
                    onChanged: (value) {
                      setState(() {
                        for (var element in checkListItems) {
                          element["value"] = false;
                        }
                        checkListItems[index]["value"] = value;
                        selected =
                        "${checkListItems[index]["id"]}, ${checkListItems[index]["title"]}, ${checkListItems[index]["value"]}";
                      });
                    },
                  ),
                ),
              ),
            ),

            Container(
              height: 70,
              width: 500,
              child: Row(children: [
                Padding(
                  padding: EdgeInsets.only(left: 26.w),
                  child: Text(
                    'Brand',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff3A456E),
                    ),
                  ),
                ),
              ]),
            ),
            Padding(
              padding: EdgeInsets.only(right: 2.w, left: 20.w),
              child: Column(
                children: List.generate(
                  checkListItems1.length,
                      (index) => CheckboxListTile(
                    activeColor: Color(0xff53B175),
                    controlAffinity: ListTileControlAffinity.leading,
                    contentPadding: EdgeInsets.zero,
                    dense: true,
                    title: Text(
                      checkListItems1[index]["title"],
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                    value: checkListItems1[index]["value"],
                    onChanged: (value) {
                      setState(() {
                        for (var element in checkListItems1) {
                          element["value"] = false;
                        }
                        checkListItems1[index]["value"] = value;
                        selected1 =
                        "${checkListItems1[index]["id"]}, ${checkListItems1[index]["title"]}, ${checkListItems1[index]["value"]}";
                      });
                    },
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60.h,
            ),
            Container(

              margin: EdgeInsets.only(right: 0.w, left: 20.w),
              padding: EdgeInsets.only(right: 20.w),




              child: SizedBox(
                height: 60.h,
                width: 400.w,

                child: ElevatedButton(


                  child: Text(
                    'Apply Filter',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  onPressed: () {

                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => new postadd()),
                    // );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)

                    ),
                    primary:  Color(0xff53B175),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

















