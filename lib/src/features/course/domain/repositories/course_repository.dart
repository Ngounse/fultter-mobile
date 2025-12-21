import 'package:my_library/core/utils/typedef.dart';
import 'package:my_library/src/features/course/domain/entities/course.dart';

abstract class CourseRepository {
  const CourseRepository();

  ResultFuture<List<Course>> getCourses();
  ResultFuture<List<Course>> getFeaturedCourses();
  ResultFuture<List<Course>> getRecommendCourses();
}
