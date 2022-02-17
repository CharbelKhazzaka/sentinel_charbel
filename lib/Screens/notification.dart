import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}
class Patient {
  final String title;
  const Patient({
    required this.title,
  });
}
class _NotificationsState extends State<Notifications> {
  @override
  Widget  build (BuildContext context) {
    const allPatients = [
      Patient(title: 'Olivia Bale'),
      Patient(title: 'John Doe'),
      Patient(title: 'Amelia Charlotte'),
      Patient(title: 'Baldwin Harold'),
      Patient(title: 'Jane Bale'),
      Patient(title: 'John Doe'),
      Patient(title: 'Amelia Charlotte'),
      Patient(title: 'Baldwin Harold'),
    ];
    List<Patient> Patients = allPatients;
      return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'Notifications',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            )
          ],
          toolbarHeight: 125,
        ),
        body: SizedBox(
              height: MediaQuery.of(context).size.height * 1,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  final Patient = Patients[index];
                   return Card(
                  elevation: 15,
                  child: ListTile(
                    dense: true,
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/blood1.png'),
                    ),
                    title: Text(
                      Patient.title,
                      style: TextStyle(
                        fontSize: 20,fontWeight: FontWeight.bold
                      ),
                    ),
                    trailing: Column(
                      children: [
                        Text('2:47 pm'),
                        Container(
                          child: Text(
                            '1',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.teal,
                              shape: BoxShape.circle,
                              borderRadius:BorderRadius.circular(10),),
                        ),
                      ],
                    ),
                  ),
                );
                },
              ),
            ),
      );
    }
  }

