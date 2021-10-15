import 'package:flutter/material.dart';

class ShowMoneyShareUI extends StatefulWidget {
  //ตัวแปลสำหรับส่งค่า
  double money = 0, tip = 0, money_share = 0;
  int person = 0;

  //คอนสตรักเตอร์ที่จะไว้รับค่าที่ส่งมาเพื่อกำหนดให้กับตัวแปรที่สร้างไว้ข้างบน
  ShowMoneyShareUI({
    Key? key,
    required this.money,
    required this.tip,
    required this.person,
    required this.money_share,
  }) : super(key: key);

  @override
  _ShowMoneyShareUIState createState() => _ShowMoneyShareUIState();
}

class _ShowMoneyShareUIState extends State<ShowMoneyShareUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      appBar: AppBar(
        title: Text(
          'ผลการแชร์เงิน',
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 80.0,
              ),
              Image.asset(
                'assets/images/money.png',
                height: 120.0,
              ),
              SizedBox(
                height: 40.0,
              ),
              Text('จำนวนเงินที่จะหาร'),
              Text(
                widget.money.toStringAsFixed(2),
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.deepPurple,
                ),
              ),
              Text(
                'บาท',
              ),
              SizedBox(
                height: 25.0,
              ),
              Text('จำนวนคนที่จะหาร'),
              Text(
                widget.person.toString(),
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.deepPurple,
                ),
              ),
              Text(
                'คน',
              ),
              SizedBox(
                height: 25.0,
              ),
              Text(
                'จำนวนเงินทิป',
              ),
              Text(
                widget.tip.toStringAsFixed(2),
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.deepPurple,
                ),
              ),
              Text(
                'บาท',
              ),
              SizedBox(
                height: 25.0,
              ),
              Text(
                'สรุปว่าหารกันคนละ',
              ),
              Text(
                //widget.money_share.toString(),
                widget.money_share.toStringAsFixed(2),
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.red,
                ),
              ),
              Text(
                'บาท',
              ),
              SizedBox(
                height: 40.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
