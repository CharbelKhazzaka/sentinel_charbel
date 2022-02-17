import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
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
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        elevation: 0,
        title: Text(
          'Patient Priority List',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.red,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.1,
              child: Padding(
                padding: const EdgeInsets.only(left: 70, right: 70),
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
                      borderRadius: BorderRadius.circular(20),
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
                    contentPadding: EdgeInsets.only(left: 30),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 1,
              child: ListView.builder(
                itemCount: Patients.length,
                itemExtent: 50,
                itemBuilder: (context, index) {
                  final Patient = Patients[index];
                  return Container(
                    child: ListTile(
                      title: Text(
                        Patient.title,
                        style: TextStyle(color: Colors.black, fontSize: 20),
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
}
