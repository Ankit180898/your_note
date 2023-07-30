import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet<void>(
            isDismissible: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
            ),
              context: context,
              builder: (BuildContext context) {
                return SizedBox(
                  height: 200,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Text('Modal BottomSheet'),
                        ElevatedButton(
                          child: const Text('Close BottomSheet'),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  ),
                );
              });
        },
        child: Icon(Icons.add),
      ),
      drawer:Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20))
        ),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  // Important: Remove any padding from the ListView.
                  padding: EdgeInsets.only(top: 30),
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text("Todoify"),
                    ),
                    const SizedBox(height: 20,),
                    ListTile(
                      leading: Icon(
                        Icons.home,
                      ),
                      title: const Text('Home'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.train,
                      ),
                      title: const Text('Page 2'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),

                  ],),
              ),
              // Spacer(), // <-- This will fill up any free-space
              // Everything from here down is bottom aligned in the drawer
              Divider(),
              ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
              ),
            ],
          ))
      ,
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.settings_outlined))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0,right: 15.0,top: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Todoify",),
            const SizedBox(height: 20,),
            Text("What's up "),
            const SizedBox(height: 15,),
            Text("Your notes:"),
            const SizedBox(height: 10,),
            Container(
              height: MediaQuery.of(context).size.height * 0.20,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20)
                
              ),
            ),
            const SizedBox(height: 10,),
            Text("Your todos:"),
            const SizedBox(height: 10,),
            Container(
              height: MediaQuery.of(context).size.height * 0.20,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20)

              ),
            ),
            const SizedBox(height: 10,),
            Text("Your scheduled tasks:"),
            const SizedBox(height: 10,),
            Container(
              height: MediaQuery.of(context).size.height * 0.20,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20)

              ),
            )

          ],
        ),
      ),
    );
  }
}
