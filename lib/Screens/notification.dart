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
  Widget build(BuildContext context) {
    var mediaqueryHeight = MediaQuery.of(context).size.height;
    var mediaqueryWidth = MediaQuery.of(context).size.width;
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
    return SafeArea(
      child: Scaffold(
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
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(color: Colors.grey,thickness: 0.5,),
            itemCount: 3,
            itemBuilder: (context, index) {
              final Patient = Patients[index];
              return Card(
                child: Padding(
                  padding: EdgeInsets.only(top: mediaqueryHeight * 0.06),
                  child: ListTile(
                    dense: true,
                    leading: CircleAvatar(
                      radius: 30,
                      child: ClipRRect(
                        child: Image.asset('assets/blood1.png'),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      backgroundColor: Colors.grey,
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Patient.title,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Text('High on weed ',style: TextStyle(fontSize: 15,fontFamily:'Roboto'),),
                            Text('420%',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,fontFamily:'Roboto'),),
                          ],
                        ),
                      ],
                    ),
                    trailing: Column(
                      children: [
                        Text('Today,2:47 pm',style: TextStyle(color: Colors.grey,fontSize: 16,fontFamily:'Roboto'),),
                        Container(
                          child: Text(
                            '1',
                            style: TextStyle(color: Colors.white, fontSize: 25,fontFamily:'Roboto'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
