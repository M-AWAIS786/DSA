
* Different Types of classes in dart 
* Classes in Dart
* Class Types
* Dart has two types of classes, abstract classes and concrete classes.
* Abstract classes are classes that can't be instantiated and are used as base classes for other classes.
* Concrete classes are classes that can be instantiated and are used to create objects.
* Concrete Class: A regular class with instantiation.
* Abstract Class: A class that serves as a blueprint with unimplemented methods.
* Interface Class: Any class that can be implemented to reuse method signatures.
* Mixin Class: A way to reuse methods across multiple classes.
* Generic Class: A class that can work with different data types.
* Singleton Class: Ensures only one instance of the class is created.
* Static Class: A class where all members are static (not instantiable).
* Factory Class: A class where the constructor controls instance creation.
* Immutable Class: A class where object properties cannot be changed after creation.
- 1. Concrete Class
      A concrete class is a standard class that can be instantiated (i.e., objects can be created from it). It contains properties, methods, and constructors, and it can have both instance and static members.
  
        class Animal {
          String name
          Animal(this.name);
          void makeSound() {
            print('$name is making a sound.');
          }
        }

- 2. Abstract Class
      An abstract class is a class that cannot be instantiated directly. It's used to define a blueprint for other classes. Abstract classes can contain abstract methods (methods without a body), which must be implemented by any non-abstract subclass.


          abstract class Animal {
            void makeSound(); // abstract method
          }

          class Dog extends Animal {
            @override
            void makeSound() {
              print('Bark!');
            }
          }


- 3. Interface Class
      In Dart, every class can act as an interface. When you implement a class, you're agreeing to provide concrete implementations of all its methods. Unlike inheritance, implementing a class allows multiple classes to be used as interfaces, enabling more flexible designs.
          
            class Printable {
              void printMessage();
              
            class Document implements Printable {
              @override
              void printMessage() {
                print('Printing document...');
              }
            }
          }

- 4. Mixin Class
      A mixin is a special type of class in Dart used to share behavior across multiple classes. Unlike inheritance, mixins allow you to reuse a class's methods without extending it. A class that uses a mixin can still extend another class.
      
            mixin Swimmable {
                void swim() {
                  print('Swimming...');
                }
              }
              class Fish with Swimmable {
              void main() {
                Fish fish = Fish();
                fish.swim(); // Output: Swimming...
              }
              }

- 5. Generic Class
      A generic class allows you to write flexible and reusable code by using type parameters. Generic classes work with any type, improving type safety and code reusability.
      
            class Box<T> {
              T content                 
              Box(this.content)                 
                void printContent() {
                  print('Content: $content');
                }
            }
            void main() {
              var intBox = Box<int>(42);
            intBox.printContent(); // Output: Content: 4                
              var stringBox = Box<String>('Hello');
              stringBox.printContent(); // Output: Content: Hello
            }

- 6. Singleton Class
      A singleton class ensures that only one instance of the class is created during the app's lifetime. It's useful when you want to manage shared state or resources.
            
             class Singleton {
               static final Singleton _instance = Singleton._internal()           
               factory Singleton() {
                 return _instance;

               Singleton._internal();
               }
             }
             void main() {
               var instance1 = Singleton();
               var instance2 = Singleton()            
               print(instance1 == instance2); // Output: true (both instances are the same)
             }

- 7. Static Class
      Dart doesn't have a direct "static class" concept like other languages. However, you can simulate this behavior by using a class with only static members. A static class in this sense can't be instantiated, and all its properties and methods belong to the class rather than instances of the class.
            
            class Utility {
              static void printMessage() {
                print('This is a utility method');
              }
            }
            
            void main() {
              Utility.printMessage(); // Output: This is a utility method
            }

- 8. Factory Class
      A factory constructor in a class is used when you don't always want to create a new instance of a class. Instead, you may return an existing instance or manage how the instances are created.

            class Car {
              static final Map<String, Car> _cache = <String, Car>{};

              factory Car(String model) {
                if (_cache.containsKey(model)) {
                  return _cache[model]!;
                } else {
                  final car = Car._internal(model);
                  _cache[model] = car;
                  return car;
                }
              }

              final String model;
              Car._internal(this.model);
            } 

- 9. Immutable Class
      An immutable class is a class whose objects cannot be modified once they are created. This is usually done by making all fields final and using a const constructor. 
            
            class Point {
              final int x;
              final int y;

              const Point(this.x, this.y);
            }

            void main() {
              const point = Point(2, 3);
              // point.x = 4; // This will give an error since x is final.
            } 