import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/features/chat/chat.dart';
import 'package:dormitory_app/presentation/features/home/data/models/models.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final DormitoryModel dormitory = const DormitoryModel(
    id: '34657890-768',
    name: 'His Male Dormitory',
    location: LocationModel(
      id: '4567890',
      address: 'Izmir',
      city: CityModel(id: '567890-', name: 'Konak'),
    ),
    defaultPhoto: '',
    otherPhotos: [],
    paymentType: PaymentPeriodType.monthly,
    previousPay: PaymentFeeModel(
      amount: '456789',
      paymentPeriodType: PaymentPeriodType.monthly,
      currency: 'tl',
    ),
    facilities: [
      DormitoryFacilityModel(
        id: '4567890-',
        name: 'School Bus',
      ),
      DormitoryFacilityModel(
        id: '4567890-',
        name: 'School Bus',
      ),
      DormitoryFacilityModel(
        id: '4567890-',
        name: 'School',
      ),
      DormitoryFacilityModel(
        id: '4567890-',
        name: 'School Bus',
      ),
      DormitoryFacilityModel(
        id: '4567890-',
        name: 'School Bus',
      ),
      DormitoryFacilityModel(
        id: '4567890-',
        name: 'School Bus',
      ),
      DormitoryFacilityModel(
        id: '4567890-',
        name: 'School Bus',
      ),
      DormitoryFacilityModel(
        id: '4567890-',
        name: 'School Bus',
      ),
      DormitoryFacilityModel(
        id: '4567890-',
        name: 'School Bus',
      ),
      DormitoryFacilityModel(
        id: '4567890-',
        name: 'School Bus',
      ),
    ],
    university: UniversityModel(
      id: '543456789',
      name: 'Islamabad',
    ),
    currentPay: PaymentFeeModel(
      amount: '456789',
      paymentPeriodType: PaymentPeriodType.monthly,
      currency: 'tl',
    ),
    stayDuration: DormitoryStayDurationModel(
      id: '567890-',
      durationName: '',
      startTime: '12',
      endTime: '14',
    ),
    type: DormitoryType.female,
  );
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuDrawer(),
      appBar: currentIndex == 0
          ? AppBar(
              actions: const [NotificationIcon()],
            )
          : PreferredSize(
              preferredSize: Size(double.infinity, 10.h),
              child: const SizedBox(
                height: kToolbarHeight,
                width: double.infinity,
              ),
            ),
      bottomNavigationBar: CustomBottomNavigationBar(
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        activeIndex: currentIndex,
      ),
      body: currentIndex == 0
          ? Scaffold(
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      DormitoryCard(dormitory: dormitory),
                    ],
                  ),
                ),
              ),
            )
          : const ChatPage(),
    );
  }
}
