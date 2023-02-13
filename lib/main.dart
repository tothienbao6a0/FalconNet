import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:pdfx/pdfx.dart';

void main() {
  runApp(MyApp());
}

class FavoritesPage extends StatelessWidget {
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    if (appState.favorites.isEmpty) {
      return Center(
        child: Text('No favorites yet.'),
      );
    }

    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text('You have ' '${appState.favorites.length} favorites:'),
        ),
        for (var pair in appState.favorites)
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text(pair.asLowerCase),
          )
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class StudyGuides extends StatefulWidget {
  @override
  _StudyGuidesState createState() => _StudyGuidesState();
}

class _StudyGuidesState extends State<StudyGuides> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Study Guides'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '$_counter',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: GridView.count(
              crossAxisCount: 4,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: Text('Pink'),
                ),
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: Text('Purple'),
                ),
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: Text('Blue'),
                ),
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: Text('Green'),
                ),
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: Text('Orange'),
                ),
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: Text('Yellow'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BigOCheatsheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text("Big-O Notation Cheatsheet", style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            Text("O(1): Constant Time", style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text(
                "An algorithm with a time complexity of O(1) takes the same amount of time to run, regardless of the size of the input.",
                style: TextStyle(fontSize: 14)),
            SizedBox(height: 20),
            Text("O(n): Linear Time", style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text(
                "An algorithm with a time complexity of O(n) takes more time to run as the size of the input grows.",
                style: TextStyle(fontSize: 14)),
            SizedBox(height: 20),
            Text("O(log n): Logarithmic Time", style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text(
                "An algorithm with a time complexity of O(log n) takes a logarithmic amount of time to run as the size of the input grows.",
                style: TextStyle(fontSize: 14)),
            SizedBox(height: 20),
            Text("O(n^2): Quadratic Time", style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text(
                "An algorithm with a time complexity of O(n^2) takes more time to run as the square of the size of the input grows.",
                style: TextStyle(fontSize: 14)),
            SizedBox(height: 20),
            Text("O(2^n): Exponential Time", style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text(
                "An algorithm with a time complexity of O(2^n) takes more time to run as 2 to the power of the size of the input grows.",
                style: TextStyle(fontSize: 14)),
            Image.network(
              'https://miro.medium.com/max/1100/1*0AO5pM3BBiIl8FLUJS_Uhg.webp',
              width: double.infinity,
              height: 500,
              fit: BoxFit.fill,
            ),
            Image.network(
              'https://res.cloudinary.com/practicaldev/image/fetch/s--Wr2oHsky--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://www.bigocheatsheet.com/img/big-o-cheat-sheet-poster.png',
              width: double.infinity,
              height: 500,
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }
}

class APCalculusBC extends StatefulWidget {
  @override
  _APCalculusBCState createState() => _APCalculusBCState();
}

class _APCalculusBCState extends State<APCalculusBC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AP Calculus BC Formulas'),
      ),
      body: ListView(
        children: [
          ExpansionTile(
            title: Text('Chapter 1: Limits'),
            children: [
              Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text('Limit formula:',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('\u03B4(x) \u2192 L as x \u2192 a'),
                    SizedBox(height: 10),
                    Text('Subtext:',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(
                        'The limit formula represents the value that a function approaches as the input value approaches a specific number (a).'),
                    Text("Limits:",
                        style: Theme.of(context).textTheme.headline5),
                    Text(
                        "- Limits are a way to describe the behavior of a function as it approaches a certain value."),
                    Text(
                        "- Limits are used to calculate derivatives and integrals."),
                    Text("Continuity:",
                        style: Theme.of(context).textTheme.headline5),
                    Text(
                        "- A function is continuous at a point if its limit exists at that point and is equal to the function's value at that point."),
                    Text(
                        "- A function is continuous on an interval if it is continuous at every point in that interval."),
                    Text("Differentiability:",
                        style: Theme.of(context).textTheme.headline5),
                    Text(
                        "- A function is differentiable at a point if its derivative exists at that point."),
                    Text(
                        "- A function is differentiable on an interval if it is differentiable at every point in that interval."),
                    Text(
                        "- The derivative of a function at a point gives the rate of change of the function at that point."),
                  ],
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text('Chapter 2: Derivatives'),
            children: [
              Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text('Derivative formula:',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(
                        'f\'(x) = \u0394y/\u0394x = lim(\u0394y/\u0394x) as \u0394x \u2192 0'),
                    SizedBox(height: 10),
                    Text('Subtext:',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(
                        'The derivative formula represents the rate of change of a function at a specific point (x).'),
                    Text(
                      "1. Limit Definition of a Derivative:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    Text(
                      "\nlim(h → 0) (f(x + h) - f(x))/h = f'(x)",
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Tips:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    Text(
                      "\n- Always make sure to double check your limits when using the limit definition of a derivative",
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Text(
                      '1. Constant Rule: \nd(c) = 0\n\n'
                      '2. Power Rule: \nd(x^n) = nx^(n-1)\n\n'
                      '3. Sum/Difference Rule: \nd(u + v) = du/dx + dv/dx\nd(u - v) = du/dx - dv/dx\n\n'
                      '4. Product Rule: \nd(uv) = udv/dx + vdu/dx\n\n'
                      '5. Quotient Rule: \nd(u/v) = (vdu/dx - udv/dx)/v^2\n\n'
                      '6. Chain Rule: \nd(f(g(x))) = df/dx(g(x))dg/dx\n\n',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // Add more chapters as needed
        ],
      ),
    );
  }
}

class APBiologyGuide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AP Biology Guide"),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "Chapter 1: Introduction to Biology",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "In this chapter, you will learn about the fundamental concepts of biology, including the scientific method and cellular structure and function. You will also explore the history of biology and the major theories and discoveries that have shaped our understanding of life.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "Chapter 2: The Chemical Basis of Life",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "In this chapter, you will learn about the important molecules and elements that make up living organisms, including carbohydrates, lipids, proteins, and nucleic acids. You will also learn about chemical reactions, enzymes, and metabolic pathways.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            // Add more chapters here
          ],
        ),
      ),
    );
  }
}

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

class SeniorAssassins extends StatefulWidget {
  @override
  _SeniorAssassinsState createState() => _SeniorAssassinsState();
}

class _SeniorAssassinsState extends State<SeniorAssassins> {
  List<String> teams = [
    "Team 1: Bao",
    "Team 2: Ray, Om, Adithya",
    "Team 3: Jack, Shaurya, Tomaz"
  ];
  Map<String, int> scores = {"Team 1": 100, "Team 2": 20, "Team 3": 15};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Senior Assassins"),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Text("Teams:",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: teams.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(teams[index]),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Text("Scoreboard:",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: scores.keys.length,
              itemBuilder: (BuildContext context, int index) {
                String team = scores.keys.toList()[index];
                int? score = scores[team];
                return ListTile(
                  title: Text("$team: $score"),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(14),
            child: PDFView(
              filePath: 'icons/Thesisbaoto.pdf',
            ),
          )
        ],
      ),
    );
  }
}

class LatinIII extends StatefulWidget {
  @override
  _LatinIIICreateState createState() => _LatinIIICreateState();
}

class _LatinIIICreateState extends State<LatinIII> {
  List<Flashcard> flashcards = [];
  late String userInputWord;
  late String userInputTranslation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latin III"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: flashcards.length,
              itemBuilder: (BuildContext context, int index) {
                return FlashcardWidget(flashcard: flashcards[index]);
              },
            ),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Enter the Latin Word'),
            onChanged: (text) {
              userInputWord = text;
            },
          ),
          TextField(
            decoration:
                InputDecoration(labelText: 'Enter the English translation'),
            onChanged: (text) {
              userInputTranslation = text;
            },
          ),
          ElevatedButton(
            child: Text("Add Flashcard"),
            onPressed: () {
              setState(() {
                flashcards.add(Flashcard(userInputWord, userInputTranslation));
              });
            },
          ),
        ],
      ),
    );
  }
}

