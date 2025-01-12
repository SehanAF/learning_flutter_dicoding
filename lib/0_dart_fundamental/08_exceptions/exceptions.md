# Exceptions in Dart

## Introduction to Exceptions

Applications in runtime may encounter errors or crashes. These runtime errors are referred to as exceptions. When an exception occurs, the application halts, and any subsequent code is not executed.

### Example Scenario
One common example of an exception occurs in a calculator application. According to mathematical principles, division by zero is undefined and causes an error.

Consider the following code:

```dart
void main() {
  var a = 7;
  var b = 0;
  print(a ~/ b);
}
```

When executed, this code produces an error:

```
Unhandled exception:
IntegerDivisionByZeroException
#0 int.~/ (dart:core-patch/integers.dart:24:7)
#1 main (file:///home/glot/main.dart:4:11)
#2 _startIsolate.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:305:32)
#3 _RawReceivePortImpl._handleMessage (dart:isolate-patch/isolate_patch.dart:174:12)
```

As developers, it is our responsibility to ensure that applications handle such conditions gracefully to prevent crashes. Let’s explore how to handle exceptions in Dart.

---

## Exception Handling with `try` and `catch`

To handle exceptions, use the `try` block. Move the code that might generate an exception into this block.

### Example:
```dart
try {
  var a = 7;
  var b = 0;
  print(a ~/ b);
}
```

The above code identifies potential exceptions but does not yet handle them. From the earlier error message, we know that the exception is an `IntegerDivisionByZeroException`. To handle it, we can use the `on` keyword.

### Handling Specific Exceptions with `on`:
```dart
try {
  var a = 7;
  var b = 0;
  print(a ~/ b);
} on IntegerDivisionByZeroException {
  print('Cannot divide by zero.');
}
```

This approach ensures that the program handles the specific exception and prevents crashes.

---

## General Exception Handling with `catch`

In Dart, there are various exceptions like `IOException`, `FormatException`, and more. To handle unknown exceptions, use the `catch` block. The `catch` block requires a parameter that represents the exception object.

### Example:
```dart
void main() {
  try {
    var a = 7;
    var b = 0;
    print(a ~/ b);
  } catch (e) {
    print('Exception occurred: $e');
  }
}
```

**Output:**
```
Exception occurred: IntegerDivisionByZeroException
```

### Using Stack Trace for Debugging
To get more details about the exception, including where it occurred, add a second parameter to the `catch` block to capture the stack trace.

```dart
void main() {
  try {
    var a = 7;
    var b = 0;
    print(a ~/ b);
  } catch (e, s) {
    print('Exception occurred: $e');
    print('Stack trace: $s');
  }
}
```

The stack trace provides a detailed log of where and why the error occurred, aiding in debugging.

---

## Combining `on` and `catch`

You can combine `on` and `catch` to handle specific exceptions while also providing a general fallback for others.

```dart
void main() {
  try {
    var a = 7;
    var b = 0;
    print(a ~/ b);
  } on IntegerDivisionByZeroException {
    print('Cannot divide by zero.');
  } catch (e) {
    print('An unknown exception occurred: $e');
  }
}
```

---

## Ensuring Cleanup with `finally`

In addition to `try`, `on`, and `catch`, Dart provides the `finally` block, which is always executed regardless of whether an exception occurred. This block is useful for cleanup tasks.

### Example:
```dart
void main() {
  try {
    var a = 7;
    var b = 0;
    print(a ~/ b);
  } catch (e, s) {
    print('Exception occurred: $e');
    print('Stack trace: $s');
  } finally {
    print('This line is always executed.');
  }
}
```

**Output:**
```
Exception occurred: IntegerDivisionByZeroException
Stack trace: #0 int.~/ (dart:core-patch/integers.dart:24:7)
... (stack trace continues)
This line is always executed.
```

The `finally` block ensures that any necessary cleanup actions, like closing files or releasing resources, are performed even if an exception disrupts the normal program flow.

---

## Summary

1. Use `try` to wrap code that may throw exceptions.
2. Handle specific exceptions with `on`.
3. Use `catch` for general exception handling.
4. Utilize `catch` with a stack trace for detailed debugging.
5. Implement a `finally` block for cleanup tasks.

By effectively using Dart’s exception-handling mechanisms, you can create robust applications that gracefully manage errors without crashing.

