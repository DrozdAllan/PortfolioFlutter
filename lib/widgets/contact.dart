import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _mailController;
  late TextEditingController _messageController;

  @override
  void initState() {
    super.initState();
    _mailController = TextEditingController();
    _messageController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Row(
            children: const [
              Text(
                'Let\'s talk !',
                style: TextStyle(color: Colors.white, fontSize: 34.0),
              ),
            ],
          ),
          const SizedBox(
            height: 100.0,
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                width: MediaQuery.of(context).size.width / 2,
                child: Card(
                  margin: EdgeInsets.all(12.0),
                  child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: _mailController,
                            decoration: InputDecoration(
                              label: Text('Your mail'),
                            ),
                          ),
                          TextFormField(
                            controller: _messageController,
                            decoration: InputDecoration(
                              label: Text('Your message'),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('SEND MESSAGE'),
                          ),
                        ],
                      )),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
