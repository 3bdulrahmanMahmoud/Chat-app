// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  const  ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Container(
                height: 90,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20)),
                alignment: Alignment.bottomCenter,
                padding: const EdgeInsets.only(
                    top: 10, left: 10, right: 10, bottom: 20),
                child: const Text(
                  "chat App",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, i) {
                  return const ChatBubble(text: "hello");
                },
                itemCount: 8,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                suffixIcon: const Icon(Icons.send),
                labelText: "send message",
                border: getBorderStyle(),
                focusedBorder: getBorderStyle(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding:
            const EdgeInsets.only(top: 10, right: 20, left: 10, bottom: 20),
        margin: const EdgeInsets.only(left: 10, top: 15),
        decoration: const BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            )),
        child: Text(text, style: const TextStyle(fontSize: 16, color: Colors.white)
            // customStringStyle.Poppins500Style16.copyWith(color: Colors.white),
            ),
      ),
    );
  }
}

OutlineInputBorder getBorderStyle() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Colors.grey));
}
