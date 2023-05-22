import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:yapadsou/models/category.dart';

class Firestore {
  static Future<List<Category>> getAllEntries() async {
    return (await FirebaseFirestore.instance.collection("categories").get())
        .docs
        .map((item) => Category.fromMap(item.data()))
        .toList();
  }
}
