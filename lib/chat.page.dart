import 'package:flutter/material.dart';
import 'dart:convert';

class ChatPage extends StatefulWidget {
  ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<dynamic> data = [
    {'message': 'Hello', 'type': 'user'},
    {'message': 'How can I help you', 'type': 'user'},
    {'message': 'Give me information about you', 'type': 'user'},
    {'message': 'I am a helpful assistant', 'type': 'assistant'},
  ];

  TextEditingController queryController = TextEditingController();
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat Page"),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  controller: scrollController,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    bool isUser = data[index]['type'] == 'user';
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            title: Row(
                              children: [
                                SizedBox(
                                  width: isUser ? 100 : 0,
                                ),
                                Expanded(
                                    child: Card(
                                      child: Container(
                                        child: Text(
                                          data[index]['message'],
                                        ),
                                        padding: EdgeInsets.all(10),
                                        color: (isUser)
                                            ? Color.fromARGB(50, 0, 255, 0)
                                            : Colors.white,
                                      ),
                                    ),
                                ),
                                SizedBox(
                                  width: isUser ? 0 : 100,
                                )
                              ],
                            ),
                            leading: (!isUser) ? Icon(Icons.support_agent) : null,
                            trailing: (isUser) ? Icon(Icons.person_2) : null,
                          ),
                        ),
                        Divider(
                          height: 1,
                        )
                      ],
                    );
                  },
              ),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
            child: ,
          )
        ],
      ),
    );
  }
}
