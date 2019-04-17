import 'package:onduty/services/OnDutyService.dart';
import 'package:flutter_test/flutter_test.dart';

void main () {

test('Verify Users Can Be Retrieved', () async {

  OnDuty onDuty = new OnDuty();
  List<String> people = await onDuty.retrieveOnDutyPersonel(); 
  expect(people, equals("ridvan"));
});



}