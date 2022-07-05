
import 'package:flutter/material.dart';

import '../util/hexcolor.dart';

class Wisdom extends StatefulWidget {
  const Wisdom({Key? key}) : super(key: key);

  @override
  State<Wisdom> createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  var _index = 0;
  List quotes = [
    "Be the change that you wish to see in the world.",
    "If you set your goals ridiculously high and it's a failure, you will fail above everyone else's success. -James Cameron",
    "If you look at what you have in life, you'll always have more. If you look at what you don't have in life, you'll never have enough. -Oprah Winfrey",
    "If life were predictable it would cease to be life, and be without flavor. -Eleanor Roosevelt",
    "Your time is limited, so don't waste it living someone else's life. Don't be trapped by dogma – which is living with the results of other people's thinking. -Steve Jobs",
    "The way to get started is to quit talking and begin doing. -Walt Disney",
    "The greatest glory in living lies not in never falling, but in rising every time we fall. -Nelson Mandela",
    "Be the change that you wish to see in the world.",
    "The best way to predict the future is to create it.",
    "The future belongs to those who believe in the beauty of their dreams.",
    "The future is in your hands and, as long as you hold on to it, you’ll keep anything you put your mind to.",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Center(
                  child: Container(
                      width: 350,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.5),
                        color: Colors.transparent,
                      ),
                      child: Center(child: Text(quotes[_index % quotes.length],
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                        ),
                      ) )
                  ),
                ),
              ),
              const Divider(
                height: 5,
                thickness: 2.3,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: FlatButton.icon(
                  onPressed: () {
                    setState(() {
                      _showQuote();
                    });
                  },

                  icon: Icon(Icons.wb_sunny),
                  color: Colors.green.shade700,
                  label: const Text(
                      "Inspire me!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      )
                  ),

                ),
              ),
              const Spacer()
            ],
          )

      ),
    );
  }

  void _showQuote() {
    _index++;

  }
}