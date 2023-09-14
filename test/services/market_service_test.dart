import 'package:flutter_test/flutter_test.dart';
import 'package:assess/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('MarketServiceTest -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
