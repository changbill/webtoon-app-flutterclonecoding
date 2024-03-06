import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:po/widgets/button.dart';
import 'package:po/widgets/currency_card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor:
            const Color(0xFF181818), // costom 색을 사용하고 싶다면 0xFF 뒤에 숫자
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          // all 상하좌우 전부 padding을 줌.
          // all외에 r,l 등등 있음
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Hey, Selena',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.8), // 불투명도
                            fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 70,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Balance',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white.withOpacity(0.8),
                        ),
                      ),
                      const Text(
                        '\$5 194 482',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(
                      text: 'transfer',
                      bgColor: Color.fromRGBO(248, 175, 65, 1),
                      textColor: Colors.black),
                  Button(
                      text: 'Request',
                      bgColor: Color.fromARGB(255, 69, 69, 69),
                      textColor: Colors.white),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    'Wallets',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const CurrencyCard(
                name: 'Euro',
                code: 'EUR',
                amount: '6 428',
                icon: Icons.euro,
                isInverted: false,
                offset: 0,
              ),
              const CurrencyCard(
                name: 'Bitcoin',
                code: 'BTC',
                amount: '112',
                icon: Icons.currency_bitcoin,
                isInverted: true,
                offset: -20,
              ),
              const CurrencyCard(
                name: 'Dollar',
                code: 'USD',
                amount: '13 423',
                icon: Icons.attach_money_outlined,
                isInverted: false,
                offset: -40,
              ),
            ],
          ),
        ),
      ),
    ); // MaterialApp
  }
}
