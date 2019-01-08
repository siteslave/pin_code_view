import 'package:flutter/material.dart';

class CustomKeyboard extends StatefulWidget {
  final Function onBackPressed, onPressedKey;
  final TextStyle textStyle;
  final Color backspaceColor;

  CustomKeyboard({
    this.onBackPressed,
    this.onPressedKey,
    this.textStyle,
    this.backspaceColor,
  });

  CustomKeyboardState createState() => CustomKeyboardState();
}

class CustomKeyboardState extends State<CustomKeyboard> {
  String code = "";

  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RawMaterialButton(
                onPressed: () => widget.onPressedKey("1"),
                child: Text("1", style: widget.textStyle,),
                shape: new CircleBorder(side: BorderSide(color: Colors.grey[500])),
                fillColor: Colors.grey[100],
                elevation: 0,
                padding: EdgeInsets.all(5),
              ),
              RawMaterialButton(
                onPressed: () => widget.onPressedKey("2"),
                child: Text("2", style: widget.textStyle,),
                shape: new CircleBorder(side: BorderSide(color: Colors.grey[500])),
                fillColor: Colors.grey[100],
                elevation: 0,
                padding: EdgeInsets.all(5),
              ),
              RawMaterialButton(
                onPressed: () => widget.onPressedKey("3"),
                child: Text("3", style: widget.textStyle,),
                shape: new CircleBorder(side: BorderSide(color: Colors.grey[500])),
                fillColor: Colors.grey[100],
                elevation: 0,
                padding: EdgeInsets.all(5),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RawMaterialButton(
                onPressed: () => widget.onPressedKey("4"),
                child: Text("4", style: widget.textStyle,),
                shape: new CircleBorder(side: BorderSide(color: Colors.grey[500])),
                fillColor: Colors.grey[100],
                elevation: 0,
                padding: EdgeInsets.all(5),
              ),
              RawMaterialButton(
                onPressed: () => widget.onPressedKey("5"),
                child: Text("5", style: widget.textStyle,),
                shape: new CircleBorder(side: BorderSide(color: Colors.grey[500])),
                fillColor: Colors.grey[100],
                elevation: 0,
                padding: EdgeInsets.all(5),
              ),
              RawMaterialButton(
                onPressed: () => widget.onPressedKey("6"),
                child: Text("6", style: widget.textStyle,),
                shape: new CircleBorder(side: BorderSide(color: Colors.grey[500])),
                fillColor: Colors.grey[100],
                elevation: 0,
                padding: EdgeInsets.all(5),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new RawMaterialButton(
                onPressed: () => widget.onPressedKey("7"),
                child: Text(
                  "7",
                  style: widget.textStyle,
                ),
                shape: new CircleBorder(side: BorderSide(color: Colors.grey[500])),
                fillColor: Colors.grey[100],
                elevation: 0,
                padding: EdgeInsets.all(5),
              ),
              new RawMaterialButton(
                onPressed: () => widget.onPressedKey("8"),
                child: Text(
                  "8",
                  style: widget.textStyle,
                ),
                shape: new CircleBorder(side: BorderSide(color: Colors.grey[500])),
                fillColor: Colors.grey[100],
                elevation: 0,
                padding: EdgeInsets.all(5),
              ),
              new RawMaterialButton(
                onPressed: () => widget.onPressedKey("9"),
                child: Text(
                  "9",
                  style: widget.textStyle,
                ),
                shape: new CircleBorder(side: BorderSide(color: Colors.grey[500])),
                fillColor: Colors.grey[100],
                elevation: 0,
                padding: EdgeInsets.all(5),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Text(
                  "",
                  style: widget.textStyle,
                ),
              ),
              RawMaterialButton(
                onPressed: () => widget.onPressedKey("0"),
                child: Text(
                  "0",
                  style: widget.textStyle,
                ),
                shape: new CircleBorder(side: BorderSide(color: Colors.grey[500])),
                fillColor: Colors.grey[100],
                elevation: 0,
                padding: EdgeInsets.all(5),
              ),

              IconButton(
                onPressed: () => widget.onBackPressed(),
                icon: Icon(
                  Icons.backspace,
                  color: widget.backspaceColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
