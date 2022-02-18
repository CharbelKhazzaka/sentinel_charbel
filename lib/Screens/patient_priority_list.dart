import 'package:flutter/material.dart';
import 'package:sentinel/Screens/notification.dart';

class ClientPriority extends StatefulWidget {
  const ClientPriority({Key? key}) : super(key: key);

  @override
  State<ClientPriority> createState() => _ClientPriorityState();
}

class Patient {
  final String title;

  const Patient({
    required this.title,
  });
}

class _ClientPriorityState extends State<ClientPriority> {

 static const allPatients = [
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

  @override
  Widget build(BuildContext context) {
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(237, 11, 25, 1),
        elevation: 0,
        title: Text(
          'Patient Priority List',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold,fontFamily:'Roboto'),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Color.fromRGBO(237, 11, 25, 1),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.1,
              child: Padding(
                padding: EdgeInsets.only(
                    left: mediaQueryWidth * 0.05,
                    right: mediaQueryWidth * 0.05),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    suffixIcon: Icon(
                      Icons.sort,
                      color: Colors.blue,
                    ),
                    hintText: 'Search patient',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    contentPadding:
                        EdgeInsets.only(left: mediaQueryWidth * 0.3),
                  ),
                  onChanged: searchPatient,
                ),
              ),
            ),
            SizedBox(
              height: mediaQueryHeight * 0.7,
              child: ListView.separated(
                itemCount: Patients.length,
                separatorBuilder: (context, index) => Divider(
                  color: Colors.grey,
                  thickness: 0.5,
                ),
                itemBuilder: (context, index) {
                  final Patient = Patients[index];
                  return Container(
                    child: ListTile(
                      title: Text(
                        Patient.title,
                        style: TextStyle(color: Colors.black, fontSize: 20,fontFamily:'Roboto'),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
  void searchPatient(String query) {
    final suggestion = allPatients.where((Patient) {
      final PatientTitle = Patient.title.toLowerCase();
      final input = query.toLowerCase();

      return PatientTitle.contains(input);
    }).toList();
    setState(() => Patients = suggestion);
  }
}
