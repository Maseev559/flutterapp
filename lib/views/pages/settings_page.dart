import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({
    super.key,
    required this.title,
  });
  final String title;
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double slided = 0.0;
  String? dropValue = 'e1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title), //use widget.title for Stf and title for stl
        // automaticallyImplyLeading: false, //To disable back button
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Dropdown
              DropdownButton(
                value: dropValue,
                items: const [
                  DropdownMenuItem(
                    value: 'e1',
                    child: Text('Sunday'),
                  ),
                  DropdownMenuItem(
                    value: 'e2',
                    child: Text('Monday'),
                  ),
                  DropdownMenuItem(
                    value: '3',
                    child: Text('Tuesday'),
                  ),
                  DropdownMenuItem(
                    value: '4',
                    child: Text('Wednesday'),
                  ),
                  DropdownMenuItem(
                    value: '5',
                    child: Text('Thursday'),
                  ),
                  DropdownMenuItem(
                    value: '6',
                    child: Text('Friday'),
                  ),
                  DropdownMenuItem(
                    value: '7',
                    child: Text('Saturday'),
                  ),
                ],
                onChanged: (String? value) {
                  setState(() {
                    dropValue = value;
                  });
                },
              ),
              //Textfield
              TextField(
                controller: controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
                onEditingComplete: () {
                  setState(() {});
                },
              ),
              Text(controller.text),
              Divider(),
              //Checkbox
              Checkbox.adaptive(
                tristate: false,
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value;
                  });
                },
              ),
              //CheckBoxListTile
              CheckboxListTile.adaptive(
                //Tristate -can have 3 value
                tristate: false,
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value;
                  });
                },
                title: const Text('Do you agree to the Terms and Conditions?'),
              ),
              Divider(),
              //Switch
              Switch.adaptive(
                value: isSwitched,
                onChanged: (bool value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
              //SwitchListTile
              SwitchListTile(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
                title: const Text('Don\'t break the code!'),
              ),
              //   Divider(),
              const Divider(
                thickness: 2.0,
                color: Colors.teal,
                endIndent: 150.0,
              ),
              // Container(
              //   height: 150.0,
              //   child: VerticalDivider(
              //     thickness: 2.0,
              //     color: Colors.teal,
              //   ),
              // ),
              //Slider
              Slider.adaptive(
                max: 100,
                divisions: 10,
                value: slided,
                onChanged: (value) {
                  setState(() {
                    slided = value;
                  });
                  print(value);
                },
              ),
              // InkWell - To click on any object with animation
              InkWell(
                splashColor: Colors.teal,
                onTap: () {
                  print('Ink well clicked');
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.white12,
                ),
              ),
              //GestureDetector - To click on any object
              GestureDetector(
                onTap: () {
                  print('Image clicked');
                },
                child: Image.asset('assets/images/bg-1.jpg'),
              ),

              //SnackBar Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 44, 7, 255),
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Snackbar go far'),
                      duration: Duration(seconds: 5),
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                },
                child: Text('Open Snackbar Button'),
              ),
              //Alert Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 44, 7, 255),
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog.adaptive(
                        title: Text('Alert  Title'),
                        content: Text('Alert Content'),
                        actions: [
                          FilledButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Close'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text('Open Dialogue'),
              ),
              //Buttons
              OutlinedButton(
                onPressed: () {},
                child: Text('CLICK ME'),
              ),
              FilledButton(
                onPressed: () {},
                child: Text('CLICK ME'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('CLICK ME'),
              ),
              BackButton(),
              CloseButton(),
            ],
          ),
        ),
      ),
    );
  }
}
