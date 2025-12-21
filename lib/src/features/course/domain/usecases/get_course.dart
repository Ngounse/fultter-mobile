import 'package:my_library/core/utils/typedef.dart';
import 'package:my_library/core/utils/usecase.dart';
import 'package:my_library/src/features/course/domain/entities/course.dart';
import 'package:my_library/src/features/course/domain/repositories/course_repository.dart';

class GetCourseUseCase extends UseCaseWithoutParams<List<Course>> {
  const GetCourseUseCase(this._courseRepository);
  final CourseRepository _courseRepository;

  @override
  ResultFuture<List<Course>> call() async => _courseRepository.getCourses();
}
