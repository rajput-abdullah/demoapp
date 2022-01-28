import 'package:demoapp/Model/user_info_model.dart';
import 'package:demoapp/network/models.dart';
import 'package:demoapp/network/network_api_calls.dart';
import 'package:flutter/cupertino.dart';

class HomeScreenProvider extends ChangeNotifier{
  UserInfoModel userInfoModel = UserInfoModel();
  TextEditingController searchController = TextEditingController();
  List<dynamic> userInfoList = [];
  bool isLoading = true;
  late Future<List<UserInfoModel>> futureData;

  BuildContext? context;

  Future<void> init({@required BuildContext? context}) async {
    this.context = context!;
    userInfoData();
  }

  Future<UserInfoModel> userInfoData() async {
    try {
      Map<String, dynamic> header = {"Content-Type": "application/json"};
      Map<String, dynamic> parameters = {"results":25};

      userInfoModel = await MyApi.callGetApi(
          url: "http://randomuser.me/api/?",
          parameters: parameters,
          myHeaders: header,
          modelName: Models.userInfoModel);
      if (userInfoModel.info!=null) {
        // userInfoList = userInfoModel.results?.cast<>();

          userInfoList.addAll(userInfoModel.results!);


        isLoading = false;
        notifyListeners();
      }
      else {
        debugPrint("getDishesModel: Something wrong");
      }
    } catch (e) {
      debugPrint("Catch-Error: ${e.toString()}");
    }
    return userInfoModel;
  }

}