class HomeNavEntity {
	HomeNavData data;
	String message;

	HomeNavEntity({this.data, this.message});

	HomeNavEntity.fromJson(Map<String, dynamic> json) {
		data = json['data'] != null ? new HomeNavData.fromJson(json['data']) : null;
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

class HomeNavData {
	List<HomeNavDataData> data;
	String version;

	HomeNavData({this.data, this.version});

	HomeNavData.fromJson(Map<String, dynamic> json) {
		if (json['data'] != null) {
			data = new List<HomeNavDataData>();(json['data'] as List).forEach((v) { data.add(new HomeNavDataData.fromJson(v)); });
		}
		version = json['version'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.data != null) {
      data['data'] =  this.data.map((v) => v.toJson()).toList();
    }
		data['version'] = this.version;
		return data;
	}
}

class HomeNavDataData {
	String iconUrl;
	int feedListStyle;
	String webUrl;
	int flags;
	String name;
	String concernId;
	int defaultAdd;
	int stick;
	int tipNew;
	String category;
	int type;

	HomeNavDataData({this.iconUrl, this.feedListStyle, this.webUrl, this.flags, this.name, this.concernId, this.defaultAdd, this.stick, this.tipNew, this.category, this.type});

	HomeNavDataData.fromJson(Map<String, dynamic> json) {
		iconUrl = json['icon_url'];
		feedListStyle = json['feed_list_style'];
		webUrl = json['web_url'];
		flags = json['flags'];
		name = json['name'];
		concernId = json['concern_id'];
		defaultAdd = json['default_add'];
		stick = json['stick'];
		tipNew = json['tip_new'];
		category = json['category'];
		type = json['type'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['icon_url'] = this.iconUrl;
		data['feed_list_style'] = this.feedListStyle;
		data['web_url'] = this.webUrl;
		data['flags'] = this.flags;
		data['name'] = this.name;
		data['concern_id'] = this.concernId;
		data['default_add'] = this.defaultAdd;
		data['stick'] = this.stick;
		data['tip_new'] = this.tipNew;
		data['category'] = this.category;
		data['type'] = this.type;
		return data;
	}
}
