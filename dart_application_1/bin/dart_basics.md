-- Flutter Dart Double Dots ..| Dart Operators | Cascading
class Person {
  String name = '';
  int age = 0;
  String city = '';

  void setName(String name) {
    this.name = name;
  }

  void setAge(int age) {
    this.age = age;
  }

  void setCity(String city) {
    this.city = city;
  }

  void display() {
    print('Name: $name, Age: $age, City: $city');
  }
}

void main() {
  var person = Person()
    ..setName('Alice')
    ..setAge(30)
    ..setCity('New York')
    ..display(); // Output: Name: Alice, Age: 30, City: New York
}





//! Null Aware Operators in Dart | Flutter Null Safety (?., ??, ??=)
void main() {
  String? str = "Hello World";
  print(str.length);

  String? str;
  print(str ?? "BYe BYe");

}





// ! Flutter Read Data from Local json files

import 'dart:convert';
import 'dart:io';

void main() async {
  await readJson();
}

 this is dart console that why we have not able to used a rootBundle.loadString function() to get a json.
 we use dart:io to read a json file.
Future<void> readJson() async {
  final String response = await File('assets/data.json').readAsString();
  final Map<String, dynamic> mapObject = await jsonDecode(response);
  final List<dynamic> listValues =
      mapObject.entries.map((e) => e.value).toList();
   we  get a list of values from json. if we have a model classes we easily get a particular value from json.
  for (var d in listValues) {
    print(d[0]);
  }
  print(data["item"][0]["name"]);
}

 - Mixin Example
       
        Mixins are a way to share functionality between multiple classes.      
        A mixin is a class that can be used to extend multiple classes.       
        Mixins are similar to interfaces in other programming languages.       
        They are used to provide common functionality that can be applied to multiple classes.      
        Mixins are used to implement multiple inheritance in Dart.      
        The mixin keyword is used to declare a mixin.
            
            abstract class Animal {
              void breathe() {
                print('breathing');
              }
            }

            mixin Bark {
              void bark() => print('Barking');
            }

            mixin Fly {
              void fly() => print('Fly');
            }

            mixin Crawl {
              void crawl() => print('Crawling');
            }

            class Dog extends Animal with Bark {}

            class Bat extends Animal with Fly {}

            class Snake extends Animal with Crawl {
              void display() {
                breathe();
                print('Snake');
                crawl();
              }
            }

            void main() {
              Dog dog = Dog();
              dog.breathe();
              dog.bark();

              Snake snake = Snake();
              snake.display();
            }

 

  -Singleton class
  
    singleton class have only one instance.
    it can be created only once
    and it can be accessed globally
    and it can be accessed from anywhere

    too many singleton class are not good for used in app.
    they are not good for unit test.


            class AppIcon {
            ! private constuctor
              AppIcon._();
              static const fontFam = 'AppIcons';
              static  IconData tropyOutLine = IconData(0xe800, fontFamily: fontFam);,
            }



- Encode and Decode json in dart
      
        import 'dart:convert';
        void main() {
        var map = {"name": "awais", "age": 20};

        String mapString = jsonEncode(map);
        print('json encode');
        print(mapString);
        print('json decode');
        Map<String, dynamic> mapObject = jsonDecode(mapString);
        print(mapObject["name"]);
      } 

          import 'dart:convert';

          import 'package:http/http.dart' as http;

 - Convert fromJson() to convert to json to class object

          void main() async {
            var res =
                await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));
            Task task = Task.fromJson(jsonDecode(res.body));
            print(task.title);
            print(task.body);
          }

          class Task {
            late String title;
            late String body;
            Task({
              required this.title,
              required this.body,
            });

  - name constructor
           
            Task.fromJson(Map<String, dynamic> json) {
              title = json['title'];
              body = json['body'];
            }
          }
          
