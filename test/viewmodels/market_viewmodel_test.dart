import 'package:flutter_test/flutter_test.dart';
import 'package:assess/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('MarketViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
