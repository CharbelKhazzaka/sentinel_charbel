import 'package:flutter/material.dart';
import 'package:sentinel/Fake%20Data/model/patient.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class Patient {
  final String title;
  final String status;
  final String image;
  final String number;
  final String date;

   const Patient({
    required this.title,
    required this.status,
    required this.image,
    required this.number,
    required this.date
  });
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    var mediaqueryHeight = MediaQuery.of(context).size.height;
    var mediaqueryWidth = MediaQuery.of(context).size.width;
     const  allPatients = [
      Patient(title: 'Olivia Bale',status:'High blood oxygen',number: '50%',image:'assets/images/red.png',date: 'Today 9:45am' ),
      Patient(title: 'John Doe',status:'High blood pressure',number: '120',image:'assets/images/yellow.png',date: 'Wed 12 Feb, 9:45am' ),
      Patient(title: 'Amelia Charlotte',status:'High blood pressure',number: '120',image:'assets/images/yellow.png',date: 'Tue 11 Feb, 12:11pm' ),
      Patient(title: 'Baldwin Harold',status:'High blood pressure',number: '120',image:'assets/images/yellow.png',date: 'Tue 11 Feb, 12:11pm' ),
    ];
    List<Patient> Patients = allPatients;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
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
          height: mediaqueryHeight * 1,
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(color: Colors.grey,thickness: 0.5,),
            itemCount: 3,
            itemBuilder: (context, index) {
              final Patient = Patients[index];
              return Container(
                child: Padding(
                  padding: EdgeInsets.only(top: mediaqueryHeight * 0.06),
                    child: ListTile(
                      dense: true,
                      leading: CircleAvatar(
                        radius: 30,
                        child: ClipRRect(
                          child:Image.asset(Patient.image),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        backgroundColor: Colors.white,
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
                              Text(Patient.status,style: TextStyle(fontSize: 15,fontFamily:'Roboto'),),
                              Text(Patient.number,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,fontFamily:'Roboto'),),
                            ],
                          ),
                        ],
                      ),
                      trailing: Column(
                        children: [Icon(Icons.check,color: Colors.green,),
                          Text(Patient.date,style: TextStyle(color: Colors.grey,fontSize: 16,fontFamily:'Roboto'),),
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
