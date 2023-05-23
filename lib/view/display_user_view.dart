import 'package:get_it_dart/di/di.dart';
import 'package:get_it_dart/repository/user_repository.dart';

void main() {
  // Load di module
  initModule();
  UserRepository userRepository = getIt<UserRepository>();
  print(userRepository.getUsers());
}
