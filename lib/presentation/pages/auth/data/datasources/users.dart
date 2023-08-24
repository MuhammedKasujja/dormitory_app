import 'package:dormitory_app/models/university.dart';

import '../models/models.dart';

List<UserModel> users = [
  const UserModel(
    id: '546789045',
    firstname: 'Ismail',
    lastname: 'Kimbugwe',
    email: 'ismail@mail.com',
    countryCode: '+256',
    telephone: '+256775262923',
    isVerified: true,
    photoUrl:
        'https://static.vecteezy.com/system/resources/thumbnails/019/900/322/small/happy-young-cute-illustration-face-profile-png.png',
    // for demo purpose only
    gender: 'password123',
  ),
  const UserModel(
    id: 'e578845',
    firstname: 'Kasujja',
    lastname: 'Muhammed',
    email: 'kasujja@project.ug',
    countryCode: '+256',
    telephone: '+256774262923',
    isVerified: false,
    // for demo purpose only
    gender: 'password123',
    dateOfBirth: '12/07/1980',
    university: UniversityModel(
      id: '567890',
      name: 'Makerere',
      address: 'Wandegeya',
      country: 'Uganda',
      city: 'Kampala',
    ),
  ),
  const UserModel(
    id: 're546565',
    firstname: 'Nakato',
    lastname: 'Aisha',
    email: 'aisha@mail.com',
    countryCode: '+256',
    telephone: '+256774262923',
    isVerified: false,
    // for demo purpose only
    gender: 'password123',
  ),
  const UserModel(
    id: 're65565',
    firstname: 'Nakitto',
    lastname: 'Saidat',
    email: 'saidat@mail.com',
    countryCode: '+256',
    telephone: '+256774262923',
    isVerified: true,
    // for demo purpose only
    gender: 'password123',
  ),
];
