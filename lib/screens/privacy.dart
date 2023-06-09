import 'package:flutter/material.dart';

import 'package:vipoffice/constants/Theme.dart';

import 'package:vipoffice/widgets/navbar.dart';

String privacyText1 =
    "In recent months, Facebook, Google, IBM, Microsoft and others have aggressively lobbied officials in the Trump administration and elsewhere to start outlining a federal privacy law, according to administration officials and the companies. The law would have a dual purpose, they said: It would overrule the California law and instead put into place a kinder set of rules that would give the companies wide leeway over how personal digital information was handled.";
String privacyText2 =
    "We are committed to being part of the process and a constructive part of the process,” said Dean Garfield, president of a leading tech industry lobbying group, the Information Technology Industry Council, which is working on proposals for the federal law. “The best way is to work toward developing our own blueprint.";
String privacyText3 =
    "The efforts could set up a big fight with consumer and privacy groups, especially as companies like Facebook face scrutiny for mishandling users’ personal data. Many of the internet companies depend on the collection and analysis of such data to help them target the online ads that generate the bulk of their revenue.";
String privacyText4 =
    "At a board meeting for the Information Technology Industry Council in May, Joel Kaplan, Facebook’s top lobbyist, warned that an early proposal for privacy in California posed a threat to the industry and that the trade group needed to make the issue of privacy a priority, according to two people briefed on the meeting, who were not authorized to speak publicly.";

class Privacy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Navbar(
          title: "Privacy",
          rightOptions: false,
          backButton: true,
        ),
        backgroundColor: ArgonColors.bgColorScreen,
        body: Stack(children: [
          SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.only(
                left: 32.0, right: 32, top: 24, bottom: 100),
            child: Column(
              children: [
                Text(privacyText1,
                    style: TextStyle(fontSize: 16, color: ArgonColors.text)),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(privacyText2,
                      style: TextStyle(fontSize: 16, color: ArgonColors.text)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(privacyText3,
                      style: TextStyle(fontSize: 16, color: ArgonColors.text)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(privacyText4,
                      style: TextStyle(fontSize: 16, color: ArgonColors.text)),
                ),
              ],
            ),
          )),
          Align(
            alignment: FractionalOffset.bottomCenter,
            child: Container(
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height * 0.15,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [
                      0.1,
                      0.8
                    ],
                        colors: [
                      Color.fromRGBO(255, 255, 255, 0),
                      Color.fromRGBO(255, 255, 255, 1)
                    ])),
                child: SafeArea(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 150,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          onPrimary: ArgonColors.white,
                          primary: ArgonColors.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(4),
                          ),
                        ),
                        onPressed: () {
                          // Respond to button press
                        },
                        child: Text("ACCEPT",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16.0)),
                      ),
                    ),
                    Container(
                      width: 150,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          onPrimary: ArgonColors.muted,
                          primary: ArgonColors.secondary,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(4),
                          ),
                        ),
                        onPressed: () {
                          // Respond to button press
                        },
                        child: Text("DECLINE",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16.0)),
                      ),
                    )
                  ],
                ))),
          )
        ]));
  }
}
