# idute

A new Flutter project.

## Getting Started

The project contains the user interface of two page as shown below: 

![WhatsApp Image 2023-12-09 at 7 54 50 PM](https://github.com/dhruv9977/idute/assets/97451330/f1ea14d3-3219-4f96-b2e4-ef74fab8f0db)
![WhatsApp Image 2023-12-09 at 7 54 52 PM](https://github.com/dhruv9977/idute/assets/97451330/f3bbb059-c654-4efe-9595-33a4f26774da)


## How to Use 

**Step 1:**

Download or clone this repo by using the link below:

```
https://github.com/dhruv9977.idute.git
```

**Step 2:**

Go to project root and execute the following command in console to get the required dependencies: 

```
flutter pub get 
```

**Step 3:**

This project uses `inject` library that works with code generation, execute the following command to generate files:

```
flutter packages pub run build_runner build --delete-conflicting-outputs
```

or watch command in order to keep the source code synced automatically:

```
flutter packages pub run build_runner watch
```

## Hide Generated Files

In-order to hide generated files, navigate to `Android Studio` -> `Preferences` -> `Editor` -> `File Types` and paste the below lines under `ignore files and folders` section:

```
*.inject.summary;*.inject.dart;*.g.dart;
```

In Visual Studio Code, navigate to `Preferences` -> `Settings` and search for `Files:Exclude`. Add the following patterns:
```
**/*.inject.summary
**/*.inject.dart
**/*.g.dart
```

## Conclusion

I will be happy to answer any questions that you may have on this approach, and if you want to lend a hand with the boilerplate then please feel free to submit an issue and/or pull request 🙂

Again to note, this is example can appear as over-architectured for what it is - but it is an example only. If you liked my work, don’t forget to ⭐ star the repo to show your support.
