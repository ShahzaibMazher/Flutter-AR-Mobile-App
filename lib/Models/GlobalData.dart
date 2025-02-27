import 'package:flutter_app/Models/UserData.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import '../Models/BubblePair.dart';

enum CameraState {
  QRViewOpen,
  UnityViewOpen,
}

class GlobalData {
  static final GlobalData globalData = GlobalData._internal();
  bool _hasData = false;
  bool initLogin = true;
  bool unityStarted = false;
  bool get hasData => _hasData;

  set hasData(bool value) {
    _hasData = value;
  }

  String _token;
  CameraState _currentState;

  CameraState get currentState => _currentState;

  set currentState(CameraState value) {
    _currentState = value;
  }

  bool tracked = false;
  bool _firstTime = false;
  List<BubblePair> bubbleMap = new List();
  bool get firstTime => _firstTime;

  set firstTime(bool value) {
    _firstTime = value;
  }

  String get token => _token;
  bool _wantLogin = false;

  bool get wantLogin => _wantLogin;

  set wantLogin(bool value) {
    _wantLogin = value;
  }

  set token(String value) {
    _token = value;
  }

  UserData _userData;
  factory GlobalData() {
    return globalData;
  }
  UnityWidgetController _unityWidgetController;

  UnityWidgetController get unityWidgetController => _unityWidgetController;
  QRViewController _qrViewController;

  QRViewController get qrViewController => _qrViewController;

  set qrViewController(QRViewController value) {
    _qrViewController = value;
  }

//  resumeUnityController({List<Function> callback})async{
//    if(_qrViewController != null){
//      _qrViewController.pauseCamera();
//    }
//    if(_unityWidgetController != null){
//      await _unityWidgetController.resume();
////      _unityWidgetController.postMessage(
////        'Main Camera',
////        'switchSence',
////        'ARScene',
////      );
//    }
//    _currentState = CameraState.UnityViewOpen;
//    for(Function function in callback??[]){
//      function();
//    }
//  }
//  resumeQRViewController({List<Function> callback}) async{
//    if (_unityWidgetController != null) {
//      await _unityWidgetController.pause();
//    }
//    if (_qrViewController != null) {
//      _qrViewController.resumeCamera();
//    }
//    _currentState = CameraState.QRViewOpen;
//    for(Function function in callback??[]){
//      function();
//    }
//  }
//  stopAllController({List<Function> callback})async{
//    print('stopAllController');
//    if (_qrViewController != null) {
//      _qrViewController.pauseCamera();
//    }
//    if (_unityWidgetController != null) {
//      await _unityWidgetController.pause();
//    }
//  }
//
//  resumeControllerState(){
//    switch(_currentState) {
//      case CameraState.QRViewOpen:
//        resumeQRViewController();
//        break;
//      case CameraState.UnityViewOpen:
//        resumeUnityController();
//        break;
//    }
//  }

  set unityWidgetController(UnityWidgetController value) {
    _unityWidgetController = value;
  }

  UserData _scanData;
  bool _hasLogin = false;
  String _id;

  String get id => _id;

  set id(String value) {
    _id = value;
  }

  bool get hasLogin => _hasLogin;

  set hasLogin(bool value) {
    _hasLogin = value;
  }

  clearData() {
    _hasLogin = false;
    userData = null;
    scanData = null;
    wantLogin = false;
  }

  UserData get scanData {
//    this.bubbleMap.clear();
    return _scanData;
  }

  set scanData(UserData value) {
    globalData.bubbleMap.clear();
    _scanData = value;
  }

  UserData get userData => _userData;

  set userData(UserData value) {
    _userData = value;
  }

  GlobalData._internal();
}
