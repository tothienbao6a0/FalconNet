import 'package:flutter/material.dart';

class APChemistryStudyGuide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AP Chemistry Study Guide'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Topics:',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            ListTile(
              title: Text('Atomic Structure'),
              subtitle: Text(
                  'Electronic configuration, isotopes, atomic mass, and atomic number'),
            ),
            ListTile(
              title: Text('Bonding'),
              subtitle: Text('Ionic, covalent, and metallic bonding'),
            ),
            ListTile(
              title: Text('Acids and Bases'),
              subtitle: Text('pH, pOH, strong and weak acids and bases'),
            ),
            ListTile(
              title: Text('Thermochemistry'),
              subtitle:
                  Text('Heat, internal energy, enthalpy, and thermodynamics'),
            ),
            ListTile(
              title: Text('Solutions and Solubility'),
              subtitle: Text(
                  'Concentration, molarity, molality, and colligative properties'),
            ),
          ],
        ),
      ),
    );
  }
}
