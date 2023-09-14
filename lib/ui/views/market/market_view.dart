import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_strings.dart';
import '../../components/full_width_button.dart';
import 'market_viewmodel.dart';

class MarketView extends StackedView<MarketViewModel> {
  const MarketView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MarketViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
          child: FullWidthButton(
            onPressed: () => viewModel.loadProducts(),
            buttonText: ksLoadProducts,
          ),
        ),
      ),
    );
  }

  @override
  MarketViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MarketViewModel();
}
