import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp_ui/whatsapp%20Ui/callscreen.dart';
import 'package:whatsapp_ui/whatsapp%20Ui/chatscreen.dart';
import 'package:whatsapp_ui/whatsapp%20Ui/communitypage.dart';
import 'package:whatsapp_ui/whatsapp%20Ui/statusscreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: homeScreen(),
  ));
}

class homeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff075e54),
          title: const Text(
            'WhatsApp',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt_outlined,
                size: 28,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_outlined,
                size: 28,
                color: Colors.white,
              ),
            ),
            PopupMenuButton(
                color: Colors.white,
                iconSize: 28,
                itemBuilder: (context) {
                  return [
                    const PopupMenuItem(child: Text("New group")),
                    const PopupMenuItem(child: Text("new broadcast")),
                    const PopupMenuItem(child: Text("Linked devices")),
                    const PopupMenuItem(child: Text("Starred messages")),
                    const PopupMenuItem(child: Text("Payments")),
                    const PopupMenuItem(child: Text("settings")),
                  ];
                })
          ],
          bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              labelPadding: EdgeInsets.zero,
              tabs: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * .1,
                    child: const FaIcon(
                      FontAwesomeIcons.peopleGroup,
                      size: 20,
                      color: Colors.white,
                    )),
                SizedBox(
                    width: MediaQuery.of(context).size.width * .3,
                    child: const Text(
                      "Chat",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                SizedBox(
                    width: MediaQuery.of(context).size.width * .3,
                    child: const Text(
                      "status",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                SizedBox(
                    width: MediaQuery.of(context).size.width * .3,
                    child: const Text(
                      "Call",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ))
              ]),
        ),
        body: TabBarView(children: [
          CommunityPage(),
          WhatsappChat(),
          StatusScreen(),
          CallScreen(),
        ]),
      ),
    );
  }
}
