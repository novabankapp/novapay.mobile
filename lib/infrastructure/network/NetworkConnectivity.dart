import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';

class NetworkConnectivity{
  Connectivity? connectivity;

  NetworkConnectivity(){
    connectivity = Connectivity();
  }
  Future<bool> isConnected() async{
    var connectivityResult = await (connectivity?.checkConnectivity());
    return connectivityResult == ConnectivityResult.mobile
        || connectivityResult == ConnectivityResult.wifi;
  }
  Future<bool> isWifiNetwork() async{
    var connectivityResult = await (connectivity?.checkConnectivity());
    return connectivityResult == ConnectivityResult.wifi;
  }
  Future<bool> isMobileNetwork() async{
    var connectivityResult = await (connectivity?.checkConnectivity());
    return connectivityResult == ConnectivityResult.mobile;
  }

}