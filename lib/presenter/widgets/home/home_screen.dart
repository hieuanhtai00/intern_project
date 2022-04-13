import 'package:flutter/material.dart';
import 'package:project_intern/common/config/image_constants.dart';
import 'package:project_intern/common/data_test/icons_data.dart';
import 'package:project_intern/presenter/model/covid19.dart';
import 'package:project_intern/presenter/widgets/home/api/getapi.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(ImageConstant.aboutme)),
      ),
      child: FutureBuilder<Covid19>(
        future: getApi(),
        builder: (context, snapshot) {
          if (snapshot.hasData == false)
            return Center(
              child: CircularProgressIndicator(),
            );
          return ListView.builder(
            itemBuilder: (context, index) {
              return _buildItem(snapshot.data!, index);
            },
            itemCount: snapshot.data!.locations.locationlist.length,
          );
        },
      ),
    );
  }

  Widget _buildItem(Covid19 covid, int index) {
    return ElevatedButton(
      child: Row(
        children: [
          Expanded(
            child: Image.asset(iconsLocation[index]),
            flex: 1,
          ),
          Expanded(
            child: ListTile(
              title: Text(
                covid.locations.locationlist[index].name,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              subtitle: Text(
                'Số ca nhiễm: ' +
                    covid.locations.locationlist[index].cases.toString(),
              ),
            ),
            flex: 3,
          ),
          Expanded(
            child: Container(
              child: Text(
                'Tử vong\n' +
                    covid.locations.locationlist[index].death.toString(),
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            flex: 1,
          )
        ],
      ),
      autofocus: true,
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
        elevation: MaterialStateProperty.all(20),
        padding: MaterialStateProperty.all(EdgeInsets.all(10)),
      ),
    );
  }
}
