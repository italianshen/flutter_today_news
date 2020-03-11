class AccountCellDataEntity {
	AccountCellDataData data;
	String message;

	AccountCellDataEntity({this.data, this.message});

	AccountCellDataEntity.fromJson(Map<String, dynamic> json) {
		data = json['data'] != null ? new AccountCellDataData.fromJson(json['data']) : null;
		message = json['message'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.data != null) {
      data['data'] = this.data.toJson();
    }
		data['message'] = this.message;
		return data;
	}
}

class AccountCellDataData {
	List<List> sections;

	AccountCellDataData({this.sections});

	AccountCellDataData.fromJson(Map<String, dynamic> json) {
		if (json['sections'] != null) {
			sections = new List<List>();(json['sections'] as List).forEach((v) { sections.add(new List.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.sections != null) {
      data['sections'] =  this.sections.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class AccountCellDataDataSectionAccountCellDataDataSection {
	String greyText;
	String tipText;
	int tipNew;
	String text;
	AccountCellDataDataSectionAccountCellDataDataSectionIcons icons;
	String url;
	String key;

	AccountCellDataDataSectionAccountCellDataDataSection({this.greyText, this.tipText, this.tipNew, this.text, this.icons, this.url, this.key});

	AccountCellDataDataSectionAccountCellDataDataSection.fromJson(Map<String, dynamic> json) {
		greyText = json['grey_text'];
		tipText = json['tip_text'];
		tipNew = json['tip_new'];
		text = json['text'];
		icons = json['icons'] != null ? new AccountCellDataDataSectionAccountCellDataDataSectionIcons.fromJson(json['icons']) : null;
		url = json['url'];
		key = json['key'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['grey_text'] = this.greyText;
		data['tip_text'] = this.tipText;
		data['tip_new'] = this.tipNew;
		data['text'] = this.text;
		if (this.icons != null) {
      data['icons'] = this.icons.toJson();
    }
		data['url'] = this.url;
		data['key'] = this.key;
		return data;
	}
}

class AccountCellDataDataSectionAccountCellDataDataSectionIcons {
	AccountCellDataDataSectionAccountCellDataDataSectionIconsNight night;
	AccountCellDataDataSectionAccountCellDataDataSectionIconsDay day;

	AccountCellDataDataSectionAccountCellDataDataSectionIcons({this.night, this.day});

	AccountCellDataDataSectionAccountCellDataDataSectionIcons.fromJson(Map<String, dynamic> json) {
		night = json['night'] != null ? new AccountCellDataDataSectionAccountCellDataDataSectionIconsNight.fromJson(json['night']) : null;
		day = json['day'] != null ? new AccountCellDataDataSectionAccountCellDataDataSectionIconsDay.fromJson(json['day']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.night != null) {
      data['night'] = this.night.toJson();
    }
		if (this.day != null) {
      data['day'] = this.day.toJson();
    }
		return data;
	}
}

class AccountCellDataDataSectionAccountCellDataDataSectionIconsNight {
	List<AccountCellDataDataSectionAccountCellDataDataSectionIconsNightUrlList> urlList;
	int width;
	int radius;
	String uri;
	int height;

	AccountCellDataDataSectionAccountCellDataDataSectionIconsNight({this.urlList, this.width, this.radius, this.uri, this.height});

	AccountCellDataDataSectionAccountCellDataDataSectionIconsNight.fromJson(Map<String, dynamic> json) {
		if (json['url_list'] != null) {
			urlList = new List<AccountCellDataDataSectionAccountCellDataDataSectionIconsNightUrlList>();(json['url_list'] as List).forEach((v) { urlList.add(new AccountCellDataDataSectionAccountCellDataDataSectionIconsNightUrlList.fromJson(v)); });
		}
		width = json['width'];
		radius = json['radius'];
		uri = json['uri'];
		height = json['height'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.urlList != null) {
      data['url_list'] =  this.urlList.map((v) => v.toJson()).toList();
    }
		data['width'] = this.width;
		data['radius'] = this.radius;
		data['uri'] = this.uri;
		data['height'] = this.height;
		return data;
	}
}

class AccountCellDataDataSectionAccountCellDataDataSectionIconsNightUrlList {
	String url;

	AccountCellDataDataSectionAccountCellDataDataSectionIconsNightUrlList({this.url});

	AccountCellDataDataSectionAccountCellDataDataSectionIconsNightUrlList.fromJson(Map<String, dynamic> json) {
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['url'] = this.url;
		return data;
	}
}

class AccountCellDataDataSectionAccountCellDataDataSectionIconsDay {
	List<AccountCellDataDataSectionAccountCellDataDataSectionIconsDayUrlList> urlList;
	int width;
	int radius;
	String uri;
	int height;

	AccountCellDataDataSectionAccountCellDataDataSectionIconsDay({this.urlList, this.width, this.radius, this.uri, this.height});

	AccountCellDataDataSectionAccountCellDataDataSectionIconsDay.fromJson(Map<String, dynamic> json) {
		if (json['url_list'] != null) {
			urlList = new List<AccountCellDataDataSectionAccountCellDataDataSectionIconsDayUrlList>();(json['url_list'] as List).forEach((v) { urlList.add(new AccountCellDataDataSectionAccountCellDataDataSectionIconsDayUrlList.fromJson(v)); });
		}
		width = json['width'];
		radius = json['radius'];
		uri = json['uri'];
		height = json['height'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.urlList != null) {
      data['url_list'] =  this.urlList.map((v) => v.toJson()).toList();
    }
		data['width'] = this.width;
		data['radius'] = this.radius;
		data['uri'] = this.uri;
		data['height'] = this.height;
		return data;
	}
}

class AccountCellDataDataSectionAccountCellDataDataSectionIconsDayUrlList {
	String url;

	AccountCellDataDataSectionAccountCellDataDataSectionIconsDayUrlList({this.url});

	AccountCellDataDataSectionAccountCellDataDataSectionIconsDayUrlList.fromJson(Map<String, dynamic> json) {
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['url'] = this.url;
		return data;
	}
}
