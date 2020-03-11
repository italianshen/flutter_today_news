class MyAttensionEntity {
	int offset;
	List<MyAttensionData> data;
	int maxCursor;
	String guideText;
	bool hasMore;
	String blankText;
	String message;
	String guideUrl;

	MyAttensionEntity({this.offset, this.data, this.maxCursor, this.guideText, this.hasMore, this.blankText, this.message, this.guideUrl});

	MyAttensionEntity.fromJson(Map<String, dynamic> json) {
		offset = json['offset'];
		if (json['data'] != null) {
			data = new List<MyAttensionData>();(json['data'] as List).forEach((v) { data.add(new MyAttensionData.fromJson(v)); });
		}
		maxCursor = json['max_cursor'];
		guideText = json['guide_text'];
		hasMore = json['has_more'];
		blankText = json['blank_text'];
		message = json['message'];
		guideUrl = json['guide_url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['offset'] = this.offset;
		if (this.data != null) {
      data['data'] =  this.data.map((v) => v.toJson()).toList();
    }
		data['max_cursor'] = this.maxCursor;
		data['guide_text'] = this.guideText;
		data['has_more'] = this.hasMore;
		data['blank_text'] = this.blankText;
		data['message'] = this.message;
		data['guide_url'] = this.guideUrl;
		return data;
	}
}

class MyAttensionData {
	int isVerify;
	String userAuthInfo;
	String name;
	String icon;
	int mediaId;
	String time;
	int id;
	String type;
	int userid;
	String url;
	bool tips;

	MyAttensionData({this.isVerify, this.userAuthInfo, this.name, this.icon, this.mediaId, this.time, this.id, this.type, this.userid, this.url, this.tips});

	MyAttensionData.fromJson(Map<String, dynamic> json) {
		isVerify = json['is_verify'];
		userAuthInfo = json['user_auth_info'];
		name = json['name'];
		icon = json['icon'];
		mediaId = json['media_id'];
		time = json['time'];
		id = json['id'];
		type = json['type'];
		userid = json['userid'];
		url = json['url'];
		tips = json['tips'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['is_verify'] = this.isVerify;
		data['user_auth_info'] = this.userAuthInfo;
		data['name'] = this.name;
		data['icon'] = this.icon;
		data['media_id'] = this.mediaId;
		data['time'] = this.time;
		data['id'] = this.id;
		data['type'] = this.type;
		data['userid'] = this.userid;
		data['url'] = this.url;
		data['tips'] = this.tips;
		return data;
	}
}
