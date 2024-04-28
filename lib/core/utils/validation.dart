class ChatValidation{
  String? nameValidate(String? name){
    return null;
  }
  String? phoneValidate(String? phone){
    String source = r"^01[0125]\d{8}";
    RegExp regExp = RegExp(source);
    bool accept = regExp.hasMatch(phone??'');
    if(accept)return null;
    return 'invalid phone';
  }
  String? passwordValidate(String? pass){
    if((pass?.length??0)>=12){
      return null;
    }
    return 'invalid password';
  }
  String? emailValidate(String? mail){
    String source=r"^(\w){5,15}@gmail.com";
    RegExp regExp=RegExp(source);
    bool accept =regExp.hasMatch(mail??'');
    if(accept)return null;
    return 'invalid email';
  }
  bool? passwordCheek(String? pass1,String? pass2){
    if(pass1==pass2){
      return true;
    }
    return false;
  }
}
