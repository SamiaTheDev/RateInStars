#Rate In Stars
Rate In Stars allows you to rate items in your Flutter app.


## Installation

1. Add the latest version of package to your pubspec.yaml (and run 'dart pub get'):
```yaml
dependencies:
    rate_in_stars: ^0.0.1
```
2. Import the package and ise it in your Flutter app.
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


