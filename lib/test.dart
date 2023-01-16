class LoginFormWidget extends StatefulWidget {
  @override
  _LoginFormWidgetState createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  var _idTextField = CupertinoTextField(
    placeholder: "아이디",
    padding: EdgeInsets.all(10),
    style: TextStyle(fontFamily: MyFontFamily.gyeonggiLight, fontSize: 16),
    decoration: BoxDecoration(
      color: MyColor.clear,
      border: Border.all(
        color: Colors.black,
        width: 0.5,
      ),
      borderRadius: BorderRadius.circular(12),
    ),
  );

  var _passwordTextField = CupertinoTextField(
    placeholder: "비밀번호",
    obscureText: true,
    padding: EdgeInsets.all(10),
    style: TextStyle(fontFamily: MyFontFamily.gyeonggiLight, fontSize: 16),
    decoration: BoxDecoration(
      color: MyColor.clear,
      border: Border.all(
        color: Colors.black,
        width: 0.5,
      ),
      borderRadius: BorderRadius.circular(12),
    ),
  );

  var _loginButton = CupertinoButton(
    child: Text("로그인",
        style: TextStyle(fontFamily: MyFontFamily.gyeonggiLight, fontSize: 16)),
    color: MyColor.black,
    borderRadius: BorderRadius.circular(12),
    onPressed: () {},
  );

  var _signupButton = CupertinoButton(
      child: Text("회원가입하기",
          style: TextStyle(
              fontFamily: MyFontFamily.gyeonggiLight,
              fontSize: 16,
              color: MyColor.black)),
      padding: EdgeInsets.all(5),
      color: MyColor.clear,
      onPressed: () {});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: MyColor.paper,
        child: SizedBox(
          width: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _idTextField,
              SizedBox(height: 10),
              _passwordTextField,
              SizedBox(height: 20),
              _loginButton,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [_signupButton],
              )
            ],
          ),
        ));
  }
}
