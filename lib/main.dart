import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: pageHome(),
    );
  }
}

class pageHome extends StatefulWidget {

  @override
  _pageHomeState createState() => _pageHomeState();
}

class _pageHomeState extends State<pageHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/paisagem.jpg'),
                fit: BoxFit.fill
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                    child: Container(
                      margin: EdgeInsets.only(top: 50),


                      child: Center(
                        child: Stack(
                          children: [
                            Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 40,
                                foreground: Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 6
                                  ..color = Colors.white,
                              ),
                            ),
                            // Solid text as fill.
                            Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.purple[100],
                              ),
                            ),
                          ],
                        ),
                      ),
                ),),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(253, 177, 45, 0.5),
                        blurRadius: 20,
                        offset: Offset(0,10)
                      ),
                    ]
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.grey[100])
                          ),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email",
                            hintStyle: TextStyle(color: Colors.grey[400])
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Senha",
                            hintStyle: TextStyle(color: Colors.grey[400])
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 44.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(colors: [
                        Color.fromRGBO(253, 177, 45, 1),
                        Color.fromRGBO(253, 177, 45, 0.5),
                  ])),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(primary: Colors.transparent, shadowColor: Colors.transparent),
                    child: Text('Entrarr', style: TextStyle(color: Colors.white, fontSize: 20),),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

