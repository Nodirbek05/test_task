class IndividualBar {
  final int x;
  final int y;
  IndividualBar({
    required this.x,
    required this.y,
  });
}

class BarData {
  final double firtsHourData;
  final double secondHourData;
  final double thirdHourData;
  final double fourthHourData;
  final double fifthHourData;
  final double sixthHourData;
  final double seventhHourData;
  final double eighthHourData;
  final double ninethHourData;
  final double tenthHourData;
  BarData({
    required this.firtsHourData,
    required this.secondHourData,
    required this.thirdHourData,
    required this.fourthHourData,
    required this.fifthHourData,
    required this.sixthHourData,
    required this.seventhHourData,
    required this.eighthHourData,
    required this.ninethHourData,
    required this.tenthHourData,
  });

  List<IndividualBar> barData = [];

  void initilizeBarData() {
    barData = [
      IndividualBar(
        x: 0,
        y: firtsHourData.toInt(),
      ),

       IndividualBar(
        x: 0,
        y: secondHourData.toInt(),
      ),

       IndividualBar(
        x: 0,
        y: thirdHourData.toInt(),
      ),

       IndividualBar(
        x: 0,
        y: fourthHourData.toInt(),
      ),

       IndividualBar(
        x: 0,
        y: fifthHourData.toInt(),
      ),

       IndividualBar(
        x: 0,
        y: sixthHourData.toInt(),
      ),


       IndividualBar(
        x: 0,
        y: seventhHourData.toInt(),
      ),

       IndividualBar(
        x: 0,
        y: eighthHourData.toInt(),
      ),


       IndividualBar(
        x: 0,
        y: ninethHourData.toInt(),
      ),

       IndividualBar(
        x: 0,
        y: tenthHourData.toInt(),
      ),
    ];
  }
}
