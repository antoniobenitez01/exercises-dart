bool isRGB(String str){
  return RegExp(r"^#(?:[0-9a-fA-F]{3}){1,2}$").hasMatch(str);
}

bool isURL(String str){
  return RegExp(r"^https?:\/\/(?:www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b(?:[-a-zA-Z0-9()@:%_\+.~#?&\/=]*)$").hasMatch(str);
}

bool isEmail(String str){
  return RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$").hasMatch(str);
}

bool isDNI(String str){
  return RegExp(r"^[0-9]{8}[TRWAGMYFPDXBNJZSQVHLCKE]$").hasMatch(str);
}