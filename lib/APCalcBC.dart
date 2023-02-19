import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

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
          //pdfviewer
          SizedBox(
              height: 500,
              width: 500,
              child: SfPdfViewer.asset('assets/AP Calculus BC.pdf'))
        ],
      ),
    );
  }
}
