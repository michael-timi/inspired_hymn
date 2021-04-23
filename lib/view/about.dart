import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('About'),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Stack(
          children: [
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height * 0.4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 40.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Color(0xff392850), width: 2.0),
                          ),
                          padding: EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/Mine.jpg'),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Oluwatimileyin Michael',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Color(0xff392850)),
                    ),
                    Text(
                      'michtimiael@gmail.com',
                      style:
                          TextStyle(fontSize: 16.0, color: Color(0xff392850)),
                    ),
                    SizedBox(height: 40.0),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 350.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xff392850),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(60),
                        topLeft: Radius.circular(60))),
                child: Column(
                  children: [
                    SizedBox(height: 40.0),
                    Text('Connect me',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Colors.white)),
                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildSocial(icon: FontAwesomeIcons.whatsapp),
                        SizedBox(width: 10.0),
                        buildSocial(icon: FontAwesomeIcons.facebook),
                        SizedBox(width: 10.0),
                        buildSocial(icon: FontAwesomeIcons.twitter),
                        SizedBox(width: 10.0),
                        buildSocial(icon: FontAwesomeIcons.linkedinIn)
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }

  Container buildSocial({icon}) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(32.0))),
      child: IconButton(
          icon: FaIcon(icon), color: Color(0xff392850), onPressed: () {}),
    );
  }
}
