import 'dart:convert';

import 'package:my_library/core/utils/typedef.dart';
import 'package:my_library/src/features/course/data/models/course_model.dart';

class CourseMapper {
  static List<CourseModel> jsonToCourseModelList(String json) {
    try {
      List list = jsonDecode(json);
      return list.map((e) => CourseModel.fromMap(e as DataMap)).toList();
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
