
import 'package:demoapp/Model/user_info_model.dart';

class Models {
  static const String userInfoModel = "userInfoModel";

  static Future<dynamic> getModelObject(
      String modelName, Map<String, dynamic> json) async {
    switch (modelName) {
      case userInfoModel:
        return UserInfoModel.fromJson(json);
    }
  }
}
