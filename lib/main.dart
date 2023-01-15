import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Clean Up Deploy Files',
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 218, 215, 215),
      appBar: AppBar(
        title: Text(
          '배포 파일 정리',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // padding: EdgeInsets.all(10),
        // margin: EdgeInsets.all(10),
        children: [
          Container(
            width: 400,
            color: Colors.white,
            child: TextField(
              keyboardType: TextInputType.multiline,
              minLines: 25, //Normal textInputField will be displayed
              maxLines: null,
              decoration: InputDecoration(
                hintText: "배포할 일감을 복사 붙여넣기 해주세요",
                //fillColor: Colors.black,
                border: OutlineInputBorder(
                  //borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
              ), //
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: (() {
                    debugPrint('pressed Change');
                  }),
                  icon: Icon(Icons.auto_fix_high),
                ),
                Text("Clean Up"),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: 400,
            color: Colors.white,
            child: Column(
              children: [
                TextField(
                  keyboardType: TextInputType.multiline,
                  minLines: 20,
                  maxLines: 20,
                  decoration: InputDecoration(
                    hintText: "Clean Up 버튼을 클릭하면 일감이 정리됩니다.",
                    //fillColor: Colors.black,
                    border: OutlineInputBorder(
                      //borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                _buildTextComposer(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(color: Colors.black),
      child: Container(
        //color: Colors.black,
        margin: EdgeInsets.symmetric(horizontal: 0.8),
        child: Row(
          children: [
            Flexible(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "경로를 설정해주세요",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 0.4),
              child: IconButton(
                  icon: Icon(Icons.folder_delete),
                  onPressed:
                      () {} // _handleSubmitted(_textEditingController.text),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
