import 'package:demodatabase/dao/productDao.dart';
import 'package:demodatabase/pages/screen.dart';
import 'package:floor/floor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'data/database.dart';
import 'data/database_manager.dart';

Future<void> main()
async {
  WidgetsFlutterBinding.ensureInitialized();
 // final  database = await $FloorAppDatabase.databaseBuilder('app_database.db').build();
 // final dao = database.productDao;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  //final ProductDao dao;

  MyApp({super.key});



  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      title: 'Demo App',
      home: Scaffold(
        appBar: AppBar(
          // leading: IconButton(
          //   onPressed: (){
          //
          //     }, icon: const Icon(Icons.arrow_back_ios),
          // ),
          title: Text('Demo App'),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text('Click next page' ),
            onPressed: () {
              Get.to(()=>DataShow());
            },
          ),
        ),
      ),
    );

    
  }
  // Future<ProductDao> getDao() async
  // {
  //   // await $FloorAppDatabase.databaseBuilder('app_database.db').build();
  //   AppDatabase database = await DatabaseManager().getDatabase();
  //   return database.productDao;
  // }
}

