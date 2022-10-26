import 'package:shop_easy/infra/models/users.dart';

import '../core/app_assets.dart';

const recentActivities = [
  {"icon": dropBox, "label": 'Water Bill', "amount": "\$120"},
  {"icon": salary, "label": 'Income Salary', "amount": "\$4500"},
  {"icon": eletricity, "label": 'Electric Bill', "amount": "\$150"},
  {"icon": wifi, "label": 'Internet Bill', "amount": "\$60"},
];

const upcomingPayments = [
  {"icon": home, "label": 'Home Rent', "amount": "\$1500"},
  {"icon": salary, "label": 'Car Insurance', "amount": "\$150"},
];

const transactionHistory = [
  {
    "avatar":
        'https://www.gamespot.com/a/uploads/screen_kubrick/1574/15746725/3730466-evo_ironman_gs.jpg',
    "name": 'Tony Stark',
    "label": 'Car Insurance',
    "amount": "\$350",
    "time": "10:42:23 AM",
    "status": "Completed",
  },
  {
    "avatar":
        'https://pm1.narvii.com/6858/e8e16eb18751e65c91ff3c51350750431899b8a3v2_hq.jpg',
    "name": 'Steve Rogers',
    "label": 'Loan',
    "amount": "\$350",
    "time": "12:42:00 PM",
    "status": "Completed",
  },
  {
    "avatar":
        'https://nerdhits.com.br/wp-content/uploads/2021/10/professor-hulk-1-1200x675.jpg',
    "name": 'Bruce Banner',
    "label": 'Online Payment',
    "amount": "\$154",
    "time": "10:42:23 PM",
    "status": "Completed",
  },
  {
    "avatar":
        'https://www.einerd.com.br/wp-content/uploads/2018/02/vingadores-guerra-infinita-gavi%C3%A3o-arqueiro-capa-e1572273039793-890x466.jpg',
    "name": 'Clint Barton',
    "label": 'Online Payment',
    "amount": "\$154",
    "time": "10:42:23 PM",
    "status": "Completed",
  },
  {
    "avatar":
        'https://nerdcultnews.com/wp-content/uploads/2022/04/scarlett-johansson-skarlett-2867-855x541-1.jpg',
    "name": 'Natasha Romanoff',
    "label": 'Online Payment',
    "amount": "\$154",
    "time": "10:42:23 PM",
    "status": "Completed",
  },
  {
    "avatar":
        'https://poltronanerd.com.br/wp-content/uploads/2021/07/5grCpksAsditHvWpvttz6Q-1200-80.jpg',
    "name": 'Thor Odison',
    "label": 'Online Payment',
    "amount": "\$154",
    "time": "10:42:23 PM",
    "status": "Completed",
  },
];

final allUsers = <Users>[
  const Users(
    id: 1,
    avatar:
        'https://www.gamespot.com/a/uploads/screen_kubrick/1574/15746725/3730466-evo_ironman_gs.jpg',
    name: 'Tony Stark',
  ),
  const Users(
    id: 2,
    avatar:
        'https://pm1.narvii.com/6858/e8e16eb18751e65c91ff3c51350750431899b8a3v2_hq.jpg',
    name: 'Steve Rogers',
  ),
  const Users(
    id: 3,
    avatar:
        'https://nerdhits.com.br/wp-content/uploads/2021/10/professor-hulk-1-1200x675.jpg',
    name: 'Bruce Banner',
  ),
  const Users(
    id: 4,
    avatar:
        'https://www.einerd.com.br/wp-content/uploads/2018/02/vingadores-guerra-infinita-gavi%C3%A3o-arqueiro-capa-e1572273039793-890x466.jpg',
    name: 'Clint Barton',
  ),
  const Users(
    id: 5,
    avatar:
        'https://nerdcultnews.com/wp-content/uploads/2022/04/scarlett-johansson-skarlett-2867-855x541-1.jpg',
    name: 'Natasha Romanoff',
  ),
  const Users(
    id: 6,
    avatar:
        'https://poltronanerd.com.br/wp-content/uploads/2021/07/5grCpksAsditHvWpvttz6Q-1200-80.jpg',
    name: 'Thor Odison',
  ),
];
