import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Авторизация'),
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Center(
          child:ConstrainedBox(
            constraints: BoxConstraints.expand(width: 300, height: 300),
          child:Column(
            children: <Widget>[
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email",
                    hintText: "Введите email или логин",
                  ),
                ),
                flex: 1,
                ),
                SizedBox(height: 16,),
              Expanded(
                flex: 1,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    hintText: "Введите пароль",
                ),
                ),
              ),
              SizedBox(height: 16,),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.all(8),
                      child: ElevatedButton(
                        child: const Text('Вход'),
                        onPressed: (){}),
                      ),
                    ), 
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                        child: const Text('Регистрация'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SecondRoute()),
                          );
                        },
                        ),
                    ),
                    )
                  ],
                 ),
                ),
          ],
          )
        ),
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Регистрация'),
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: 300, maxHeight: 500),
            child: ListView(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Имя",
                    hintText: "Введите имя",
                  ),
                ),
              ),
              SizedBox(height: 16,),
              Expanded(
                flex: 1,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Фамилия",
                    hintText: "Введите фамилию",
                  ),
                  ),
                ),
              SizedBox(height: 16,),
              Expanded(
                flex: 1,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Логин",
                    hintText: "Введите логин",
                  ),
                  ),
                ),
              SizedBox(height: 16,),
              Expanded(
                flex: 1,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email",
                    hintText: "Введите email",
                  ),
                  ),
                ),
              SizedBox(height: 16,),
              Expanded(
                flex: 1,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Пароль",
                    hintText: "Введите пароль",
                  ),
                  ),
              ),
              SizedBox(height: 16,),
              Expanded(
                flex: 1,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Подтвердите пароль",
                  ),
                  ),
              ),
              SizedBox(height: 16,),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.all(8),
                      child: ElevatedButton(
                        onPressed: (){}, 
                        child: const Text('Регистрация')
                        ),
                    ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.all(8),
                      child: ElevatedButton(
                        onPressed: () {
                        Navigator.pop(context);
                        },
                        child: const Text('Вход'),
                      ),
                    ),
                    ),
                  ],
                  )
                )
            ],
          ),
        ),
        ),
      ),
    );
  }
}