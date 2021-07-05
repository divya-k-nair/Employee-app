import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main()
{
  runApp(App());
}
class App extends StatelessWidget {
  TextEditingController ecode=TextEditingController();
  TextEditingController ename=TextEditingController();
  TextEditingController edes=TextEditingController();
  TextEditingController esal=TextEditingController();
  TextEditingController ecname=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.limeAccent,
        appBar: AppBar(
          title: Text("EMPLOYEE APP"),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 20,),
                TextField(
                  obscureText: true,
                  controller: ecode,
                  decoration: InputDecoration(
                    hintText:"Employee code" ,
                    labelText: "Employee code",
                    prefix: CircularProgressIndicator(),
                    prefixIcon: Icon(Icons.visibility_off,color: Colors.purple,size: 40,) ,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: ename,
                  decoration: InputDecoration(
                    hintText: "Employee name ",
                    labelText: "Employee name",
                    prefix: CircularProgressIndicator(),
                    prefixIcon: Icon(Icons.account_circle,color:Colors.orange ,size: 40,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ) ,
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: edes,
                  decoration: InputDecoration(
                    hintText: "Designation",
                    labelText: "Designation",
                    prefix: CircularProgressIndicator(),
                    prefixIcon: Icon(Icons.accessibility_new_outlined,color: Colors.pink,size: 40,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),

                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: esal,
                  decoration: InputDecoration(
                    hintText: "Salary",
                    labelText: "Salary",
                    prefix: CircularProgressIndicator(),
                    prefixIcon: Icon(Icons.attach_money,color: Colors.deepOrangeAccent,size: 40,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: ecname,
                  decoration: InputDecoration(
                    hintText: "Company name",
                    labelText: "Company name",
                    prefix: CircularProgressIndicator(),
                    prefixIcon: Icon(Icons.account_balance,color: Colors.blue,size: 40,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.teal,
                    onPressed: (){
                      var getCode=int.parse(ecode.text);
                      var getName=ename.text;
                      var getDesignation=edes.text;
                      var getSalary=esal.text;
                      var getcname=ecname.text;
                      print(getCode);
                      print(getName);
                      print(getDesignation);
                      print(getSalary);
                      print(getcname);


                    },
                    child: Text("SUBMIT",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 25,
                      ),

                    ),
                  ),

                ),
              ],//children
            ),
          ),
        ),
      ),

    );
  }
}

