import 'package:backtolife/core/init/notifier/language_notifier.dart';
import 'package:provider/provider.dart';

import '../../../../../core/init/lang/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/base/view/base_view.dart';
import '../../../../../core/extension/context_extension.dart';
import '../../../../../core/init/svgPath/image_path_svg.dart';
import '../../../../widgets/slideAnimation/slide_animation_list.dart';
import '../viewModel/language_settings_view_model.dart';

class LanguageSettingsView extends StatefulWidget {
  const LanguageSettingsView({Key? key}) : super(key: key);

  @override
  _LanguageSettingsViewState createState() => _LanguageSettingsViewState();
}

class _LanguageSettingsViewState extends State<LanguageSettingsView>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    Provider.of<LanguageNotifier>(context, listen: false).initLanguage();
  }

  @override
  Widget build(BuildContext context) {
    return BaseView<LanguageViewModel>(
        viewModel: LanguageViewModel(),
        onModelReady: (LanguageViewModel model) {
          model.setContext(context);
          model.init();
        },
        onPageBuilder: (context, _viewModel) => Scaffold(
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 2, child: _upperContainer(context, _viewModel)),
                  Expanded(
                    flex: 8,
                    child: Column(
                      children: [
                        _englishLanguage(context, _viewModel),
                        Divider(height: 10),
                        _turkishLanguage(context, _viewModel),
                        Divider(height: 10)
                      ],
                    ),
                  ),
                ],
              ),
            ));
  }

  Container _upperContainer(
      BuildContext context, LanguageViewModel _viewModel) {
    return Container(
      decoration: BoxDecoration(
          color: context.colors.background,
          borderRadius: context.highOnlyBottomRadius),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: IconButton(
                  icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                  onPressed: () => Navigator.pop(context))),
          Expanded(
              flex: 3,
              child: Text(LocaleKeys.settings_language.tr(),
                  style: context.textTheme.headline5!
                      .copyWith(color: context.colors.surface))),
        ],
      ),
    );
  }

  Container _englishLanguage(
      BuildContext context, LanguageViewModel _viewModel) {
    return Container(
        margin: EdgeInsets.only(top: context.mediumValue),
        width: double.infinity,
        height: context.height * 0.09,
        child: ListTile(
          onTap: () => _viewModel.changeLanguage(0),
          leading: Consumer<LanguageNotifier>(
            builder: (context, listenNotifer, child) {
              return CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.transparent,
                  child: (listenNotifer.isLanguageEnglish! &&
                          listenNotifer.isLanguageEnglish != null)
                      ? SvgPicture.asset(
                          SVGImagePaths.instance.selectedLanguage)
                      : null);
            },
          ),
          title: Text(LocaleKeys.settings_english.tr()),
          trailing: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.transparent,
              child: SvgPicture.asset(
                  SVGImagePaths.instance.englishSettingsLanguage)),
        ));
  }

  Container _turkishLanguage(
      BuildContext context, LanguageViewModel _viewModel) {
    return Container(
        width: double.infinity,
        height: context.height * 0.09,
        child: ListTile(
          onTap: () => _viewModel.changeLanguage(1),
          leading: Consumer<LanguageNotifier>(
            builder: (context, listenNotifer, child) {
              return CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.transparent,
                  child: (listenNotifer.isLanguageTurkis! &&
                          listenNotifer.isLanguageEnglish != null)
                      ? SvgPicture.asset(
                          SVGImagePaths.instance.selectedLanguage)
                      : null);
            },
          ),
          title: Text(LocaleKeys.settings_turkish.tr()),
          trailing: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.transparent,
              child: SvgPicture.asset(
                  SVGImagePaths.instance.turkishSettingsLanguage)),
        ));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}