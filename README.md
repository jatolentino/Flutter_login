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

