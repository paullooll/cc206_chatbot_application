// ignore_for_file: library_private_types_in_public_api

import 'package:cc206_chatbot_application/features/chat/chatmessage.dart';
import 'package:cc206_chatbot_application/features/home_page.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChatBubble extends StatefulWidget{
  ChatMessage chatMessage;
  ChatBubble({super.key, required this.chatMessage});
  @override
  _ChatBubbleState createState() => _ChatBubbleState();
}

class _ChatBubbleState extends State<ChatBubble> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 10),
      child: Align(
        alignment: (widget.chatMessage.type == MessageType.Receiver?Alignment.topLeft:Alignment.topRight),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: (widget.chatMessage.type  == MessageType.Receiver?Colors.blueGrey:Colors.blue),
          ),
          padding: const EdgeInsets.all(16),
          child: Text(widget.chatMessage.message),
        ),
      ),
    );
  }
}
