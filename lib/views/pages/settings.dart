import 'package:flutter/material.dart';

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({super.key, required this.title});
  final String title;

  @override
  State<SettingsWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  TextEditingController controller = TextEditingController();
  bool isCheck = false;
  bool isSwitched = false;
  double sliderValue = 0.0;
  String? itemMenu;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        
      ),
      body: SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          DropdownButton(
            value: itemMenu,
            items: [
              DropdownMenuItem(value: 'e1', child: Text('Element 1')),
              DropdownMenuItem(value: 'e2', child: Text('Element 2'))
            ],
            onChanged: (String? value) {
              setState(() {
                itemMenu = value;
              });
            },
          ),
          TextField(
            controller: controller,
            decoration: InputDecoration(border: OutlineInputBorder()),
            onEditingComplete: () {
              setState(() {});
            },
          ),
          Align(alignment: Alignment.centerLeft, child: Text(controller.text)),
          Checkbox(
            value: isCheck,
            onChanged:
                (bool? value) => {
                  setState(() {
                    isCheck = value!;
                  }),
                },
          ),
          CheckboxListTile(
            tristate: true,
            title: Text('Open SnackBar'),
            value: isCheck,
            onChanged: (bool? value) {
              setState(() {
                isCheck = value!;
              });
              if (value == true) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Selected snackbar!'),
                  duration: Duration(seconds: 5),
                  behavior: SnackBarBehavior.floating,
                ));
              }
            },
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(context: context, builder: (context) {
                return AlertDialog(
                  title: Text('Title Alert'),
                  content: Text('Content Alert'),
                  actions: [
                    FilledButton(onPressed: () {
                      Navigator.pop(context);
                    }, child: Text('Close'))
                  ],
                );
              });
            }, 
            child: Text('Open Dialog')
          ),
          Switch(
            value: isSwitched,
            onChanged: (bool value) {
              setState(() {
                isSwitched = value;
              });
            },
          ),
          SwitchListTile.adaptive(
            title: Text('Click me!'),
            value: isSwitched,
            onChanged: (bool value) {
              setState(() {
                isSwitched = value;
              });
            },
          ),
          Slider.adaptive(
            value: sliderValue,
            onChanged: (double value) {
              setState(() {
                sliderValue = value;
              });
            },
          ),
          InkWell(
            splashColor: Colors.teal,
            onTap: () => {print('image selected')},
            child: Container(
              width: double.infinity,
              height: 50,
              color: Colors.white12,
            ),
          ),
          ElevatedButton(onPressed: () {}, child: Text('Click me!')),
          FilledButton(onPressed: () {}, child: Text('Click me!')),
          TextButton(onPressed: () {}, child: Text('Click me!')),
          OutlinedButton(onPressed: () {}, child: Text('Click me!')),
          CloseButton(),
          BackButton(),
        ],
      ),
    ));
  }
}
