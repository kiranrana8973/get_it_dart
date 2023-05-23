import 'package:get_it_dart/model/user.dart';
import 'package:get_it_dart/repository/user_repository.dart';

import '../di/di.dart';

void main() {
  // Load di module
  initModule();
  User user = User(
    id: 1,
    name: 'John Doe',
    age: 30,
  );

  // UserRepository userRepository = UserRepository();
  // Get the UserRepository instance from GetIt
  UserRepository userRepository = getIt<UserRepository>();

  if (userRepository.addUser(user)) {
    print('User added successfully');
  } else {
    print('User not added');
  }
}
