import 'package:demodatabase/dao/productDao.dart';
import 'package:floor/floor.dart';

@entity
class Items{

  @primaryKey
  final int id;

  final String categoryName;

  Items({required this.id,required this.categoryName});
}