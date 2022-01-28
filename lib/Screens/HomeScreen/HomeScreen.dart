import 'package:demoapp/Model/user_info_model.dart';
import 'package:demoapp/Screens/HomeScreen/HomeScreenProvider.dart';
import 'package:demoapp/colors.dart';
import 'package:demoapp/res.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late HomeScreenProvider homeScreenProvider;
  late List<dynamic> filterUser;
  List<dynamic> searchProjectList = [];

  @override
  void initState() {
    super.initState();
    homeScreenProvider = HomeScreenProvider();
    homeScreenProvider =
        Provider.of<HomeScreenProvider>(context, listen: false);
    homeScreenProvider.init(context: context);

  }

  @override
  Widget build(BuildContext context) {
    Provider.of<HomeScreenProvider>(context, listen: true);

    return Scaffold(
      appBar: AppBar(title: text(text: "DEMO"),centerTitle: true,backgroundColor: AppColors.mainButtonDarkGradient,),
      body: Container(
        color: Colors.white,
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          children: [
            SizedBox(height: getHeightRatio()*20,),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: AppColors.greyColor),
              child: SizedBox(
                height: 52.0,
                child: TextField(
                  onChanged: (text) {
                    // if (text == "") {
                    //     homeScreenProvider.userInfoData();
                    //     // homeScreenProvider.futureData = changeData(homeScreenProvider.userInfoList);
                    // } else {
                    //   searchProjectList.clear();
                    //
                    //   // homeScreenProvider.userInfoList.clear();
                    //   for (int i = 0; i < homeScreenProvider.userInfoModel.results!.length; i++) {
                    //     if (homeScreenProvider.userInfoList[i]
                    //         .name!.first!
                    //         .startsWith(text.toLowerCase())) {
                    //       searchProjectList.add(homeScreenProvider
                    //           .userInfoList[i]);
                    //       // homeScreenProvider.userInfoList
                    //       //     .where((u) =>
                    //       // (u.name!.first.toString().startsWith(text.toString())|| u.email!.toLowerCase().startsWith(text.toLowerCase()) || u.location!.city!.toLowerCase().startsWith(text.toLowerCase())))
                    //       //     .toList();
                    //     }
                    //   }
                    //   setState(() {
                    //     homeScreenProvider.userInfoList = searchProjectList;
                    //   });
                    // }
                  },

                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hoverColor: Colors.white,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.short_text,
                      color: Colors.white,
                    ),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    contentPadding: EdgeInsets.fromLTRB(60, 15, 10, 10),
                    hintText: 'Search By Name, Email & Location',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
            if (homeScreenProvider.isLoading)
              const Expanded(
                  child: Center(child: CircularProgressIndicator.adaptive()))
            else if (homeScreenProvider
                .userInfoList.isEmpty)
              Expanded(
                  child: Center(
                      child: text(text: "No Data")))
            else
            Flexible(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: homeScreenProvider.userInfoList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        SizedBox(height: getHeightRatio()*20,),

                        text(text: "Name : ${homeScreenProvider.userInfoList[index].name?.first}"),
                        text(text: "Email : ${homeScreenProvider.userInfoList[index].email}"),
                        text(text: "Location : ${homeScreenProvider.userInfoList[index].location?.city}"),
                        SizedBox(height: getHeightRatio()*20,),

                      ],
                    );
                  }),
            ),

            // FutureBuilder<dynamic>(
            //     future: homeScreenProvider.futureData,
            //     builder:(
            //       BuildContext context,
            //       AsyncSnapshot<dynamic> snapshot,
            //     ){
            //       if (snapshot.hasError) {
            //         return Text(
            //           snapshot.error.toString(),
            //           style: const TextStyle(color: Colors.red),
            //         );
            //       }
            //       if (snapshot.connectionState == ConnectionState.waiting) {
            //         return const Flexible(
            //           child: Center(
            //             child: CircularProgressIndicator(),
            //           ),
            //         );
            //       }
            //       if (snapshot.data!.data!.isNotEmpty) {
            //         List<dynamic> data = snapshot.data;
            //
            //         return Flexible(
            //           child: ListView.builder(
            //               shrinkWrap: true,
            //               itemCount: data.length,
            //               itemBuilder: (context, index) {
            //                 return Column(
            //                   children: [
            //                     SizedBox(height: getHeightRatio()*20,),
            //
            //                     text(text: "Name : ${data[index].name?.first}"),
            //                     text(text: "Email : ${data[index].email}"),
            //                     text(text: "Location : ${data[index].location?.city}"),
            //                     SizedBox(height: getHeightRatio()*20,),
            //
            //                   ],
            //                 );
            //               }),
            //         );
            //       }
            //       else {
            //         return               Expanded(
            //             child: Center(
            //                 child: text(text: "No Data")))
            //         ;
            //       }
            //     }),

          ],
        ),

      ),

    );
  }
  Future<List<UserInfoModel>> changeData(List<UserInfoModel> list) async {
    return list;
  }

  static Widget text({required String text})
{
  return Text(
    text, textAlign: TextAlign.left, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.blueGrey),
  );
}
}
