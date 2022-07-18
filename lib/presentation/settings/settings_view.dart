// 🎯 Dart imports:
import 'dart:async';

// 🐦 Flutter imports:
import 'package:at_utils/at_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:private_fit/application/setting/bloc/settings_bloc.dart';
import 'package:private_fit/injections.dart';
import 'package:private_fit/presentation/components/adaptive_loading.dart';
import 'package:private_fit/presentation/components/global.dart';
import 'package:private_fit/presentation/settings/widgets/category.settings.dart';
import 'package:private_fit/presentation/settings/widgets/tile.settings.dart';
import 'package:private_fit/shared/iconly_icon.dart';
import 'package:private_fit/shared/icons_curved.dart';

class SettingsPageView extends StatefulWidget {
  const SettingsPageView({Key? key}) : super(key: key);

  @override
  State<SettingsPageView> createState() => _SettingsPageViewState();
}

class _SettingsPageViewState extends State<SettingsPageView> {
  final TextEditingController _userNameController = TextEditingController(),
      _reportController = TextEditingController();
  final FocusNode _nameFocusNode = FocusNode(), _titleFocusNode = FocusNode();
  bool _editing = false,
      _saving = false,
      _enableFingerprint = false,
      _logsSaving = false;
  final AtSignLogger _logger = AtSignLogger('Settings screen');

