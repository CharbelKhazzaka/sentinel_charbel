
class Patient {
  late String name;
  late DateTime dob;
  late DateTime admissionD;
  late String drugs;
  late String gender;
  late DateTime releaseD;
  late String mainNotes;
  late double bloodOx;
  late double bloodPr;
  late double bodyTemp;
  late double heartRate;
  late int bloodOxh;
  late int bloodPrh;
  late int heartRateh;
  late int bodyTemph;
  // late List<FlSpot> weekList;
  // late List<FlSpot> monthList;
  // late List<FlSpot> yearList;

  Patient(
      {required this.name,
        required this.admissionD,
        required this.dob,
        required this.drugs,
        required this.gender,
        required this.mainNotes,
        required this.releaseD,
        required this.heartRateh,
        required this.heartRate,
        required this.bodyTemph,
        required this.bodyTemp,
        required this.bloodPr,
        required this.bloodOx,
        required this.bloodOxh,
        required this.bloodPrh,
        // required this.monthList,
        // required this.weekList,
        // required this.yearList
  });
}