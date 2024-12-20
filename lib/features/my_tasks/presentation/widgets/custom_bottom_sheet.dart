import 'dart:io';
import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:green_quest_app/core/utils/app.dart';
import 'package:green_quest_app/core/utils/app_constants.dart';
import 'package:green_quest_app/core/utils/app_decoration.dart';
import 'package:green_quest_app/core/widget/app_button.dart';
import 'package:green_quest_app/features/all_tasks/shared/provider.dart';
import 'package:green_quest_app/features/home/shared/provider.dart';
import 'package:green_quest_app/features/my_tasks/shared/provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class KBottomSheet extends ConsumerStatefulWidget {
  const KBottomSheet({super.key, required this.id});

  final String id;

  @override
  ConsumerState<KBottomSheet> createState() => _BottomSheetState();
}

class _BottomSheetState extends ConsumerState<KBottomSheet> {
  final List<XFile?> selectedImages = List<XFile?>.filled(3, null);

  Future<void> _pickImage(int index) async {
    final notifier = ref.read(myTasksProvider.notifier);
    final imagePicker = ImagePicker();
    final XFile? image =
        await imagePicker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        selectedImages[index] = image;
      });
    }
  }

  Future<void> selectPhoto(int i) async {
    final status = await Permission.photos.status;
    if (status.isPermanentlyDenied || status.isRestricted || status.isDenied) {
      await _requestPermissionAndPickImage(i);
    } else {
      await _pickImage(i);
    }
  }

  Future<void> _requestPermissionAndPickImage(int i) async {
    if (Platform.isAndroid) {
      final storageStatus = await Permission.storage.request();
      if (storageStatus.isGranted) {
        await _pickImage(i);
      } else if (storageStatus.isPermanentlyDenied || storageStatus.isDenied) {
        if (await Permission.storage.request().isGranted) {
          await _pickImage(i);
        } else {
          _showPermissionDeniedDialog();
        }
      }
    } else if (Platform.isIOS) {
      final photoStatus = await Permission.photos.request();
      if (photoStatus.isGranted) {
        await _pickImage(i);
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
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(allTasksNotifierProvider);

    final size = MediaQuery.of(context).size;
    final notifier = ref.read(myTasksProvider.notifier);
    return BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 20,
        sigmaY: 20,
      ),
      child: SizedBox(
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              icon: Image.asset(
                "assets/icon/close-circle.png",
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            20.verticalSpace,
            Container(
              // height: size.height * 0.39,
              // width: size.width,
              padding: const EdgeInsets.all(20),
              decoration: AppDecoration.outlineOnPrimaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder75Top,
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 20.verticalSpace,
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: size.height * 0.05),
                    child: Text(AppConstants.PLANTING_A_TREE,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(fontWeight: FontWeight.bold)),
                  ),
                  20.verticalSpace,
                  Container(
                    // height: 150,
                    width: size.width,
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          for (int i = 0; i < selectedImages.length; i++)
                            GestureDetector(
                              onTap: () async {
                                await selectPhoto(i);
                                setState(() {});
                              },
                              child: Stack(
                                children: [
                                  Container(
                                    height: size.width * 0.25, //100,
                                    width: size.width * 0.25, //100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            AppConfigs.RADIUS_SIZE_DEFAULT)),
                                    // margin: EdgeInsets.symmetric(
                                    //     horizontal: size.width * 0.02),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          AppConfigs.RADIUS_SIZE_DEFAULT),
                                      child: selectedImages[i] != null
                                          ? Image.file(
                                              File(selectedImages[i]!.path),
                                              fit: BoxFit.cover,
                                            )
                                          : Image.asset(
                                              "assets/icon/document-upload.png"),
                                    ),
                                  ),
                                  if (selectedImages[i] != null)
                                    Positioned(
                                      top: 0,
                                      right: 0,
                                      child: GestureDetector(
                                        child: Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Image.asset(
                                            "assets/icon/close-circle.png",
                                            scale: 2,
                                          ),
                                        ),
                                        onTap: () {
                                          setState(() {
                                            selectedImages[i] = null;
                                          });
                                        },
                                      ),
                                    ),
                                ],
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: AppButton(
                        height: size.height * 0.06,
                        text: "Request Task Review",
                        onPressed: () async {
                          List<String?> pathList = [];
                          for (var item in selectedImages) {
                            pathList.add(item?.path.toString());
                          }
                          await notifier.updateTask(
                              id: widget.id, selectedImages: pathList);
                          final homeNotifier =
                              ref.read(assignedTasksNotifierProvider.notifier);
                          await homeNotifier.fetchAssignedTasks();
                          await context.maybePop();
                          setState(() {
                            // taskReviewStatusList[index] = true;
                          });
                        }),
                  ),
                  // 16.verticalSpace
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
