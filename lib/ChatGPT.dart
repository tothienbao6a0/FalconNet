import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ChatGPTAssistant extends StatefulWidget {
  @override
  _ChatGPTAssistantState createState() => _ChatGPTAssistantState();
}

class _ChatGPTAssistantState extends State<ChatGPTAssistant> {
  final TextEditingController _controller = TextEditingController();
  List<String> _messages = [];

  Future<String> _sendMessage(String message) async {
    // Replace API_KEY with your actual API key
    var response = await http.post(
        Uri.parse(
            'https://api.openai.com/v1/engines/davinci-codex/completions'),
        headers: {
          'Authorization': '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'
        },
        body: json.encode({
          'prompt': 'Me: $message\nAssistant:',
          'temperature': 0.5,
          'max_tokens': 50,
          'top_p': 1,
          'frequency_penalty': 0,
          'presence_penalty': 0
        }));
    if (response.statusCode == 200) {
      var data = json.decode(response.body)['choices'][0]['text'];
      return data;
    } else {
      throw Exception('Failed to load response');
    }
  }

  void _addMessage(String message) {
    setState(() {
      _messages.add(message);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat with Assistant'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(_messages[index]),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: _controller,
                    onSubmitted: (String text) async {
                      _controller.clear();
                      _addMessage('Me: $text');
                      String response = await _sendMessage(text);
                      _addMessage('Assistant: $response');
                    },
                    decoration: InputDecoration(hintText: 'Enter a message...'),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () async {
                    String text = _controller.text;
                    _controller.clear();
                    _addMessage('Me: $text');
                    String response = await _sendMessage(text);
                    _addMessage('Assistant: $response');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
