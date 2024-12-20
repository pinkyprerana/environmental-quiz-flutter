// import 'dart:io';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
// import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_quest_app/core/constants/assets.dart';
import 'package:green_quest_app/core/infrastructure/api_url.dart';
import 'package:green_quest_app/core/widget/custom_input_field.dart';
import 'package:green_quest_app/features/profile/shared/provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

// import 'package:image_picker/image_picker.dart';
// import 'package:permission_handler/permission_handler.dart';
// import '../../../core/infrastructure/api_url.dart';
import '../../../core/styles/app_colors.dart';
// import '../../../core/utils/common_util.dart';
// import '../../../core/widget/app_bar_widget.dart';
import '../../../core/utils/app.dart';
import '../../../core/widget/app_button.dart';
// import '../../../core/widget/pop_up.dart';
// import '../../../core/widget/secondary_text_input_field.dart';
// import '../shared/provider.dart';

@RoutePage()
class EditProfilePage extends ConsumerStatefulWidget {
  const EditProfilePage({super.key});

  @override
  ConsumerState<EditProfilePage> createState() => EditProfilePageState();
}

class EditProfilePageState extends ConsumerState<EditProfilePage> {
  File? img;

  // FocusNodes
  final lastFN = FocusNode();
  final phoneFN = FocusNode();
  final cityFN = FocusNode();
  final zipFn = FocusNode();

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      // print(
      //     'File(pickedFile.path).path.toString(): ${File(pickedFile.path).path.toString()}');
      setState(() {
        img = File(pickedFile.path);
      });
    }
  }

  Future<void> selectPhoto() async {
    final status = await Permission.photos.status;
    if (status.isPermanentlyDenied || status.isRestricted || status.isDenied) {
      await _requestPermissionAndPickImage();
    } else {
      await _pickImage();
    }
  }

  Future<void> _requestPermissionAndPickImage() async {
    if (Platform.isAndroid) {
      final storageStatus = await Permission.storage.request();
      if (storageStatus.isGranted) {
        await _pickImage();
      } else if (storageStatus.isPermanentlyDenied || storageStatus.isDenied) {
        if (await Permission.storage.request().isGranted) {
          await _pickImage();
        } else {
          _showPermissionDeniedDialog();
        }
      }
    } else if (Platform.isIOS) {
      final photoStatus = await Permission.photos.request();
      if (photoStatus.isGranted) {
        await _pickImage();
      } else if (photoStatus.isPermanentlyDenied || photoStatus.isDenied) {
        _showPermissionDeniedDialog();
      }
    }
  }

  void _showPermissionDeniedDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Permission Denied'),
        content: const Text(
            'Please enable the required permission from the app settings.'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              openAppSettings();
            },
            child: const Text('Settings'),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(profileNotifierProvider.notifier).fetchUserDetailsFromHive();
    });
  }

  @override
  Widget build(BuildContext context) {
    final profileNotifier = ref.watch(profileNotifierProvider.notifier);
    final state = ref.watch(profileNotifierProvider);
    final profileImg = state.profileModel?.data?.profileImage;
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Stack(
          children: [
            Container(
              height: 1.sh,
              width: 1.sw,
              color: AppColors.mainBg,
            ),
            Container(
              height: 0.4.sh,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(195, 243, 201, 0.9),
                    AppColors.mainBg,
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    70.verticalSpace,
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Row(
                        children: [
                          SvgPicture.asset(Assets.backArrow),
                          const SizedBox(width: 8),
                          const Text(
                            'Back',
                            style: TextStyle(
                                color: AppColors.colorBlack1,
                                fontSize: AppConfigs.FONT_SIZE_DEFAULT,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                    25.verticalSpace,
                    Container(
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(11, 90, 17, 0.004),
                            blurRadius: 46,
                            spreadRadius: 0,
                            offset: Offset(0, 24),
                          ),
                        ],
                      ),
                      child: Card(
                        surfaceTintColor: Colors.white,
                        elevation: 0,
                        child: SizedBox(
                          width: 1.sw,
                          child: Column(
                            children: [
                              20.verticalSpace,
                              Container(
                                // padding: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color.fromRGBO(
                                          183, 217, 187, 0.5),
                                      width: 6),
                                  shape: BoxShape.circle,
                                  color:
                                      const Color.fromRGBO(183, 217, 187, 0.5),
                                ),
                                width: 110,
                                height: 110,
                                child: //const SizedBox.shrink(),
                                    ClipOval(
                                  child: img == null
                                      ? (profileImg != null &&
                                              profileImg.isEmpty)
                                          ? Image.asset(
                                              Assets.noImg,
                                              fit: BoxFit.cover,
                                            )
                                          : Image.network(
                                              '${AppUrl.profileImageBase}$profileImg',
                                              fit: BoxFit.cover,
                                            )
                                      : Image.file(
                                          img!,
                                          fit: BoxFit.cover,
                                        ),
                                ),
                              ),
                              20.verticalSpace,
                              AppButton(
                                text: 'Change Picture',
                                onPressed: selectPhoto,
                                color: AppColors.greenLightText,
                                width: 0.4.sw,
                                height: 0.11.sw,
                                textColor: AppColors.greenDarkText,
                              ),
                              30.verticalSpace,
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25.0),
                                child: Column(
                                  children: [
                                    CustomInputField(
                                      onCompleteEditingCallback: () =>
                                          FocusScope.of(context)
                                              .requestFocus(lastFN),
                                      hintText: 'First Name',
                                      controller:
                                          profileNotifier.firstNameController,
                                    ),
                                    12.verticalSpace,
                                    CustomInputField(
                                      focusNode: lastFN,
                                      onCompleteEditingCallback: () =>
                                          FocusScope.of(context)
                                              .requestFocus(phoneFN),
                                      hintText: 'Last Name',
                                      controller:
                                          profileNotifier.lastNameController,
                                    ),
                                    12.verticalSpace,
                                    CustomInputField(
                                      focusNode: phoneFN,
                                      onCompleteEditingCallback: () =>
                                          FocusScope.of(context)
                                              .requestFocus(cityFN),
                                      hintText: 'Mobile Number',
                                      controller:
                                          profileNotifier.mobileController,
                                      textInputType: TextInputType.phone,
                                    ),
                                    12.verticalSpace,
                                    CustomInputField(
                                      focusNode: cityFN,
                                      onCompleteEditingCallback: () =>
                                          FocusScope.of(context)
                                              .requestFocus(zipFn),
                                      hintText: 'City',
                                      controller:
                                          profileNotifier.cityController,
                                    ),
                                    12.verticalSpace,
                                    CustomInputField(
                                      onCompleteEditingCallback: () =>
                                          FocusManager.instance.primaryFocus
                                              ?.unfocus(),
                                      focusNode: zipFn,
                                      hintText: 'Zip Code',
                                      controller:
                                          profileNotifier.zipCodeController,
                                    ),
                                    12.verticalSpace,
                                  ],
                                ),
                              ),
                              12.verticalSpace,
                              AppButton(
                                onPressed: () async {
                                  profileNotifier.updateProfile(
                                    img: img?.path.toString() ?? '',
                                    callback: () async {
                                      await context.maybePop();
                                    },
                                  );
                                },
                                text: 'Update',
                                width: 0.7.sw,
                              ),
                              40.verticalSpace,
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
