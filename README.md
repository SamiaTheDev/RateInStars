# Rate In Stars
A Flutter package to rate items in stars. The stars can be editable if the user inputs the rating, or non editable if you only want to display the rating to the user.


## Installation

1. Add the latest version of package to your pubspec.yaml (and run 'dart pub get'):
```yaml
dependencies:
    rate_in_stars: ^0.0.3
```
2. Import the package and use it in your Flutter app.
```dart
import 'package:rate_in_stars/rate_in_stars.dart';
```
### Usage
The rating can be editable - dynamic, or non editable - static.
<img src="https://github.com/SamiaTheDev/RateInStarsFiles/blob/main/Screenshot%202021-11-27%20at%201.10.49%20PM.png?raw=true alt="" >
<img src="https://github.com/SamiaTheDev/RateInStarsFiles/blob/main/Screenshot%202021-11-27%20at%201.12.17%20PM.png?raw=true alt="" >


## Example
There are a number of properties that you can modify:

- rating
- editable
- iconSize
- color

```dart
class RatingStarsWidget extends StatelessWidget {
  const RatingStarsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RatingStars(
        editable: true,
        rating: 3.5,
        color: Colors.amber,
        iconSize: 32,
      ),
    );
  }
}
```

## Next Steps
 - Accept different icon types
 - Edit with decimal values 


