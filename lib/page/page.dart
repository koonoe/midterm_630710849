import 'package:flutter/material.dart';

class Pin extends StatefulWidget {
  const Pin({super.key});

  @override
  State<Pin> createState() => _PinState();
}

class _PinState extends State<Pin> {
  String addSign = "\u002B";
  String subtractSign = "\u2212";
  String multiplySign = "\u00D7";
  String divideSign = "\u00F7";
  String equalSign = "\u003D";
  String num = '0';
  void addnum(add) {
    setState(() {
      String gg = add;
      if (num.length == 1 && add == '0') {
        num = '0';
      } else if (num.length == 1 && num == '0') {
        num = add;
      } else {
        num += add;
      }
    });
  }

  void addsign(sign) {
    setState(() {
      if (num.substring(num.length - 1, num.length) == "\u002B" ||
          num.substring(num.length - 1, num.length) == "\u2212" ||
          num.substring(num.length - 1, num.length) == "\u00D7" ||
          num.substring(num.length - 1, num.length) == "\u00F7") {
        num = num.substring(0, num.length - 1);
        num += sign;
      } else if (num == '0') {
        num = '0';
      } else {
        num += sign;
      }
    });
  }

  void clear() {
    setState(() {
      num = '0';
    });
  }

  void delete() {
    setState(() {
      if (num.length == 1) {
        num = '0';
      } else {
        num = num.substring(0, num.length - 1);
        if (num.length == 0) {
          num = '0';
        }
      }
    });
  }

