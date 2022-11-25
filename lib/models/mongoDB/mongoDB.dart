import 'dart:developer';

import 'package:dwarves_app/models/mongoDB/constant.dart';
import 'package:mongo_dart/mongo_dart.dart';

class DwarvesDatabase {
  static connect() async {
    var db = await Db.create(
        'mongodb+srv://admin:cisco@cluster0.iphr5yp.mongodb.net/test');
    await db.open();
    inspect(db);
    var status = db.serverStatus();
    print(
        status); //for debugging and tracing what happens to mongoDB AWS server
    var collection = db.collection(COLLECTION_NAME);
  }
}
