import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:n/chat_View.dart';

void main() async {
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          dialogBackgroundColor: Colors.brown[300]),
      routerConfig: router,
    );
  }
}

final GoRouter router = GoRouter(routes: 
[
  GoRoute(path: '/',builder: (context, state) => ChatView(),)
]);
