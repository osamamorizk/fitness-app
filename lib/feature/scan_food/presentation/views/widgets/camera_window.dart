import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gal/gal.dart';
import 'package:graduation_project/core/themes/colors_manger.dart';

class CameraWindow extends StatefulWidget {
  const CameraWindow({super.key});

  @override
  State<CameraWindow> createState() => _CameraWindowState();
}

class _CameraWindowState extends State<CameraWindow>
    with WidgetsBindingObserver {
  List<CameraDescription> avilableCamera = [];
  CameraController? cameraController;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (cameraController == null ||
        cameraController?.value.isInitialized == false) {
      return;
    }
    if (state == AppLifecycleState.inactive) {
      cameraController?.dispose();
    } else if (state == AppLifecycleState.resumed) {
      setupCameraController();
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    cameraController?.dispose();
    super.dispose();
  }

  @override
  void initState() {
    setupCameraController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildUi(),
    );
  }

  Future<void> setupCameraController() async {
    List<CameraDescription> cameras = await availableCameras();
    if (cameras.isNotEmpty) {
      setState(() {
        avilableCamera = cameras;
        cameraController = CameraController(
          cameras.first,
          ResolutionPreset.high,
        );
      });
      cameraController?.initialize().then((_) {
        if (!mounted) {}
        setState(() {});
      }).catchError((Object e) {
        print(e);
      });
    }
  }

  Widget buildUi() {
    if (cameraController == null ||
        cameraController?.value.isInitialized == false) {
      return const Center(child: CircularProgressIndicator());
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
              height: MediaQuery.sizeOf(context).height * .4.h,
              width: MediaQuery.sizeOf(context).width.w,
              child: CameraPreview(cameraController!)),
          IconButton(
            onPressed: () async {
              XFile picture = await cameraController!.takePicture();
              Gal.putImage(picture.path);
            },
            icon: Icon(
              Icons.camera,
              color: ColorsManger.darkBlue,
              size: 80,
            ),
          )
        ],
      );
    }
  }
}