class FlashcardWidget extends StatelessWidget {
  final Flashcard flashcard;

  const FlashcardWidget({Key? key, required this.flashcard}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      child: Column(
        children: [
          Text(flashcard.latinWord),
          Text(flashcard.englishTranslation),
        ],
      ),
    );
  }
}

class Flashcard {
  String latinWord;
  String englishTranslation;

  Flashcard(this.latinWord, this.englishTranslation);
}

class LatinII extends StatefulWidget {
  @override
  _LatinIIState createState() => _LatinIIState();
}

class _LatinIIState extends State<LatinII> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latin II'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Argonauta'),
            subtitle: Text('Argonaut'),
          ),
          ListTile(
            title: Text('Auriga'),
            subtitle: Text('Ray'),
          ),
          ListTile(
            title: Text('Medea'),
            subtitle: Text('Witch'),
          ),
          ListTile(
            title: Text('Iason'),
            subtitle: Text('Jason'),
          ),
          ListTile(
            title: Text('Pelias'),
            subtitle: Text('King'),
          ),
          ListTile(
            title: Text('Medea'),
            subtitle: Text('Witch'),
          ),
        ],
      ),
    );
  }
}

class LatinI extends StatefulWidget {
  @override
  _LatinIState createState() => _LatinIState();
}

class _LatinIState extends State<LatinI> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latin I'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '$_counter',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: GridView.count(
              crossAxisCount: 4,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: Text('Pink'),
                ),
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: Text('Purple'),
                ),
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: Text('Blue'),
                ),
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: Text('Green'),
                ),
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: Text('Orange'),
                ),
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: Text('Yellow'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();

  void getNext() {
    current = WordPair.random();
    notifyListeners();
  }

  var favorites = <WordPair>[];
  void toggleFavorite() {
    if (favorites.contains(current)) {
      favorites.remove(current);
    } else {
      favorites.add(current);
    }
    notifyListeners();
  }
}

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

class GeneratorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generator'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Image.network(
              'https://resources.finalsite.net/images/f_auto,q_auto,t_image_size_2/v1598545454/peddie/dwkfurq7ep94v2cc7rn7/PeddieAM.png',
              width: double.infinity,
              height: 500,
              fit: BoxFit.fill,
            ),
          ),
          Center(
            child: Text('Generator'),
          ),
        ],
      ),
    );
  }
}

class BigCard extends StatelessWidget {
  const BigCard({
    Key? key,
    required this.pair,
  }) : super(key: key);

  final WordPair pair;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var style = theme.textTheme.displayMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
    );

    return Card(
      color: theme.colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
          pair.asLowerCase,
          style: style,
          semanticsLabel: pair.asPascalCase,
        ),
      ),
    );
  }
}
