import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: LoginPage()));
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            CustomPaint(
              size: MediaQuery.of(context).size,
              painter: CurvePainter2(),
            ),
            CustomPaint(
              size: MediaQuery.of(context).size,
              painter: CurvePainter1(),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                //heading row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text("LOG-IN",
                        style: TextStyle(color: Colors.white, fontSize: 40)),
                  ],
                ),
                const SizedBox(
                  height: 200,
                ),
                const SizedBox(
                  width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("UserName"),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Password"),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                //Button Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        height: 50,
                        width: 90,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Reg1()),
                              );
                            }, child: const Text("Sign-Up"))),
                    const SizedBox(width: 20),
                    SizedBox(
                        width: 90,
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const DashBoard()),
                              );
                            },
                            child: const Text("Log-In"))),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CurvePainter1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.pinkAccent;
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * 0.9167);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.875,
        size.width * 0.5, size.height * 0.9167);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.9584,
        size.width * 1.0, size.height * 0.9167);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class CurvePainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.pinkAccent;
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, 0);
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.1,
        size.width * 0.5, size.height * 0.2);

    path.quadraticBezierTo(size.width * 0.81, size.height * 0.28,
        size.width * 1.0, size.height * 0.18);
    path.lineTo(size.width, 0);
    // path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

//////////////////////////////////////////////////

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 60),
            //Heading row
            Row(
              children: [
                Row(
                  children: [
                    IconButton(icon: Icon(Icons.menu), onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => const Profile()),);
                    },),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.24,),
                    Column(
                      //heading column
                      children: const [
                        Text(
                          "CLINIC",
                          style: TextStyle(fontSize: 40),
                        ),
                        Text("Describe Your State ")
                      ],
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.22,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.sos)),

                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: Card(
                    elevation: 50,
                    shadowColor: Colors.black,
                    child: SizedBox(
                      width: 180,
                      height: 270,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                        child: Column(
                          children:[
                            const CircleAvatar(
                              radius: 40,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              'You Have A Chronic Condition Like Diabetes or Heart Problem',
                              style: const TextStyle(
                                // fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 15,),
                            SizedBox(
                              height: 40,
                              child: ElevatedButton(onPressed: (){},
                                style: ButtonStyle(
                                    backgroundColor:
                                    MaterialStateProperty.all(Colors.green)),
                                child: Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(Icons.check),
                                      Text('Select')
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Card(
                    elevation: 50,
                    shadowColor: Colors.black,
                    child: SizedBox(
                      width: 180,
                      height: 270,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                        child: Column(
                          children:[
                            const CircleAvatar(
                              radius: 40,
                            ),
                      const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              'Have an increased risk of Preterm Labor',
                              style: const TextStyle(
                                // fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 15,),
                            Spacer(),
                            SizedBox(
                              height: 40,
                              child: ElevatedButton(onPressed: (){},
                                style: ButtonStyle(
                                    backgroundColor:
                                    MaterialStateProperty.all(Colors.green)),
                                child: Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(Icons.check),
                                      Text('Select')
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: Card(
                    elevation: 50,
                    shadowColor: Colors.black,
                    child: SizedBox(
                      width: 180,
                      height: 270,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                        child: Column(
                          children:[
                            const CircleAvatar(
                              radius: 40,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              'You are pregnant with more than one fetus',
                              style: const TextStyle(
                                // fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 15,),
                            Spacer(),
                            SizedBox(
                              height: 40,
                              child: ElevatedButton(onPressed: (){},
                                style: ButtonStyle(
                                    backgroundColor:
                                    MaterialStateProperty.all(Colors.green)),
                                child: Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(Icons.check),
                                      Text('Select')
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Card(
                    elevation: 50,
                    shadowColor: Colors.black,
                    child: SizedBox(
                      width: 180,
                      height: 270,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                        child: Column(
                          children:[
                            const CircleAvatar(
                              radius: 40,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              'Your age is 35 or above',
                              style: const TextStyle(
                                // fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 15,),
                            Spacer(),
                            SizedBox(
                              height: 40,
                              child: ElevatedButton(onPressed: (){},
                                style: ButtonStyle(
                                    backgroundColor:
                                    MaterialStateProperty.all(Colors.green)),
                                child: Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(Icons.check),
                                      Text('Select')
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20,)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

///////////////////////////////////

class Reg1 extends StatelessWidget {
  const Reg1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            CustomPaint(
              size: MediaQuery.of(context).size,
              painter: CurvePainter2(),
            ),
            CustomPaint(
              size: MediaQuery.of(context).size,
              painter: CurvePainter1(),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                //heading row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text("Sign-Up",
                        style: TextStyle(color: Colors.white, fontSize: 40)),
                  ],
                ),
                const SizedBox(
                  height: 200,
                ),
                const SizedBox(
                  width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Name"),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("DOB"),
                      hintText: "(DD/MM/YYYY)",
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                const SizedBox(
                  width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Blood Group"),
                      hintText: ("O+/O-/A+/A-/B+/B-/AB+/AB-"),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                //Button Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: 90,
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Reg2()),
                              );
                            },
                            child: const Text("NEXT"))),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Reg2 extends StatelessWidget {
  const Reg2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            CustomPaint(
              size: MediaQuery.of(context).size,
              painter: CurvePainter2(),
            ),
            CustomPaint(
              size: MediaQuery.of(context).size,
              painter: CurvePainter1(),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                //heading row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text("Sign-Up",
                        style: TextStyle(color: Colors.white, fontSize: 40)),
                  ],
                ),
                const SizedBox(
                  height: 200,
                ),
                //text
                const SizedBox(
                  width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Email"),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //text
                const SizedBox(
                  width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Mobile Number"),
                      hintText: "+91 9876543210",
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                //text
                const SizedBox(
                  width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("OTP"),
                      hintText: ("Enter 6 Digit OTP"),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                //Button Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        height: 50,
                        width: 90,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            }, child: const Text("Back"))),
                    const SizedBox(width: 20),
                    SizedBox(
                        width: 90,
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Reg3()),
                              );
                            },
                            child: const Text("NEXT"))),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Reg3 extends StatelessWidget {
  const Reg3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            CustomPaint(
              size: MediaQuery.of(context).size,
              painter: CurvePainter2(),
            ),
            CustomPaint(
              size: MediaQuery.of(context).size,
              painter: CurvePainter1(),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                //heading row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text("Sign-Up",
                        style: TextStyle(color: Colors.white, fontSize: 40)),
                  ],
                ),
                const SizedBox(
                  height: 200,
                ),
                //text
                const SizedBox(
                  width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Create Password"),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //text
                const SizedBox(
                  width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Confirm Password"),
                      hintText: "",
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                //Button Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        height: 50,
                        width: 90,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            }, child: const Text("Back"))),
                    const SizedBox(width: 20),
                    SizedBox(
                        width: 90,
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Reg4()),
                              );
                            },
                            child: const Text("NEXT"))),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Reg4 extends StatelessWidget {
  const Reg4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            CustomPaint(
              size: MediaQuery.of(context).size,
              painter: CurvePainter2(),
            ),
            CustomPaint(
              size: MediaQuery.of(context).size,
              painter: CurvePainter1(),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                //heading row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text("Sign-Up",
                        style: TextStyle(color: Colors.white, fontSize: 40)),
                  ],
                ),
                const SizedBox(
                  height: 200,
                ),
                //text
                const SizedBox(
                  width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Address"),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //text
                const SizedBox(
                  width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Emergency Contact-1"),
                      hintText: "+91 9876543210",
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                //text
                const SizedBox(
                  width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Emergency Contact-2"),
                      hintText: ("+91 9876543210"),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                //Button Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        height: 50,
                        width: 90,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            }, child: const Text("Back"))),
                    const SizedBox(width: 20),
                    SizedBox(
                        width: 90,
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const DashBoard()),
                              );
                            },
                            child: const Text("NEXT"))),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            const SizedBox(height: 60),
            //Heading row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                    Column(
                      //heading column
                      children: const [
                        Text(
                          "Profile",
                          style: TextStyle(fontSize: 40),
                        ),
                        Text("Modify Your Details ")
                      ],
                    ),
              ],
            ),
            SizedBox(height: 30,),
            CircleAvatar(
              radius: 80,
            ),
            SizedBox(height: 30,),
            const SizedBox(
              width: 350,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Highest Qualification"),
                ),
              ),
            ),
            SizedBox(height: 30,),
            const SizedBox(
              width: 350,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Years Of Experience"),
                ),
              ),
            ),
            SizedBox(height: 30,),
            const SizedBox(
              width: 350,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Your Role"),
                ),
              ),
            ),
            SizedBox(height: 30,),
            SizedBox(
                width: 350,
                child: TextButton(
                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.attach_file),
                        Text("Submit Your Resume"),
                      ],
                    ))
            ),
          ],
        ),
      ),
    );
  }
}