class AccountSectionEntity{

  List<AccountCellEntity> sections;

  AccountSectionEntity.fromJson(Map<String, dynamic> json) {
    if (json['sections'] != null) {
      if (json["sections"] is List){
        sections = new List();
        List sectionsList = json['sections'];
        sectionsList.forEach((temp){
          if ((temp is List)){
            List tempList = temp;
            tempList.forEach((json){
              Map map = new Map<String, dynamic>.from(json);
              sections.add(AccountCellEntity.fromJson(map));
            });
          }
        });
      }
    }
  }
}

class AccountCellEntity{

  /// 文字
  String text;
  /// icons
  AccountCellIconEntity icons;

  AccountCellEntity.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    if (json['icons'] != null) {
      if (json["icons"] is Map){
        Map map = new Map<String, dynamic>.from(json["icons"]);
        icons = AccountCellIconEntity.fromJson(map);
      }
    }
  }
}

class AccountCellIconEntity{

  /// 日间模式
  AccountCellIconDayAndNightEntity day;
  /// 夜间模式
  AccountCellIconDayAndNightEntity night;

  AccountCellIconEntity.fromJson(Map<String, dynamic> json) {
    day = json['text'];
    if (json['day'] != null) {
      if (json["day"] is Map){
        Map map = new Map<String, dynamic>.from(json["day"]);
        day = AccountCellIconDayAndNightEntity.fromJson(map);
      }
    }

    if (json['night'] != null) {
      if (json["night"] is Map){
        Map map = new Map<String, dynamic>.from(json["night"]);
        day = AccountCellIconDayAndNightEntity.fromJson(map);
      }
    }
  }

}

class AccountCellIconDayAndNightEntity{
  String url;
  AccountCellIconDayAndNightEntity.fromJson(Map<String, dynamic> json) {
    if (json['url_list'] != null) {
      List urlList = (json['url_list'] as List).cast();
      var data = urlList.last;
      if(data is Map){
        url = data["url"];
      }
    }
  }
}