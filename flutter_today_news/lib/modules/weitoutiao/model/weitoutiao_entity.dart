class WeitoutiaoEntity {
	int commentCount;
	String brandInfo;
	String reason;
	int forwardNum;
	int itemType;
	int forwardCount;
	String openUrl;
	int deviceType;
	int type;
	int isAdmin;
	String contentUnescape;
	int id;
	List<WeitoutiaoLargeImageList> largeImageList;
	int diggLimit;
	int readCount;
	String commentIdStr;
	int createTime;
	String actionDesc;

	int sourceType;
	int userDigg;
	List<WeitoutiaoThumbImageList> thumbImageList;
	int diggCount;
	String shareUrl;
	WeitoutiaoPosition position;
	int cursor;
	WeitoutiaoRepostParams repostParams;
	String deviceModel;
	int modifyTime;
	int flags;
	int delete;
	String content;
	List<WeitoutiaoUgcCutImageList> ugcCutImageList;
	String idStr;
	int isPgcAuthor;
	int cellType;
	List<Null> comments;
	int displayLines;
	WeitoutiaoOriginGroup originGroup;
	int commentId;
	int commentVisibleCount;
	String richContent;
	int commentType;
	int isRepost;
	WeitoutiaoUser user;

	WeitoutiaoEntity({this.commentCount, this.brandInfo, this.reason, this.forwardNum, this.itemType, this.forwardCount, this.openUrl, this.deviceType, this.type, this.isAdmin,this.contentUnescape, this.id, this.largeImageList, this.diggLimit, this.readCount, this.commentIdStr, this.createTime, this.actionDesc, this.sourceType, this.userDigg, this.thumbImageList, this.diggCount, this.shareUrl, this.position, this.cursor, this.repostParams, this.deviceModel, this.modifyTime, this.flags, this.delete, this.content, this.ugcCutImageList, this.idStr, this.isPgcAuthor, this.cellType, this.comments, this.displayLines, this.originGroup, this.commentId, this.commentVisibleCount, this.richContent, this.commentType, this.isRepost, this.user});

	WeitoutiaoEntity.fromJson(Map<String, dynamic> json) {
		commentCount = json['comment_count'];
		brandInfo = json['brand_info'];
		reason = json['reason'];
		forwardNum = json['forward_num'];
		itemType = json['item_type'];
		forwardCount = json['forward_count'];
		openUrl = json['open_url'];
		deviceType = json['device_type'];
		type = json['type'];
		isAdmin = json['is_admin'];
		contentUnescape = json['content_unescape'];
		id = json['id'];
		if (json['large_image_list'] != null) {
			largeImageList = new List<WeitoutiaoLargeImageList>();(json['large_image_list'] as List).forEach((v) { largeImageList.add(new WeitoutiaoLargeImageList.fromJson(v)); });
		}
		diggLimit = json['digg_limit'];
		readCount = json['read_count'];
		commentIdStr = json['comment_id_str'];
		createTime = json['create_time'];
		actionDesc = json['action_desc'];
		sourceType = json['source_type'];
		userDigg = json['user_digg'];
		if (json['thumb_image_list'] != null) {
			thumbImageList = new List<WeitoutiaoThumbImageList>();(json['thumb_image_list'] as List).forEach((v) { thumbImageList.add(new WeitoutiaoThumbImageList.fromJson(v)); });
		}
		diggCount = json['digg_count'];
		shareUrl = json['share_url'];
		position = json['position'] != null ? new WeitoutiaoPosition.fromJson(json['position']) : null;
		cursor = json['cursor'];
		repostParams = json['repost_params'] != null ? new WeitoutiaoRepostParams.fromJson(json['repost_params']) : null;
		deviceModel = json['device_model'];
		modifyTime = json['modify_time'];
		flags = json['flags'];
		delete = json['delete'];
		content = json['content'];
		if (json['ugc_cut_image_list'] != null) {
			ugcCutImageList = new List<WeitoutiaoUgcCutImageList>();(json['ugc_cut_image_list'] as List).forEach((v) { ugcCutImageList.add(new WeitoutiaoUgcCutImageList.fromJson(v)); });
		}
		idStr = json['id_str'];
		isPgcAuthor = json['is_pgc_author'];
		cellType = json['cell_type'];
		if (json['comments'] != null) {
			comments = new List<Null>();
		}
		displayLines = json['display_lines'];
		originGroup = json['origin_group'] != null ? new WeitoutiaoOriginGroup.fromJson(json['origin_group']) : null;
		commentId = json['comment_id'];
		commentVisibleCount = json['comment_visible_count'];
		richContent = json['rich_content'];
		commentType = json['comment_type'];
		isRepost = json['is_repost'];
		user = json['user'] != null ? new WeitoutiaoUser.fromJson(json['user']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['comment_count'] = this.commentCount;
		data['brand_info'] = this.brandInfo;
		data['reason'] = this.reason;
		data['forward_num'] = this.forwardNum;
		data['item_type'] = this.itemType;
		data['forward_count'] = this.forwardCount;
		data['open_url'] = this.openUrl;
		data['device_type'] = this.deviceType;
		data['type'] = this.type;
		data['is_admin'] = this.isAdmin;
		data['content_unescape'] = this.contentUnescape;
		data['id'] = this.id;
		if (this.largeImageList != null) {
      data['large_image_list'] =  this.largeImageList.map((v) => v.toJson()).toList();
    }
		data['digg_limit'] = this.diggLimit;
		data['read_count'] = this.readCount;
		data['comment_id_str'] = this.commentIdStr;
		data['create_time'] = this.createTime;
		data['action_desc'] = this.actionDesc;
		data['source_type'] = this.sourceType;
		data['user_digg'] = this.userDigg;
		if (this.thumbImageList != null) {
      data['thumb_image_list'] =  this.thumbImageList.map((v) => v.toJson()).toList();
    }
		data['digg_count'] = this.diggCount;
		data['share_url'] = this.shareUrl;
		if (this.position != null) {
      data['position'] = this.position.toJson();
    }
		data['cursor'] = this.cursor;
		if (this.repostParams != null) {
      data['repost_params'] = this.repostParams.toJson();
    }
		data['device_model'] = this.deviceModel;
		data['modify_time'] = this.modifyTime;
		data['flags'] = this.flags;
		data['delete'] = this.delete;
		data['content'] = this.content;
		if (this.ugcCutImageList != null) {
      data['ugc_cut_image_list'] =  this.ugcCutImageList.map((v) => v.toJson()).toList();
    }
		data['id_str'] = this.idStr;
		data['is_pgc_author'] = this.isPgcAuthor;
		data['cell_type'] = this.cellType;
		if (this.comments != null) {
      data['comments'] =  [];
    }
		data['display_lines'] = this.displayLines;
		if (this.originGroup != null) {
      data['origin_group'] = this.originGroup.toJson();
    }
		data['comment_id'] = this.commentId;
		data['comment_visible_count'] = this.commentVisibleCount;
		data['rich_content'] = this.richContent;
		data['comment_type'] = this.commentType;
		data['is_repost'] = this.isRepost;
		if (this.user != null) {
      data['user'] = this.user.toJson();
    }
		return data;
	}
}


class WeitoutiaoLargeImageList {
	List<WeitoutiaoLargeImageListUrlList> urlList;
	int width;
	String uri;
	String url;
	int height;

	WeitoutiaoLargeImageList({this.urlList, this.width, this.uri, this.url, this.height});

	WeitoutiaoLargeImageList.fromJson(Map<String, dynamic> json) {
		if (json['url_list'] != null) {
			urlList = new List<WeitoutiaoLargeImageListUrlList>();(json['url_list'] as List).forEach((v) { urlList.add(new WeitoutiaoLargeImageListUrlList.fromJson(v)); });
		}
		width = json['width'];
		uri = json['uri'];
		url = json['url'];
		height = json['height'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.urlList != null) {
      data['url_list'] =  this.urlList.map((v) => v.toJson()).toList();
    }
		data['width'] = this.width;
		data['uri'] = this.uri;
		data['url'] = this.url;
		data['height'] = this.height;
		return data;
	}
}

class WeitoutiaoLargeImageListUrlList {
	String url;

	WeitoutiaoLargeImageListUrlList({this.url});

	WeitoutiaoLargeImageListUrlList.fromJson(Map<String, dynamic> json) {
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['url'] = this.url;
		return data;
	}
}


class WeitoutiaoThumbImageList {
	List<WeitoutiaoThumbImageListUrlList> urlList;
	int width;
	String uri;
	String url;
	int height;

	WeitoutiaoThumbImageList({this.urlList, this.width, this.uri, this.url, this.height});

	WeitoutiaoThumbImageList.fromJson(Map<String, dynamic> json) {
		if (json['url_list'] != null) {
			urlList = new List<WeitoutiaoThumbImageListUrlList>();(json['url_list'] as List).forEach((v) { urlList.add(new WeitoutiaoThumbImageListUrlList.fromJson(v)); });
		}
		width = json['width'];
		uri = json['uri'];
		url = json['url'];
		height = json['height'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.urlList != null) {
      data['url_list'] =  this.urlList.map((v) => v.toJson()).toList();
    }
		data['width'] = this.width;
		data['uri'] = this.uri;
		data['url'] = this.url;
		data['height'] = this.height;
		return data;
	}
}

class WeitoutiaoThumbImageListUrlList {
	String url;

	WeitoutiaoThumbImageListUrlList({this.url});

	WeitoutiaoThumbImageListUrlList.fromJson(Map<String, dynamic> json) {
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['url'] = this.url;
		return data;
	}
}

class WeitoutiaoPosition {
	String position;

	WeitoutiaoPosition({this.position});

	WeitoutiaoPosition.fromJson(Map<String, dynamic> json) {
		position = json['position'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['position'] = this.position;
		return data;
	}
}


class WeitoutiaoRepostParams {
	String schema;
	String fwIdStr;
	int repostType;
	String optIdStr;
	int optIdType;
	int fwIdType;
	int fwUserId;
	int optId;
	int fwId;

	WeitoutiaoRepostParams({this.schema, this.fwIdStr, this.repostType, this.optIdStr, this.optIdType, this.fwIdType, this.fwUserId, this.optId, this.fwId});

	WeitoutiaoRepostParams.fromJson(Map<String, dynamic> json) {
		schema = json['schema'];
		fwIdStr = json['fw_id_str'];
		repostType = json['repost_type'];
		optIdStr = json['opt_id_str'];
		optIdType = json['opt_id_type'];
		fwIdType = json['fw_id_type'];
		fwUserId = json['fw_user_id'];
		optId = json['opt_id'];
		fwId = json['fw_id'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['schema'] = this.schema;
		data['fw_id_str'] = this.fwIdStr;
		data['repost_type'] = this.repostType;
		data['opt_id_str'] = this.optIdStr;
		data['opt_id_type'] = this.optIdType;
		data['fw_id_type'] = this.fwIdType;
		data['fw_user_id'] = this.fwUserId;
		data['opt_id'] = this.optId;
		data['fw_id'] = this.fwId;
		return data;
	}
}

class WeitoutiaoUgcCutImageList {
	List<WeitoutiaoUgcCutImageListUrlList> urlList;
	int width;
	String uri;
	String url;
	int height;

	WeitoutiaoUgcCutImageList({this.urlList, this.width, this.uri, this.url, this.height});

	WeitoutiaoUgcCutImageList.fromJson(Map<String, dynamic> json) {
		if (json['url_list'] != null) {
			urlList = new List<WeitoutiaoUgcCutImageListUrlList>();(json['url_list'] as List).forEach((v) { urlList.add(new WeitoutiaoUgcCutImageListUrlList.fromJson(v)); });
		}
		width = json['width'];
		uri = json['uri'];
		url = json['url'];
		height = json['height'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.urlList != null) {
      data['url_list'] =  this.urlList.map((v) => v.toJson()).toList();
    }
		data['width'] = this.width;
		data['uri'] = this.uri;
		data['url'] = this.url;
		data['height'] = this.height;
		return data;
	}
}

class WeitoutiaoUgcCutImageListUrlList {
	String url;

	WeitoutiaoUgcCutImageListUrlList({this.url});

	WeitoutiaoUgcCutImageListUrlList.fromJson(Map<String, dynamic> json) {
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['url'] = this.url;
		return data;
	}
}

class WeitoutiaoOriginGroup {


	WeitoutiaoOriginGroup();

	WeitoutiaoOriginGroup.fromJson(Map<String, dynamic> json) {
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		return data;
	}
}

class WeitoutiaoUser {
	String schema;
	int isBlocked;
	String avatarUrl;
	int userId;
	String screenName;
	String verifiedReason;
	int isBlocking;
	String description;
	int isFriend;
	bool userVerified;

	WeitoutiaoUser({this.schema, this.isBlocked, this.avatarUrl, this.userId, this.screenName, this.verifiedReason, this.isBlocking, this.description, this.isFriend, this.userVerified});

	WeitoutiaoUser.fromJson(Map<String, dynamic> json) {
		schema = json['schema'];
		isBlocked = json['is_blocked'];
		avatarUrl = json['avatar_url'];
		userId = json['user_id'];
		screenName = json['screen_name'];
		verifiedReason = json['verified_reason'];
		isBlocking = json['is_blocking'];
		description = json['description'];
		isFriend = json['is_friend'];
		userVerified = json['user_verified'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['schema'] = this.schema;
		data['is_blocked'] = this.isBlocked;
		data['avatar_url'] = this.avatarUrl;
		data['user_id'] = this.userId;
		data['screen_name'] = this.screenName;
		data['verified_reason'] = this.verifiedReason;
		data['is_blocking'] = this.isBlocking;
		data['description'] = this.description;
		data['is_friend'] = this.isFriend;
		data['user_verified'] = this.userVerified;
		return data;
	}
}
