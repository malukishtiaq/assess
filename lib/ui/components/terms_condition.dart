import 'package:assess/ui/common/common_files.dart';
import 'package:flutter/material.dart';

class TermsCondition extends StatelessWidget {
  const TermsCondition({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            ksYouAgree,
            textAlign: TextAlign.center,
            style: normalTextStyle(),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text(
            ksTermsCondition,
            style: TextStyle(
              color: kcTextGreenColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