  Widget bulitcal() {
    return Scaffold(
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                num,
                style: TextStyle(fontSize: 100),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        clear();
                      },
                      child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1.0,
                                  color: Color.fromARGB(255, 181, 189, 172)),
                              color: Color.fromARGB(255, 181, 189, 172)),
                          child: Center(
                            child: Text(
                              'C',
                              style: TextStyle(fontSize: 50),
                            ),
                          )),
                    ),
                  )),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: InkWell(
                    onTap: () {
                      delete();
                    },
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1,
                              color: Color.fromARGB(255, 181, 189, 172)),
                          color: Color.fromARGB(255, 181, 189, 172)),
                      child: Center(
                          child: Icon(
                        Icons.backspace_outlined,
                        size: 50,
                      )),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: InkWell(
                    onTap: () {
                      addnum('7');
                    },
                    child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1.0,
                                color: Color.fromARGB(255, 103, 212, 59)),
                            color: Color.fromARGB(255, 103, 212, 59)),
                        child: Center(
                          child: Text(
                            '7',
                            style: TextStyle(fontSize: 50),
                          ),
                        )),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: InkWell(
                    onTap: () {
                      addnum('8');
                    },
                    child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1.0,
                                color: Color.fromARGB(255, 103, 212, 59)),
                            color: Color.fromARGB(255, 103, 212, 59)),
                        child: Center(
                          child: Text(
                            '8',
                            style: TextStyle(fontSize: 50),
                          ),
                        )),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: InkWell(
                    onTap: () {
                      addnum('9');
                    },
                    child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1.0,
                                color: Color.fromARGB(255, 103, 212, 59)),
                            color: Color.fromARGB(255, 103, 212, 59)),
                        child: Center(
                          child: Text(
                            '9',
                            style: TextStyle(fontSize: 50),
                          ),
                        )),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: InkWell(
                    onTap: () {
                      addsign(divideSign);
                    },
                    child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1.0,
                                color: Color.fromARGB(255, 181, 189, 172)),
                            color: Color.fromARGB(255, 181, 189, 172)),
                        child: Center(
                          child: Text(
                            divideSign,
                            style: TextStyle(fontSize: 50),
                          ),
                        )),
                  ),
                ))
          ],
        ),
        Row(
          children: [
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: InkWell(
                    onTap: () {
                      addnum('4');
                    },
                    child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1.0,
                                color: Color.fromARGB(255, 103, 212, 59)),
                            color: Color.fromARGB(255, 103, 212, 59)),
                        child: Center(
                          child: Text(
                            '4',
                            style: TextStyle(fontSize: 50),
                          ),
                        )),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: InkWell(
                    onTap: () {
                      addnum('5');
                    },
                    child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1.0,
                                color: Color.fromARGB(255, 103, 212, 59)),
                            color: Color.fromARGB(255, 103, 212, 59)),
                        child: Center(
                          child: Text(
                            '5',
                            style: TextStyle(fontSize: 50),
                          ),
                        )),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: InkWell(
                    onTap: () {
                      addnum('6');
                    },
                    child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1.0,
                                color: Color.fromARGB(255, 103, 212, 59)),
                            color: Color.fromARGB(255, 103, 212, 592)),
                        child: Center(
                          child: Text(
                            '6',
                            style: TextStyle(fontSize: 50),
                          ),
                        )),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: InkWell(
                    onTap: () {
                      addsign(multiplySign);
                    },
                    child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1.0,
                                color: Color.fromARGB(255, 181, 189, 172)),
                            color: Color.fromARGB(255, 181, 189, 172)),
                        child: Center(
                          child: Text(
                            multiplySign,
                            style: TextStyle(fontSize: 50),
                          ),
                        )),
                  ),
                )),
          ],
        ),
        Row(
          children: [
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: InkWell(
                    onTap: () {
                      addnum('1');
                    },
                    child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1.0,
                                color: Color.fromARGB(255, 103, 212, 59)),
                            color: Color.fromARGB(255, 103, 212, 59)),
                        child: Center(
                          child: Text(
                            '1',
                            style: TextStyle(fontSize: 50),
                          ),
                        )),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: InkWell(
                    onTap: () {
                      addnum('2');
                    },
                    child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1.0,
                                color: Color.fromARGB(255, 103, 212, 59)),
                            color: Color.fromARGB(255, 103, 212, 59)),
                        child: Center(
                          child: Text(
                            '2',
                            style: TextStyle(fontSize: 50),
                          ),
                        )),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: InkWell(
                    onTap: () {
                      addnum('3');
                    },
                    child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1.0,
                                color: Color.fromARGB(255, 103, 212, 59)),
                            color: Color.fromARGB(255, 103, 212, 59)),
                        child: Center(
                          child: Text(
                            '3',
                            style: TextStyle(fontSize: 50),
                          ),
                        )),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: InkWell(
                    onTap: () {
                      addsign(subtractSign);
                    },
                    child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1.0,
                                color: Color.fromARGB(255, 181, 189, 172)),
                            color: Color.fromARGB(255, 181, 189, 172)),
                        child: Center(
                          child: Text(
                            subtractSign,
                            style: TextStyle(fontSize: 50),
                          ),
                        )),
                  ),
                )),
          ],
        ),
        Row(
          children: [
            Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: InkWell(
                    onTap: () {
                      addnum('0');
                    },
                    child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1.0,
                                color: Color.fromARGB(255, 103, 212, 59)),
                            color: Color.fromARGB(255, 103, 212, 59)),
                        child: Center(
                          child: Text(
                            '0',
                            style: TextStyle(fontSize: 50),
                          ),
                        )),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: InkWell(
                    onTap: () {
                      addsign(addSign);
                    },
                    child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1.0,
                                color: Color.fromARGB(255, 181, 189, 172)),
                            color: Color.fromARGB(255, 181, 189, 172)),
                        child: Center(
                          child: Text(
                            addSign,
                            style: TextStyle(fontSize: 50),
                          ),
                        )),
                  ),
                ))
          ],
        ),
        Row(
          children: [
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: InkWell(
                    onTap: () {
                      clear();
                    },
                    child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1.0,
                                color: Color.fromARGB(255, 92, 93, 90)),
                            color: Color.fromARGB(255, 92, 93, 90)),
                        child: Center(
                          child: Text(
                            equalSign,
                            style: TextStyle(fontSize: 50),
                          ),
                        )),
                  ),
                ))
          ],
        )
      ]),
    );
  }

  Widget build(BuildContext context) {
    return bulitcal();
  }
}
