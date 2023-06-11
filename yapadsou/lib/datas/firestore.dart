import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:yapadsou/models/category.dart';
import 'package:yapadsou/models/plan.dart';

class Firestore {
  static Future<List<Category>> getAllCategories() async {
    return (await FirebaseFirestore.instance.collection("categories").get())
        .docs
        .map((item) => Category.fromMap(item.data()))
        .toList();
  }
  static Future<List<Plan>> getAllPlans() async {
    return (await FirebaseFirestore.instance.collection("plans").get())
        .docs
        .map((item) => Plan.fromMap(item.data()))
        .toList();
  }
}
