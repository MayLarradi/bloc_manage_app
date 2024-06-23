import 'package:chat_bloc_manage/model/users.model.dart';
import 'package:flutter/material.dart';

class GitRepositories extends StatelessWidget {
  final User user;
  const GitRepositories({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "User ${user.login} repositories",
        ),
      ),
    );
  }
}