  final bool _isLoading = false;
  PackageInfo? packageInfo;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    Future<void>.delayed(Duration.zero, () async {
      packageInfo = await PackageInfo.fromPlatform();

      if (mounted) _nameFocusNode.unfocus();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    if (mounted) {
      _userNameController.dispose();
      _reportController.dispose();
      _nameFocusNode.dispose();
      _titleFocusNode.dispose();
    }
    super.dispose();
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SettingsBloc, SettingsState>(
      bloc: getIt<SettingsBloc>()..add(const SettingsEvent.started()),
      listener: (context, state) {
        final t = state.userNameModel.username.getOrCrash();
        _userNameController.value = TextEditingValue(
          text: t,
          selection: TextSelection.collapsed(offset: t.length),
        );
      },
      builder: (context, state) {
        return Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Profile',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            leading: IconButton(
              splashRadius: 0.01,
              icon: _nameFocusNode.hasFocus
                  ? IconlyIcon(
                      path: IconlyCurved.CloseSquare,
                      size: 25,
                      color: Theme.of(context).colorScheme.primary,
                    )
                  : const SizedBox(),
              // IconlyIcon(
              //     path: IconlyCurved.ArrowLeft2,
              //     size: 25,
              //     color: Theme.of(context).colorScheme.primary,
              //   ),
              onPressed: () {
                _nameFocusNode.unfocus();
                setState(() {});
              },
            ),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: state.isEditing
                    ? InkWell(
                        splashFactory: NoSplash.splashFactory,
                        child: IconlyIcon(
                          path: IconlyCurved.Upload,
                          size: 22,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        onTap: () {
                          context.read<SettingsBloc>().add(
                                const SettingsEvent.saved(),
                              );

                          _nameFocusNode.unfocus();
                        },
                      )
                    : const SizedBox(),
              )
            ],
            elevation: 0,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          ),
          body: SafeArea(
            top: false,
            maintainBottomViewPadding: true,
            child: Stack(
              children: <Widget>[
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                SizedBox(
                                  height: 70,
                                  width: 70,
                                  child: GestureDetector(
                                    onLongPress: () async {
                                      setState(_nameFocusNode.unfocus);
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image(
                                        height: 70,
                                        width: 70,
                                        fit: BoxFit.cover,
                                        gaplessPlayback: true,
                                        image: Image.asset(
                                          'assets/on_boarding/images/artist_1.png',
                                        ).image,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      TextFormField(
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        enabled: !state.isSaving,
                                        controller: _userNameController,
                                        minLines: 1,
                                        focusNode: _nameFocusNode,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            borderSide: BorderSide.none,
                                          ),
                                          floatingLabelStyle: TextStyle(
                                            height: 4,
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                          floatingLabelAlignment:
                                              FloatingLabelAlignment.center,
                                          focusColor: Colors.grey[200],
                                        ),
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge!
                                            .copyWith(
                                              fontWeight: FontWeight.w400,
                                            ),
                                        validator: (value) => context
                                            .read<SettingsBloc>()
                                            .state
                                            .userNameModel
                                            .username
                                            .value
                                            .fold(
                                              (l) => l.maybeMap(
                                                empty: (f) => 'Cannot be empty',
                                                exceedingLength: (f) =>
                                                    'Exceeding Length, max: ${f.max}',
                                                orElse: () => null,
                                              ),
                                              (r) => null,
                                            ),
                                        onChanged: (v) {
                                          context.read<SettingsBloc>().add(
                                                SettingsEvent.userNameChanged(
                                                  v,
                                                ),
                                              );
                                        },
                                        onFieldSubmitted: (v) {
                                          context.read<SettingsBloc>().add(
                                                const SettingsEvent.saved(),
                                              );

                                          _nameFocusNode.unfocus();
                                        },
                                        onEditingComplete:
                                            _nameFocusNode.unfocus,
                                        cursorColor:
                                            Theme.of(context).primaryColor,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SettingsCategory(
                            category: 'General',
                            children: <Widget>[
                              SettingsCard(
                                height: 60,
                                leading: Icon(
                                  Icons.backup,
                                  color: Theme.of(context).primaryColor,
                                ),
                                lable: 'Backup keys file',
                                subLable:
                                    'Backup your keys file to a safe place',
                                trailing: _saving
                                    ? Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 20,
                                        ),
                                        child: squareWidget(
                                          20,
                                          child:
                                              const CircularProgressIndicator(),
                                        ),
                                      )
                                    : null,
                                onTap: () async {},
                              ),
                              const Divider(
                                height: 0,
                                thickness: 1,
                              ),
                              SettingsCard(
                                height: 60,
                                leading: Icon(
                                  Icons.fingerprint,
                                  color: Theme.of(context).primaryColor,
                                ),
                                onTap: null,
                                lable: 'Fingerprint',
                                subLable:
                                    'Use your biometric for more security',
                                // trailing: const Padding(
                                //   padding: EdgeInsets.symmetric(horizontal: 10),
                                //   child: SizedBox(
                                //     child: AutoSizeText('heelo'),
                                //   ),
                                // ),
                              ),
                              const Divider(
                                height: 0,
                                thickness: 1,
                              ),
                              SettingsCard(
                                height: 60,
                                leading: Icon(
                                  Icons.color_lens,
                                  color: Theme.of(context).primaryColor,
                                ),
                                onTap: () async {},
                                lable: 'Change Theme',
                                subLable: 'Pick a theme for your app',
                              ),
                            ],
                          ),
                          vSpacer(30),
                          SettingsCategory(
                            category: 'About',
                            children: <Widget>[
                              SettingsCard(
                                height: 60,
                                leading: Icon(
                                  Icons.info_outline,
                                  color: Theme.of(context).primaryColor,
                                ),
                                onTap: null,
                                lable: 'About',
                                subLable: 'Learn more about P@ssword manager',
                              ),
                              const Divider(
                                height: 0,
                                thickness: 1,
                              ),
                              SettingsCard(
                                height: 60,
                                leading: Icon(
                                  Icons.report,
                                  color: Theme.of(context).primaryColor,
                                ),
                                onTap: () async {},
                                lable: 'Report',
                                subLable: 'Report a bug or send feedback',
                              ),
                            ],
                          ),
                          vSpacer(30),
                          SettingsCategory(
                            category: 'Account',
                            children: <Widget>[
                              SettingsCard(
                                height: 60,
                                lable: 'Logout',
                                subLable: 'Logout',
                                leading: Icon(
                                  Icons.logout,
                                  color: Theme.of(context).primaryColor,
                                ),
                                onTap: () async {},
                              ),
                            ],
                          ),
                        ],
                      ),
                      vSpacer(50),
                      Center(
                        child: RichText(
                          text: TextSpan(
                            text: 'Made with \u{1F49A} by ',
                            style: TextStyle(
                              color: Theme.of(context).textTheme.caption?.color,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Private Fit Interns Team',
                                // recognizer: TapGestureRecognizer()
                                //   ..onTap = () async {
                                //     Uri _url = Uri.https('wavi.ng', '@minnu💚');
                                //     if (await canLaunchUrl(_url)) {
                                //       await launchUrl(_url);
                                //     }
                                //   },
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    ?.copyWith(
                                      color: Theme.of(context).primaryColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      vSpacer(10),
                      Center(
                        child: Text(
                          'Version : ${packageInfo?.version}',
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ),
                      vSpacer(10),
                    ],
                  ),
                ),
                if (_isLoading)
                  const Opacity(
                    opacity: 1,
                    child: Center(
                      child: AdaptiveLoading(),
                    ),
                  )
              ],
            ),
          ),
        );
      },
    );
  }
}
