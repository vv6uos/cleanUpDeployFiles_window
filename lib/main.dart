import 'package:fluent_ui/fluent_ui.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FluentApp(
      title: 'Clean Up Deploy Files',
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff53A0DEFF),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                FluentIcons.add,
                color:Colors.grey,
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                FluentIcons.fabric_sync_folder,
                color: Colors.white,
              ),
              
            /*  IconButton(
                icon: Icon(FluentIcons.fabric_sync_folder, size: 24.0),
                onPressed: (){debugPrint('pressed button');},
                //disabled ? null : () => debugPrint('pressed button'),
              ),*/
             /* TextBox(
                header: 'Enter your path:',
                placeholder: 'deploy folder path',
                expands: false,
              )*/
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Button(
              child: const Text('변환하기'),
              onPressed: (){
                debugPrint('button pressed');
                },
          ),
        ],
      ),
    );
  }
}






