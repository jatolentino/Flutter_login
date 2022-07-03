# flutter_login

A new Flutter project.

### 1. Getting Started

- Create the project in the terminal (it'll also create the folder)

    ```bash
        flutter create flutter_login
    ```

- Open VSCODE and open the folder `flutter_login` just created
- Navigate to the Source Control icon on VSCODE and choose the option `Publish to Github`, then enter your credentials and set the name of the repo (Flutter_login).


### 2. Modify the main.dat

- Create the LoginPage class

    ```dart
    import 'package:flutter/material.dart';
    import 'login_page.dart';

    void main() => runApp(MyApp());

    class MyApp extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
            return MaterialApp(
                title: 'Flutter Demo',
                theme: ThemeData(
                    primarySwatch: Colors.blue,
                ),
                home: LoginPage()
            );
        }
    }
    ```

### 3. Create the login_page.dart

- In the lib folder create the login_page.dart

    ```dart
    import 'package:flutter/cupertino.dart';
    import 'package:flutter/material.dart';

    class LoginPage extends StatefulWidget {
        const LoginPage({Key? key}): super(key: key);

        @override
        _LoginPageState createState() => __LoginPageState();
    }

    class _HomePageState extends State<LoginPage> {
        @override
        Widget build(BuildContext context) {
            return Scaffold(

            );
        }
    }
    ```
- Add the images folder in the root folder and edit the pubspec.yaml file
    ```yml
    flutter:
        assets:
            - img/
    ```

### 4. Edit the login_page.dart

- Add image and sample test

    ```dart
    import 'package:flutter/cupertino.dart';
    import 'package:flutter/material.dart';

    class LoginPage extends StatefulWidget {
    const LoginPage({Key? key}): super(key: key);

    @override
    _LoginPageState createState() => _LoginPageState();
    }

    class _LoginPageState extends State<LoginPage> {
    @override
    Widget build(BuildContext context) {
        double w = MediaQuery.of(context).size.width; //max width in window
        double h = MediaQuery.of(context).size.height; //max height in window
        return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
            children: [
            Container(
                width: w,
                height: h*0.3,
                decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                    "img/loginimg.png"
                    ),
                    fit: BoxFit.cover
                )
                ),
            ),
            Container(
                child: Column(
                children: [
                    Text(
                    "hello",
                    style: TextStyle(
                        fontSize: 70,
                        fontWeight: FontWeight.bold

                    ),
                    )
                ]
                )
            )
            ]
        )
        );
    }
    }
    ```

    Test 4.1 Compliled @ the branch of [`ver-1.0`](https://github.com/jatolentino/Flutter_login/tree/ver1.0)
    <p align="center">
    	<img src="https://github.com/jatolentino/Flutter_login/blob/ver1.0/source/step4-test-1.png" width="300">
    </p>
    
