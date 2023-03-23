import 'package:flutter/material.dart';

import 'Physics.dart';
import 'favorites.dart';
import 'generator.dart';
import 'studyguides.dart';
import 'APBio.dart';
import 'APCalcBC.dart';
import 'APChem.dart';
import 'SeniorAssasins.dart';
import 'bigOCheatsheet.dart';
import 'LatinI.dart';
import 'LatinII.dart';
import 'LatinIII.dart';
import 'APUSH.dart';
import 'ComputerScienceA.dart';
import 'LinearAlgebra.dart';
import 'MultiCalc.dart';
import 'ChatGPT.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (selectedIndex) {
      case 0:
        page = GeneratorPage();
        break;
      case 1:
        page = FavoritesPage();
        break;
      case 2:
        page = StudyGuides();
        break;
      case 3:
        page = LatinI();
        break;
      case 4:
        page = LatinII();
        break;
      case 5:
        page = LatinIII();
        break;
      case 6:
        page = SeniorAssassins();
        break;
      case 7:
        page = APChemistryStudyGuide();
        break;
      case 8:
        page = APBiologyGuide();
        break;
      case 9:
        page = APCalculusBC();
        break;
      case 10:
        page = BigOCheatsheet();
        break;
      case 11:
        page = APUSH();
        break;
      case 12:
        page = ComputerScienceA();
        break;
      case 13:
        page = MultiCalc();
        break;
      case 14:
        page = ComputerScienceA();
        break;
      case 15:
        page = LinearAlgebra();
        break;
      case 16:
        page = Physics();
        break;
      case 17:
        page = ChatGPTAssistant();
        break;
      default:
        throw UnimplementedError('no widget for $selectedIndex');
    }
    return Scaffold(
      body: Row(
        children: [
          SafeArea(
            child: NavigationRail(
              extended: true,
              destinations: [
                NavigationRailDestination(
                  icon: Icon(Icons.home),
                  label: Text('Home'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.favorite),
                  label: Text('Favorites'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.book),
                  label: Text('Study Guides'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.book),
                  label: Text('Latin I'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.book),
                  label: Text('Latin II'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.book),
                  label: Text('Latin III'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.book),
                  label: Text('Senior Assassins'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.book),
                  label: Text('AP Chemistry Study Guide'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.book),
                  label: Text('AP Biology Study Guide'),
                ),
                NavigationRailDestination(
                    icon: Icon(Icons.calculate),
                    label: Text('AP Calculus BC Guide')),
                NavigationRailDestination(
                    icon: Icon(Icons.lock_clock),
                    label: Text('Big O Cheat Sheet')),
                NavigationRailDestination(
                    icon: Icon(Icons.history),
                    label: Text('APUSH Study Guide')),
                NavigationRailDestination(
                    icon: Icon(Icons.computer),
                    label: Text('AP Computer Science A')),
                NavigationRailDestination(
                    icon: Icon(Icons.functions), label: Text('Multi-Calc')),
                NavigationRailDestination(
                    icon: Icon(Icons.blur_linear),
                    label: Text('Linear Algebra')),
                NavigationRailDestination(
                    icon: Icon(Icons.access_alarm),
                    label: Text('Physics Study Guide')),
              ],
              selectedIndex: selectedIndex,
              onDestinationSelected: (value) {
                setState(() {
                  selectedIndex = value;
                });
              },
            ),
          ),
          Expanded(
            child: Container(
              color: Theme.of(context).colorScheme.primaryContainer,
              child: page,
            ),
          ),
        ],
      ),
    );
  }
}
