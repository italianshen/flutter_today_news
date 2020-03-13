import 'package:flutter_today_news/modules/weitoutiao/model/weitoutiao_article_item_entity.dart';

class WeitoutiaoListEntity {
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
	List<Null> diggList;
	String contentUnescape;
	WeitoutiaoListOriginItem originItem;
	int id;
	List<Null> largeImageList;
	int diggLimit;
	WeitoutiaoListGroup group;
	WeitoutiaoListImageType imageType;
	int readCount;
	String commentIdStr;
	int createTime;
	String actionDesc;
	WeitoutiaoListOriginThread originThread;
	int sourceType;
	int userDigg;
	List<Null> thumbImageList;
	int diggCount;
	String shareUrl;
	WeitoutiaoListPosition position;
	WeitoutiaoListTalkItem talkItem;
	int cursor;
	WeitoutiaoListRepostParams repostParams;
	String deviceModel;
	int modifyTime;
	int flags;
	int delete;
	String content;
	List<WeitoutiaoListOriginThreadUgcCutImageList> ugcCutImageList;
	String idStr;
	int isPgcAuthor;
	int cellType;
	List<Null> comments;
	int displayLines;
	WeitoutiaoListOriginGroup originGroup;
	int commentId;
	int commentVisibleCount;
	String richContent;
	int commentType;
	int isRepost;
	WeitoutiaoListUser user;
  /// 文章模型
	WeitoutiaoArticleItemEntity articleItem;

	WeitoutiaoListEntity({this.commentCount, this.brandInfo, this.reason, this.forwardNum, this.itemType, this.forwardCount, this.openUrl, this.deviceType, this.type, this.isAdmin, this.diggList, this.contentUnescape, this.originItem, this.id, this.largeImageList, this.diggLimit, this.group, this.imageType, this.readCount, this.commentIdStr, this.createTime, this.actionDesc, this.originThread, this.sourceType, this.userDigg, this.thumbImageList, this.diggCount, this.shareUrl, this.position, this.talkItem, this.cursor, this.repostParams, this.deviceModel, this.modifyTime, this.flags, this.delete, this.content, this.ugcCutImageList, this.idStr, this.isPgcAuthor, this.cellType, this.comments, this.displayLines, this.originGroup, this.commentId, this.commentVisibleCount, this.richContent, this.commentType, this.isRepost, this.user});

