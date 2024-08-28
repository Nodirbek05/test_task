import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:testproject/presentation/style/icons.dart';
import 'package:testproject/presentation/style/style.dart';
import 'package:testproject/presentation/style/app_colors.dart';
import 'package:testproject/presentation/pages/my_bar_chart.dart';

enum Action { send, delete, edit, archive }

class HomeScreen extends StatefulWidget {
  static const routeName = '/mainScreen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<double> hourltSummary = [
    15.00,
    13.00,
    1.00,
    14.00,
    18.00,
    19.00,
    14.00,
    18.00,
    19.00,
    19.00,
  ];
  List<DataModel> datas = allData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: AppColors.darkBlue,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 60,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "24\nFEB",
                      style: Styles.w500s16White,
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      height: 70,
                      width: 285,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            radius: 25,
                            backgroundColor: AppColors.green,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "ISAC NORMAN",
                                style: Styles.w700s16black,
                              ),
                              Row(children: [
                                const Text(
                                  "5555 **** **** 2342",
                                  style: Styles.w400s10black,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 10),
                                  height: 15,
                                  width: 15,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                          "assets/images/masters.png",
                                        ),
                                        fit: BoxFit.cover),
                                  ),
                                )
                              ])
                            ],
                          ),
                          Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: AppColors.black)),
                            child: SvgPicture.asset(AppIcons.arrowDown,
                                height: 10),
                          )
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.more_vert,
                      color: AppColors.white,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 210,
                width: double.infinity,
                child: MyBarChart(hourltSummary: hourltSummary),
              ),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: datas.length,
                  itemBuilder: (context, index) {
                    // final item = items[index];
                    return Slidable(
                      endActionPane: ActionPane(
                        motion: StretchMotion(
                            // key: UniqueKey(),
                            ),
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              height: 60,
                              width: 180,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 140, 159, 56),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      onDismiss(index, Action.send);
                                    },
                                    icon: const Icon(
                                      Icons.send,
                                      color: AppColors.white,
                                    ),
                                  ),
                                  Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 4),
                                      height: 60,
                                      width: 1,
                                      color: const Color.fromARGB(
                                          255, 95, 94, 94)),
                                  IconButton(
                                    onPressed: () {
                                      onDismiss(index, Action.send);
                                    },
                                    icon: const Icon(
                                      Icons.edit,
                                      color: AppColors.white,
                                    ),
                                  ),
                                  Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 4),
                                      height: 60,
                                      width: 1,
                                      color: const Color.fromARGB(
                                          255, 95, 94, 94)),
                                  IconButton(
                                    onPressed: () {
                                      onDismiss(index, Action.send);
                                    },
                                    icon: const Icon(
                                      Icons.delete,
                                      color: AppColors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      child: slideContainer(
                        datas[index],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  BarChartRodData makeRoadData(double y) {
    return BarChartRodData(toY: y);
  }

  void onDismiss(int index, Action action) {
    setState(() {
      datas.removeAt(index);
    });

    switch (action) {
      case Action.delete:
        _showSnackBar(
          context,
        );
        break;

      case Action.send:
        _showSnackBar(
          context,
        );
        break;

      case Action.edit:
        _showSnackBar(
          context,
        );
        break;
      default:
    }
  }

  _showSnackBar(context) {
    SnackBar snackBar = SnackBar(
      content: Container(
        height: 50,
        width: 140,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Colors.red),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.fireplace_outlined, color: Colors.white),
            SizedBox(
              width: 200,
              child: Text(
                "You have too close for daily amout limit. Only \$5.34 left",
                style: Styles.w400s10white,
                maxLines: 2,
              ),
            ),
            Icon(
              Icons.close,
              color: Colors.white,
            )
          ],
        ),
      ),
      backgroundColor: Colors.transparent,
      dismissDirection: DismissDirection.up,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height - 240,
          left: 40,
          right: 40),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  Container slideContainer(DataModel data) {
    return Container(
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 47, 36, 133),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(55), bottomRight: Radius.circular(55))),
      margin: const EdgeInsets.only(bottom: 10, right: 20),
      padding: const EdgeInsets.only(
        left: 20,
        right: 15,
      ),
      height: 90,
      width: double.infinity,
      child: Row(
        children: [
          CircleAvatar(
            radius: 29,
            backgroundColor: const Color.fromARGB(255, 165, 164, 164),
            child: CircleAvatar(
              radius: 28,
              backgroundColor: const Color.fromARGB(255, 36, 25, 117),
              child: Icon(
                data.icon,
                color: AppColors.white,
                size: 35,
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                data.price,
                style: Styles.w700s22red,
              ),
              Text(
                data.cafeName,
                style: Styles.w400s10white,
              ),
              Text(
                data.addressName,
                style: Styles.w400s10white,
              ),
            ],
          ),
          const Spacer(),
          Text(
            data.time,
            style: Styles.w400s10white,
          ),
        ],
      ),
    );
  }
}

class DataModel {
  final String cafeName;
  final String addressName;
  final String price;
  final String time;
  final IconData icon;

  DataModel({
    required this.cafeName,
    required this.addressName,
    required this.price,
    required this.time,
    required this.icon,
  });
}

final allData = [
  DataModel(
      cafeName: "Billy's <<Bakery>>",
      addressName: "75 Frankling Street, New York",
      price: "-\$10.95",
      time: "11:42",
      icon: Icons.coffee_rounded),
  DataModel(
      cafeName: "Billy's <<Bakery>>",
      addressName: "75 Frankling Street, New York",
      price: "-\$10.95",
      time: "11:42",
      icon: Icons.coffee_rounded),
  DataModel(
      cafeName: "Shop MoMA Design Store",
      addressName: "81 Sprint St, New York",
      price: "-\$122",
      time: "13:10",
      icon: Icons.shopping_basket),
  DataModel(
      cafeName: "Pet Beauty Salon <<Candy's>>",
      addressName: "200 Lafawette St New York",
      price: "-\$52.90",
      time: "14:00",
      icon: Icons.bakery_dining_outlined)
];
