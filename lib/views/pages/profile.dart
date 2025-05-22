import 'package:flutter/material.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  TextEditingController controller = TextEditingController();
  bool isCheck = false;
  bool isSwitched = false;
  double sliderValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
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
            title: Text('Click me'),
            value: isCheck,
            onChanged: (bool? value) {
              setState(() {
                isCheck = value!;
              });
            },
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
          ElevatedButton(
            onPressed: () {},
            child: Text('Click me!')
          ),
          FilledButton(
            onPressed: () {}, 
            child: Text('Click me!')
          ),
          TextButton(
            onPressed: () {}, 
            child: Text('Click me!')
          ),
          OutlinedButton(
            onPressed: () {}, 
            child: Text('Click me!')
          ),
          CloseButton(),
          BackButton()
        ],
      ),
    );
  }
}