	WeitoutiaoListEntity.fromJson(Map<String, dynamic> json) {
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
		if (json['digg_list'] != null) {
			diggList = new List<Null>();
		}
		contentUnescape = json['content_unescape'];
		originItem = json['origin_item'] != null ? new WeitoutiaoListOriginItem.fromJson(json['origin_item']) : null;
		id = json['id'];
		if (json['large_image_list'] != null) {
			largeImageList = new List<Null>();
		}
		diggLimit = json['digg_limit'];
		group = json['group'] != null ? new WeitoutiaoListGroup.fromJson(json['group']) : null;
		imageType = json['image_type'] != null ? new WeitoutiaoListImageType.fromJson(json['image_type']) : null;
		readCount = json['read_count'];
		commentIdStr = json['comment_id_str'];
		createTime = json['create_time'];
		actionDesc = json['action_desc'];
		originThread = json['origin_thread'] != null ? new WeitoutiaoListOriginThread.fromJson(json['origin_thread']) : null;
		sourceType = json['source_type'];
		userDigg = json['user_digg'];
		if (json['thumb_image_list'] != null) {
			thumbImageList = new List<Null>();
		}
		diggCount = json['digg_count'];
		shareUrl = json['share_url'];
		position = json['position'] != null ? new WeitoutiaoListPosition.fromJson(json['position']) : null;
		talkItem = json['talk_item'] != null ? new WeitoutiaoListTalkItem.fromJson(json['talk_item']) : null;
		cursor = json['cursor'];
		repostParams = json['repost_params'] != null ? new WeitoutiaoListRepostParams.fromJson(json['repost_params']) : null;
		deviceModel = json['device_model'];
		modifyTime = json['modify_time'];
		flags = json['flags'];
		delete = json['delete'];
		content = json['content'];
		if (json['ugc_cut_image_list'] != null) {
		 ugcCutImageList = new List<WeitoutiaoListOriginThreadUgcCutImageList>();(json['ugc_cut_image_list'] as List).forEach((v) { ugcCutImageList.add(new WeitoutiaoListOriginThreadUgcCutImageList.fromJson(v)); });
		}
    /// 论文
		articleItem = json['article_item'] != null ? new WeitoutiaoArticleItemEntity.fromJson(json['article_item']) : null;
		idStr = json['id_str'];
		isPgcAuthor = json['is_pgc_author'];
		cellType = json['cell_type'];
		if (json['comments'] != null) {
			comments = new List<Null>();
		}
		displayLines = json['display_lines'];
		originGroup = json['origin_group'] != null ? new WeitoutiaoListOriginGroup.fromJson(json['origin_group']) : null;
		commentId = json['comment_id'];
		commentVisibleCount = json['comment_visible_count'];
		richContent = json['rich_content'];
		commentType = json['comment_type'];
		isRepost = json['is_repost'];
		user = json['user'] != null ? new WeitoutiaoListUser.fromJson(json['user']) : null;
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
		if (this.diggList != null) {
      data['digg_list'] =  [];
    }
		data['content_unescape'] = this.contentUnescape;
		if (this.originItem != null) {
      data['origin_item'] = this.originItem.toJson();
    }
		data['id'] = this.id;
		if (this.largeImageList != null) {
      data['large_image_list'] =  [];
    }
		data['digg_limit'] = this.diggLimit;
		if (this.group != null) {
      data['group'] = this.group.toJson();
    }
		if (this.imageType != null) {
      data['image_type'] = this.imageType.toJson();
    }
		data['read_count'] = this.readCount;
		data['comment_id_str'] = this.commentIdStr;
		data['create_time'] = this.createTime;
		data['action_desc'] = this.actionDesc;
		if (this.originThread != null) {
      data['origin_thread'] = this.originThread.toJson();
    }
		data['source_type'] = this.sourceType;
		data['user_digg'] = this.userDigg;
		if (this.thumbImageList != null) {
      data['thumb_image_list'] =  [];
    }
		data['digg_count'] = this.diggCount;
		data['share_url'] = this.shareUrl;
		if (this.position != null) {
      data['position'] = this.position.toJson();
    }
		if (this.talkItem != null) {
      data['talk_item'] = this.talkItem.toJson();
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
      data['ugc_cut_image_list'] =  [];
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

class WeitoutiaoListOriginItem {


	WeitoutiaoListOriginItem();

	WeitoutiaoListOriginItem.fromJson(Map<String, dynamic> json) {
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		return data;
	}
}

class WeitoutiaoListGroup {


	WeitoutiaoListGroup();

	WeitoutiaoListGroup.fromJson(Map<String, dynamic> json) {
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		return data;
	}
}

class WeitoutiaoListImageType {


	WeitoutiaoListImageType();

	WeitoutiaoListImageType.fromJson(Map<String, dynamic> json) {
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		return data;
	}
}

class WeitoutiaoListOriginThread {
	String brandInfo;
	String openUrl;
	String threadIdStr;
	int delete;
	String content;
	String contentUnescape;
	int threadId;
	int showOrigin;
	List<WeitoutiaoListOriginThreadThumbImageList> thumbImageList;
	String richContent;
	List<WeitoutiaoListOriginThreadUgcCutImageList> ugcCutImageList;
	String showTips;
	WeitoutiaoListOriginThreadPosition position;
	List<WeitoutiaoListOriginThreadLargeImageList> largeImageList;
	WeitoutiaoListOriginThreadUser user;
	WeitoutiaoListOriginThreadTalkItem talkItem;
	int status;
//	WeitoutiaoListOriginThreadImageType imageType;

	WeitoutiaoListOriginThread({this.brandInfo, this.openUrl, this.threadIdStr, this.delete, this.content, this.contentUnescape, this.threadId, this.showOrigin, this.thumbImageList, this.richContent, this.ugcCutImageList, this.showTips, this.position, this.largeImageList, this.user, this.talkItem, this.status});

	WeitoutiaoListOriginThread.fromJson(Map<String, dynamic> json) {
		brandInfo = json['brand_info'];
		openUrl = json['open_url'];
		threadIdStr = json['thread_id_str'];
		delete = json['delete'];
		content = json['content'];
		contentUnescape = json['content_unescape'];
		threadId = json['thread_id'];
		showOrigin = json['show_origin'];
		if (json['thumb_image_list'] != null) {
			thumbImageList = new List<WeitoutiaoListOriginThreadThumbImageList>();(json['thumb_image_list'] as List).forEach((v) { thumbImageList.add(new WeitoutiaoListOriginThreadThumbImageList.fromJson(v)); });
		}
		richContent = json['rich_content'];
		if (json['ugc_cut_image_list'] != null) {
			ugcCutImageList = new List<WeitoutiaoListOriginThreadUgcCutImageList>();(json['ugc_cut_image_list'] as List).forEach((v) { ugcCutImageList.add(new WeitoutiaoListOriginThreadUgcCutImageList.fromJson(v)); });
		}
		showTips = json['show_tips'];
		position = json['position'] != null ? new WeitoutiaoListOriginThreadPosition.fromJson(json['position']) : null;
		if (json['large_image_list'] != null) {
			largeImageList = new List<WeitoutiaoListOriginThreadLargeImageList>();(json['large_image_list'] as List).forEach((v) { largeImageList.add(new WeitoutiaoListOriginThreadLargeImageList.fromJson(v)); });
		}
		user = json['user'] != null ? new WeitoutiaoListOriginThreadUser.fromJson(json['user']) : null;
		talkItem = json['talk_item'] != null ? new WeitoutiaoListOriginThreadTalkItem.fromJson(json['talk_item']) : null;
		status = json['status'];
//		imageType = json['image_type'] != null ? new WeitoutiaoListOriginThreadImageType.fromJson(json['image_type']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['brand_info'] = this.brandInfo;
		data['open_url'] = this.openUrl;
		data['thread_id_str'] = this.threadIdStr;
		data['delete'] = this.delete;
		data['content'] = this.content;
		data['content_unescape'] = this.contentUnescape;
		data['thread_id'] = this.threadId;
		data['show_origin'] = this.showOrigin;
		if (this.thumbImageList != null) {
      data['thumb_image_list'] =  this.thumbImageList.map((v) => v.toJson()).toList();
    }
		data['rich_content'] = this.richContent;
		if (this.ugcCutImageList != null) {
      data['ugc_cut_image_list'] =  this.ugcCutImageList.map((v) => v.toJson()).toList();
    }
		data['show_tips'] = this.showTips;
		if (this.position != null) {
      data['position'] = this.position.toJson();
    }
		if (this.largeImageList != null) {
      data['large_image_list'] =  this.largeImageList.map((v) => v.toJson()).toList();
    }
		if (this.user != null) {
      data['user'] = this.user.toJson();
    }
		if (this.talkItem != null) {
      data['talk_item'] = this.talkItem.toJson();
    }
		data['status'] = this.status;
//		if (this.imageType != null) {
//      data['image_type'] = this.imageType.toJson();
//    }
		return data;
	}
}

class WeitoutiaoListOriginThreadThumbImageList {
	List<WeitoutiaoListOriginThreadThumbImageListUrlList> urlList;
	int width;
	String uri;
	String url;
	int height;

	WeitoutiaoListOriginThreadThumbImageList({this.urlList, this.width, this.uri, this.url, this.height});

	WeitoutiaoListOriginThreadThumbImageList.fromJson(Map<String, dynamic> json) {
		if (json['url_list'] != null) {
			urlList = new List<WeitoutiaoListOriginThreadThumbImageListUrlList>();(json['url_list'] as List).forEach((v) { urlList.add(new WeitoutiaoListOriginThreadThumbImageListUrlList.fromJson(v)); });
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

class WeitoutiaoListOriginThreadThumbImageListUrlList {
	String url;

	WeitoutiaoListOriginThreadThumbImageListUrlList({this.url});

	WeitoutiaoListOriginThreadThumbImageListUrlList.fromJson(Map<String, dynamic> json) {
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['url'] = this.url;
		return data;
	}
}

class WeitoutiaoListOriginThreadUgcCutImageList {
	List<WeitoutiaoListOriginThreadUgcCutImageListUrlList> urlList;
	int width;
	String uri;
	String url;
	int height;

	WeitoutiaoListOriginThreadUgcCutImageList({this.urlList, this.width, this.uri, this.url, this.height});

	WeitoutiaoListOriginThreadUgcCutImageList.fromJson(Map<String, dynamic> json) {
		if (json['url_list'] != null) {
			urlList = new List<WeitoutiaoListOriginThreadUgcCutImageListUrlList>();(json['url_list'] as List).forEach((v) { urlList.add(new WeitoutiaoListOriginThreadUgcCutImageListUrlList.fromJson(v)); });
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

class WeitoutiaoListOriginThreadUgcCutImageListUrlList {
	String url;

	WeitoutiaoListOriginThreadUgcCutImageListUrlList({this.url});

	WeitoutiaoListOriginThreadUgcCutImageListUrlList.fromJson(Map<String, dynamic> json) {
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['url'] = this.url;
		return data;
	}
}

class WeitoutiaoListOriginThreadPosition {


	WeitoutiaoListOriginThreadPosition();

	WeitoutiaoListOriginThreadPosition.fromJson(Map<String, dynamic> json) {
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		return data;
	}
}

class WeitoutiaoListOriginThreadLargeImageList {
	List<WeitoutiaoListOriginThreadLargeImageListUrlList> urlList;
	int width;
	String uri;
	String url;
	int height;

	WeitoutiaoListOriginThreadLargeImageList({this.urlList, this.width, this.uri, this.url, this.height});

	WeitoutiaoListOriginThreadLargeImageList.fromJson(Map<String, dynamic> json) {
		if (json['url_list'] != null) {
			urlList = new List<WeitoutiaoListOriginThreadLargeImageListUrlList>();(json['url_list'] as List).forEach((v) { urlList.add(new WeitoutiaoListOriginThreadLargeImageListUrlList.fromJson(v)); });
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

class WeitoutiaoListOriginThreadLargeImageListUrlList {
	String url;

	WeitoutiaoListOriginThreadLargeImageListUrlList({this.url});

	WeitoutiaoListOriginThreadLargeImageListUrlList.fromJson(Map<String, dynamic> json) {
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['url'] = this.url;
		return data;
	}
}

class WeitoutiaoListOriginThreadUser {
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

	WeitoutiaoListOriginThreadUser({this.schema, this.isBlocked, this.avatarUrl, this.userId, this.screenName, this.verifiedReason, this.isBlocking, this.description, this.isFriend, this.userVerified});

	WeitoutiaoListOriginThreadUser.fromJson(Map<String, dynamic> json) {
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

class WeitoutiaoListOriginThreadTalkItem {


	WeitoutiaoListOriginThreadTalkItem();

	WeitoutiaoListOriginThreadTalkItem.fromJson(Map<String, dynamic> json) {
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		return data;
	}
}

//class WeitoutiaoListOriginThreadImageType {
//	int list/s256/477800034914d2523fd1;
//	int list/s256/477700045b9f30980db6;
//	int list/s256/477800034913b7505bad;
//	int list/s256/477a00033f5f7e1a6728;
//	int list/s256/47790003475f40705cbe;
//	int list/s256/477a00033f6010b6006f;
//	int list/s256/477a00033f5ee82a1d9c;
//	int list/s256/477a00033f6154e88982;
//	int list/s256/477700045ba0a27efc5b;
//
//	WeitoutiaoListOriginThreadImageType({this.list/s256/477800034914d2523fd1, this.list/s256/477700045b9f30980db6, this.list/s256/477800034913b7505bad, this.list/s256/477a00033f5f7e1a6728, this.list/s256/47790003475f40705cbe, this.list/s256/477a00033f6010b6006f, this.list/s256/477a00033f5ee82a1d9c, this.list/s256/477a00033f6154e88982, this.list/s256/477700045ba0a27efc5b});
//
//	WeitoutiaoListOriginThreadImageType.fromJson(Map<String, dynamic> json) {
//		list/s256/477800034914d2523fd1 = json['list/s256/477800034914d2523fd1'];
//		list/s256/477700045b9f30980db6 = json['list/s256/477700045b9f30980db6'];
//		list/s256/477800034913b7505bad = json['list/s256/477800034913b7505bad'];
//		list/s256/477a00033f5f7e1a6728 = json['list/s256/477a00033f5f7e1a6728'];
//		list/s256/47790003475f40705cbe = json['list/s256/47790003475f40705cbe'];
//		list/s256/477a00033f6010b6006f = json['list/s256/477a00033f6010b6006f'];
//		list/s256/477a00033f5ee82a1d9c = json['list/s256/477a00033f5ee82a1d9c'];
//		list/s256/477a00033f6154e88982 = json['list/s256/477a00033f6154e88982'];
//		list/s256/477700045ba0a27efc5b = json['list/s256/477700045ba0a27efc5b'];
//	}
//
//	Map<String, dynamic> toJson() {
//		final Map<String, dynamic> data = new Map<String, dynamic>();
//		data['list/s256/477800034914d2523fd1'] = this.list/s256/477800034914d2523fd1;
//		data['list/s256/477700045b9f30980db6'] = this.list/s256/477700045b9f30980db6;
//		data['list/s256/477800034913b7505bad'] = this.list/s256/477800034913b7505bad;
//		data['list/s256/477a00033f5f7e1a6728'] = this.list/s256/477a00033f5f7e1a6728;
//		data['list/s256/47790003475f40705cbe'] = this.list/s256/47790003475f40705cbe;
//		data['list/s256/477a00033f6010b6006f'] = this.list/s256/477a00033f6010b6006f;
//		data['list/s256/477a00033f5ee82a1d9c'] = this.list/s256/477a00033f5ee82a1d9c;
//		data['list/s256/477a00033f6154e88982'] = this.list/s256/477a00033f6154e88982;
//		data['list/s256/477700045ba0a27efc5b'] = this.list/s256/477700045ba0a27efc5b;
//		return data;
//	}
//}

class WeitoutiaoListPosition {


	WeitoutiaoListPosition();

	WeitoutiaoListPosition.fromJson(Map<String, dynamic> json) {
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		return data;
	}
}

class WeitoutiaoListTalkItem {


	WeitoutiaoListTalkItem();

	WeitoutiaoListTalkItem.fromJson(Map<String, dynamic> json) {
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		return data;
	}
}

class WeitoutiaoListRepostParams {
	String schema;
	String fwIdStr;
	int repostType;
	String optIdStr;
	int optIdType;
	int fwIdType;
	int fwUserId;
	int optId;
	int fwId;

	WeitoutiaoListRepostParams({this.schema, this.fwIdStr, this.repostType, this.optIdStr, this.optIdType, this.fwIdType, this.fwUserId, this.optId, this.fwId});

	WeitoutiaoListRepostParams.fromJson(Map<String, dynamic> json) {
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

class WeitoutiaoListOriginGroup {


	WeitoutiaoListOriginGroup();

	WeitoutiaoListOriginGroup.fromJson(Map<String, dynamic> json) {
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		return data;
	}
}

class WeitoutiaoListUser {
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

	WeitoutiaoListUser({this.schema, this.isBlocked, this.avatarUrl, this.userId, this.screenName, this.verifiedReason, this.isBlocking, this.description, this.isFriend, this.userVerified});

	WeitoutiaoListUser.fromJson(Map<String, dynamic> json) {
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
