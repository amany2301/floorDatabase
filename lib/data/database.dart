

import 'package:demodatabase/dao/productDao.dart';
import 'package:floor/floor.dart';

import '../entity/entityclass.dart';
import 'dart:async';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'database.g.dart';

@Database(version:1 , entities: [Items])
abstract class AppDatabase extends FloorDatabase{
  ProductDao get productDao ;

}