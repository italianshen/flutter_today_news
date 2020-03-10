class HomeFeedEntity {
	int commentCount;
	bool isSubject;
	dynamic smallImage;
	int sourceIconStyle;
	int aggrType;
	int needClientImprRecycle;
	String source;
	int behotTime;
	String rid;
	int cellFlag;
	HomeFeedUgcRecommend ugcRecommend;
	HomeFeedShareLargeImage shareLargeImage;
	HomeFeedUserInfo userInfo;
	int publishTime;
	int tagId;
	int tip;
	int articleVersion;
	String mediaName;
	String tag;
	int readCount;
	int userVerified;
	int level;
	String articleAltUrl;
	bool showPortrait;
	bool hasM3u8Video;
	bool allowDownload;
	int userRepin;
	int buryStyleShow;
	int itemVersion;
	HomeFeedMediaInfo mediaInfo;
	String contentDecoration;
	int diggCount;
	HomeFeedForwardInfo forwardInfo;
	int ignoreWebTransform;
	String shareUrl;
	int cursor;
	String displayUrl;
	String label;
	String stick_label;
	int gallaryImageCount;
	String preloadWebContent;
	int banImmersive;
	int cellLayoutStyle;
	bool showPortraitArticle;
	int hot;
	String title;
	bool hasVideo;
	int banComment;
	int articleSubType;
	bool hasImage = false;// 默认无图
	int buryCount;
	int preloadWeb;
	HomeFeedLogPb logPb;
	int cellType;
	int repinCount;
	String verifiedContent;
	int articleType;
	List<HomeFeedActionList> actionList;
	int itemId;
	HomeFeedShareInfo shareInfo;
	String sourceOpenUrl;
	String xAbstract;
	String articleUrl;
	String url;
	List<HomeFeedFilterWord> filterWords;
	int shareCount;
	String interactionData;
	bool showDislike;
	int groupId;
	int hasMp4Video;
	HomeFeedMiddleImage middleImage;
	int videoStyle;
	List<HomeFeedImageList> imageList;

	HomeFeedEntity({this.commentCount, this.isSubject, this.smallImage, this.sourceIconStyle, this.aggrType, this.needClientImprRecycle, this.source, this.behotTime, this.rid, this.cellFlag, this.ugcRecommend, this.shareLargeImage, this.userInfo, this.publishTime, this.tagId, this.tip, this.articleVersion, this.mediaName, this.tag, this.readCount, this.userVerified, this.level, this.articleAltUrl, this.showPortrait, this.hasM3u8Video, this.allowDownload, this.userRepin, this.buryStyleShow, this.itemVersion, this.mediaInfo, this.contentDecoration, this.diggCount, this.forwardInfo, this.ignoreWebTransform, this.shareUrl, this.cursor, this.displayUrl, this.gallaryImageCount, this.preloadWebContent, this.banImmersive, this.cellLayoutStyle, this.showPortraitArticle, this.hot, this.title, this.hasVideo, this.banComment, this.articleSubType, this.hasImage, this.buryCount, this.preloadWeb, this.logPb, this.cellType, this.repinCount, this.verifiedContent, this.articleType, this.actionList, this.itemId, this.shareInfo, this.sourceOpenUrl, this.xAbstract, this.articleUrl, this.url, this.filterWords, this.shareCount, this.interactionData, this.showDislike, this.groupId, this.hasMp4Video, this.middleImage, this.videoStyle, this.imageList});

	HomeFeedEntity.fromJson(Map<String, dynamic> json) {
		commentCount = json['comment_count'];
		isSubject = json['is_subject'];
		smallImage = json['small_image'];
		sourceIconStyle = json['source_icon_style'];
		aggrType = json['aggr_type'];
		needClientImprRecycle = json['need_client_impr_recycle'];
		source = json['source'];
		behotTime = json['behot_time'];
		rid = json['rid'];
		cellFlag = json['cell_flag'];
		ugcRecommend = json['ugc_recommend'] != null ? new HomeFeedUgcRecommend.fromJson(json['ugc_recommend']) : null;
		shareLargeImage = json['share_large_image'] != null ? new HomeFeedShareLargeImage.fromJson(json['share_large_image']) : null;
		userInfo = json['user_info'] != null ? new HomeFeedUserInfo.fromJson(json['user_info']) : null;
		publishTime = json['publish_time'];
		tagId = json['tag_id'];
		tip = json['tip'];
		articleVersion = json['article_version'];
		mediaName = json['media_name'];
		tag = json['tag'];
		readCount = json['read_count'];
		userVerified = json['user_verified'];
		level = json['level'];
		articleAltUrl = json['article_alt_url'];
		showPortrait = json['show_portrait'];
		hasM3u8Video = json['has_m3u8_video'];
		allowDownload = json['allow_download'];
		userRepin = json['user_repin'];
		buryStyleShow = json['bury_style_show'];
		itemVersion = json['item_version'];
		mediaInfo = json['media_info'] != null ? new HomeFeedMediaInfo.fromJson(json['media_info']) : null;
		contentDecoration = json['content_decoration'];
		diggCount = json['digg_count'];
		forwardInfo = json['forward_info'] != null ? new HomeFeedForwardInfo.fromJson(json['forward_info']) : null;
		ignoreWebTransform = json['ignore_web_transform'];
		shareUrl = json['share_url'];
		cursor = json['cursor'];
		displayUrl = json['display_url'];
		gallaryImageCount = json['gallary_image_count'];
		preloadWebContent = json['preload_web_content'];
		banImmersive = json['ban_immersive'];
		cellLayoutStyle = json['cell_layout_style'];
		showPortraitArticle = json['show_portrait_article'];
		hot = json['hot'];
		title = json['title'];
		hasVideo = json['has_video'] != null ? json['has_video'] : false;
		banComment = json['ban_comment'];
		articleSubType = json['article_sub_type'];
		hasImage = json['has_image'] != null ? json['has_image'] : false;
		buryCount = json['bury_count'];
		preloadWeb = json['preload_web'];
		logPb = json['log_pb'] != null ? new HomeFeedLogPb.fromJson(json['log_pb']) : null;
		cellType = json['cell_type'];
		repinCount = json['repin_count'];
		verifiedContent = json['verified_content'];
		articleType = json['article_type'];
		if (json['action_list'] != null) {
			actionList = new List<HomeFeedActionList>();(json['action_list'] as List).forEach((v) { actionList.add(new HomeFeedActionList.fromJson(v)); });
		}
		itemId = json['item_id'];
		shareInfo = json['share_info'] != null ? new HomeFeedShareInfo.fromJson(json['share_info']) : null;
		sourceOpenUrl = json['source_open_url'];
		xAbstract = json['abstract'];
		articleUrl = json['article_url'];
		url = json['url'];
		if (json['filter_words'] != null) {
			filterWords = new List<HomeFeedFilterWord>();(json['filter_words'] as List).forEach((v) { filterWords.add(new HomeFeedFilterWord.fromJson(v)); });
		}
		shareCount = json['share_count'];
		interactionData = json['interaction_data'];
		showDislike = json['show_dislike'];
		groupId = json['group_id'];
		hasMp4Video = json['has_mp4_video'];
		middleImage = json['middle_image'] != null ? new HomeFeedMiddleImage.fromJson(json['middle_image']) : null;
		videoStyle = json['video_style'];
		if (json['image_list'] != null) {
			imageList = new List<HomeFeedImageList>();(json['image_list'] as List).forEach((v) { imageList.add(new HomeFeedImageList.fromJson(v)); });
		}
		label = json['label'] != null ? json['label'] : "";
		stick_label = json['stick_label'] != null ? json['stick_label'] : "";

	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['comment_count'] = this.commentCount;
		data['is_subject'] = this.isSubject;
		data['small_image'] = this.smallImage;
		data['source_icon_style'] = this.sourceIconStyle;
		data['aggr_type'] = this.aggrType;
		data['need_client_impr_recycle'] = this.needClientImprRecycle;
		data['source'] = this.source;
		data['behot_time'] = this.behotTime;
		data['rid'] = this.rid;
		data['cell_flag'] = this.cellFlag;
		if (this.ugcRecommend != null) {
      data['ugc_recommend'] = this.ugcRecommend.toJson();
    }
		if (this.shareLargeImage != null) {
      data['share_large_image'] = this.shareLargeImage.toJson();
    }
		if (this.userInfo != null) {
      data['user_info'] = this.userInfo.toJson();
    }
		data['publish_time'] = this.publishTime;
		data['tag_id'] = this.tagId;
		data['tip'] = this.tip;
		data['article_version'] = this.articleVersion;
		data['media_name'] = this.mediaName;
		data['tag'] = this.tag;
		data['read_count'] = this.readCount;
		data['user_verified'] = this.userVerified;
		data['level'] = this.level;
		data['article_alt_url'] = this.articleAltUrl;
		data['show_portrait'] = this.showPortrait;
		data['has_m3u8_video'] = this.hasM3u8Video;
		data['allow_download'] = this.allowDownload;
		data['user_repin'] = this.userRepin;
		data['bury_style_show'] = this.buryStyleShow;
		data['item_version'] = this.itemVersion;
		if (this.mediaInfo != null) {
      data['media_info'] = this.mediaInfo.toJson();
    }
		data['content_decoration'] = this.contentDecoration;
		data['digg_count'] = this.diggCount;
		if (this.forwardInfo != null) {
      data['forward_info'] = this.forwardInfo.toJson();
    }
		data['ignore_web_transform'] = this.ignoreWebTransform;
		data['share_url'] = this.shareUrl;
		data['cursor'] = this.cursor;
		data['display_url'] = this.displayUrl;
		data['gallary_image_count'] = this.gallaryImageCount;
		data['preload_web_content'] = this.preloadWebContent;
		data['ban_immersive'] = this.banImmersive;
		data['cell_layout_style'] = this.cellLayoutStyle;
		data['show_portrait_article'] = this.showPortraitArticle;
		data['hot'] = this.hot;
		data['title'] = this.title;
		data['has_video'] = this.hasVideo;
		data['ban_comment'] = this.banComment;
		data['article_sub_type'] = this.articleSubType;
		data['has_image'] = this.hasImage;
		data['bury_count'] = this.buryCount;
		data['preload_web'] = this.preloadWeb;
		if (this.logPb != null) {
      data['log_pb'] = this.logPb.toJson();
    }
		data['cell_type'] = this.cellType;
		data['repin_count'] = this.repinCount;
		data['verified_content'] = this.verifiedContent;
		data['article_type'] = this.articleType;
		if (this.actionList != null) {
      data['action_list'] =  this.actionList.map((v) => v.toJson()).toList();
    }
		data['item_id'] = this.itemId;
		if (this.shareInfo != null) {
      data['share_info'] = this.shareInfo.toJson();
    }
		data['source_open_url'] = this.sourceOpenUrl;
		data['abstract'] = this.xAbstract;
		data['article_url'] = this.articleUrl;
		data['url'] = this.url;
		if (this.filterWords != null) {
      data['filter_words'] =  this.filterWords.map((v) => v.toJson()).toList();
    }
		data['share_count'] = this.shareCount;
		data['interaction_data'] = this.interactionData;
		data['show_dislike'] = this.showDislike;
		data['group_id'] = this.groupId;
		data['has_mp4_video'] = this.hasMp4Video;
		if (this.middleImage != null) {
      data['middle_image'] = this.middleImage.toJson();
    }
		data['video_style'] = this.videoStyle;
		if (this.imageList != null) {
      data['image_list'] =  this.imageList.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class HomeFeedUgcRecommend {
	String reason;
	String activity;

	HomeFeedUgcRecommend({this.reason, this.activity});

	HomeFeedUgcRecommend.fromJson(Map<String, dynamic> json) {
		reason = json['reason'];
		activity = json['activity'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['reason'] = this.reason;
		data['activity'] = this.activity;
		return data;
	}
}

class HomeFeedShareLargeImage {
	List<HomeFeedShareLargeImageUrlList> urlList;
	int width;
	String uri;
	String url;
	int height;

	HomeFeedShareLargeImage({this.urlList, this.width, this.uri, this.url, this.height});

	HomeFeedShareLargeImage.fromJson(Map<String, dynamic> json) {
		if (json['url_list'] != null) {
			urlList = new List<HomeFeedShareLargeImageUrlList>();(json['url_list'] as List).forEach((v) { urlList.add(new HomeFeedShareLargeImageUrlList.fromJson(v)); });
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

class HomeFeedShareLargeImageUrlList {
	String url;

	HomeFeedShareLargeImageUrlList({this.url});

	HomeFeedShareLargeImageUrlList.fromJson(Map<String, dynamic> json) {
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['url'] = this.url;
		return data;
	}
}

class HomeFeedUserInfo {
	String schema;
	String avatarUrl;
	int userId;
	String userAuthInfo;
	String name;
	String description;
	bool follow;
	String verifiedContent;
	int followerCount;
	int liveInfoType;
	bool userVerified;

	HomeFeedUserInfo({this.schema, this.avatarUrl, this.userId, this.userAuthInfo, this.name, this.description, this.follow, this.verifiedContent, this.followerCount, this.liveInfoType, this.userVerified});

	HomeFeedUserInfo.fromJson(Map<String, dynamic> json) {
		schema = json['schema'];
		avatarUrl = json['avatar_url'];
		userId = json['user_id'];
		userAuthInfo = json['user_auth_info'];
		name = json['name'];
		description = json['description'];
		follow = json['follow'];
		verifiedContent = json['verified_content'];
		followerCount = json['follower_count'];
		liveInfoType = json['live_info_type'];
		userVerified = json['user_verified'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['schema'] = this.schema;
		data['avatar_url'] = this.avatarUrl;
		data['user_id'] = this.userId;
		data['user_auth_info'] = this.userAuthInfo;
		data['name'] = this.name;
		data['description'] = this.description;
		data['follow'] = this.follow;
		data['verified_content'] = this.verifiedContent;
		data['follower_count'] = this.followerCount;
		data['live_info_type'] = this.liveInfoType;
		data['user_verified'] = this.userVerified;
		return data;
	}
}

class HomeFeedMediaInfo {
	String avatarUrl;
	int userId;
	bool isStarUser;
	String name;
	int mediaId;
	int recommendType;
	bool follow;
	String verifiedContent;
	String recommendReason;
	bool userVerified;

	HomeFeedMediaInfo({this.avatarUrl, this.userId, this.isStarUser, this.name, this.mediaId, this.recommendType, this.follow, this.verifiedContent, this.recommendReason, this.userVerified});

	HomeFeedMediaInfo.fromJson(Map<String, dynamic> json) {
		avatarUrl = json['avatar_url'];
		userId = json['user_id'];
		isStarUser = json['is_star_user'];
		name = json['name'];
		mediaId = json['media_id'];
		recommendType = json['recommend_type'];
		follow = json['follow'];
		verifiedContent = json['verified_content'];
		recommendReason = json['recommend_reason'];
		userVerified = json['user_verified'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['avatar_url'] = this.avatarUrl;
		data['user_id'] = this.userId;
		data['is_star_user'] = this.isStarUser;
		data['name'] = this.name;
		data['media_id'] = this.mediaId;
		data['recommend_type'] = this.recommendType;
		data['follow'] = this.follow;
		data['verified_content'] = this.verifiedContent;
		data['recommend_reason'] = this.recommendReason;
		data['user_verified'] = this.userVerified;
		return data;
	}
}

class HomeFeedForwardInfo {
	int forwardCount;

	HomeFeedForwardInfo({this.forwardCount});

	HomeFeedForwardInfo.fromJson(Map<String, dynamic> json) {
		forwardCount = json['forward_count'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['forward_count'] = this.forwardCount;
		return data;
	}
}

class HomeFeedLogPb {
	String imprId;
	String isFollowing;

	HomeFeedLogPb({this.imprId, this.isFollowing});

	HomeFeedLogPb.fromJson(Map<String, dynamic> json) {
		imprId = json['impr_id'];
		isFollowing = json['is_following'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['impr_id'] = this.imprId;
		data['is_following'] = this.isFollowing;
		return data;
	}
}

class HomeFeedActionList {
	HomeFeedActionListExtra extra;
	int action;
	String desc;

	HomeFeedActionList({this.extra, this.action, this.desc});

	HomeFeedActionList.fromJson(Map<String, dynamic> json) {
		extra = json['extra'] != null ? new HomeFeedActionListExtra.fromJson(json['extra']) : null;
		action = json['action'];
		desc = json['desc'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.extra != null) {
      data['extra'] = this.extra.toJson();
    }
		data['action'] = this.action;
		data['desc'] = this.desc;
		return data;
	}
}

class HomeFeedActionListExtra {



	HomeFeedActionListExtra.fromJson(Map<String, dynamic> json) {
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		return data;
	}
}

class HomeFeedShareInfo {
	dynamic videoUrl;
	HomeFeedShareInfoShareType shareType;
	String shareUrl;
	dynamic shareControl;
	dynamic description;
	dynamic hiddenUrl;
	dynamic coverImage;
	String title;
	int tokenType;
	HomeFeedShareInfoWeixinCoverImage weixinCoverImage;
	int onSuppress;

	HomeFeedShareInfo({this.videoUrl, this.shareType, this.shareUrl, this.shareControl, this.description, this.hiddenUrl, this.coverImage, this.title, this.tokenType, this.weixinCoverImage, this.onSuppress});

	HomeFeedShareInfo.fromJson(Map<String, dynamic> json) {
		videoUrl = json['video_url'];
		shareType = json['share_type'] != null ? new HomeFeedShareInfoShareType.fromJson(json['share_type']) : null;
		shareUrl = json['share_url'];
		shareControl = json['share_control'];
		description = json['description'];
		hiddenUrl = json['hidden_url'];
		coverImage = json['cover_image'];
		title = json['title'];
		tokenType = json['token_type'];
		weixinCoverImage = json['weixin_cover_image'] != null ? new HomeFeedShareInfoWeixinCoverImage.fromJson(json['weixin_cover_image']) : null;
		onSuppress = json['on_suppress'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['video_url'] = this.videoUrl;
		if (this.shareType != null) {
      data['share_type'] = this.shareType.toJson();
    }
		data['share_url'] = this.shareUrl;
		data['share_control'] = this.shareControl;
		data['description'] = this.description;
		data['hidden_url'] = this.hiddenUrl;
		data['cover_image'] = this.coverImage;
		data['title'] = this.title;
		data['token_type'] = this.tokenType;
		if (this.weixinCoverImage != null) {
      data['weixin_cover_image'] = this.weixinCoverImage.toJson();
    }
		data['on_suppress'] = this.onSuppress;
		return data;
	}
}

class HomeFeedShareInfoShareType {
	int qq;
	int wx;
	int pyq;
	int qzone;

	HomeFeedShareInfoShareType({this.qq, this.wx, this.pyq, this.qzone});

	HomeFeedShareInfoShareType.fromJson(Map<String, dynamic> json) {
		qq = json['qq'];
		wx = json['wx'];
		pyq = json['pyq'];
		qzone = json['qzone'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['qq'] = this.qq;
		data['wx'] = this.wx;
		data['pyq'] = this.pyq;
		data['qzone'] = this.qzone;
		return data;
	}
}

class HomeFeedShareInfoWeixinCoverImage {
	List<HomeFeedShareInfoWeixinCoverImageUrlList> urlList;
	int width;
	String uri;
	String url;
	int height;

	HomeFeedShareInfoWeixinCoverImage({this.urlList, this.width, this.uri, this.url, this.height});

	HomeFeedShareInfoWeixinCoverImage.fromJson(Map<String, dynamic> json) {
		if (json['url_list'] != null) {
			urlList = new List<HomeFeedShareInfoWeixinCoverImageUrlList>();(json['url_list'] as List).forEach((v) { urlList.add(new HomeFeedShareInfoWeixinCoverImageUrlList.fromJson(v)); });
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

class HomeFeedShareInfoWeixinCoverImageUrlList {
	String url;

	HomeFeedShareInfoWeixinCoverImageUrlList({this.url});

	HomeFeedShareInfoWeixinCoverImageUrlList.fromJson(Map<String, dynamic> json) {
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['url'] = this.url;
		return data;
	}
}

class HomeFeedFilterWord {
	bool isSelected;
	String name;
	String id;

	HomeFeedFilterWord({this.isSelected, this.name, this.id});

	HomeFeedFilterWord.fromJson(Map<String, dynamic> json) {
		isSelected = json['is_selected'];
		name = json['name'];
		id = json['id'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['is_selected'] = this.isSelected;
		data['name'] = this.name;
		data['id'] = this.id;
		return data;
	}
}

class HomeFeedMiddleImage {
	List<HomeFeedMiddleImageUrlList> urlList;
	int width;
	String uri;
	String url;
	int height;

	HomeFeedMiddleImage({this.urlList, this.width, this.uri, this.url, this.height});

	HomeFeedMiddleImage.fromJson(Map<String, dynamic> json) {
		if (json['url_list'] != null) {
			urlList = new List<HomeFeedMiddleImageUrlList>();(json['url_list'] as List).forEach((v) { urlList.add(new HomeFeedMiddleImageUrlList.fromJson(v)); });
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

class HomeFeedMiddleImageUrlList {
	String url;

	HomeFeedMiddleImageUrlList({this.url});

	HomeFeedMiddleImageUrlList.fromJson(Map<String, dynamic> json) {
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['url'] = this.url;
		return data;
	}
}

class HomeFeedImageList {
	List<HomeFeedImageListUrlList> urlList;
	int width;
	String uri;
	String url;
	int height;

	HomeFeedImageList({this.urlList, this.width, this.uri, this.url, this.height});

	HomeFeedImageList.fromJson(Map<String, dynamic> json) {
		if (json['url_list'] != null) {
			urlList = new List<HomeFeedImageListUrlList>();(json['url_list'] as List).forEach((v) { urlList.add(new HomeFeedImageListUrlList.fromJson(v)); });
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

class HomeFeedImageListUrlList {
	String url;

	HomeFeedImageListUrlList({this.url});

	HomeFeedImageListUrlList.fromJson(Map<String, dynamic> json) {
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['url'] = this.url;
		return data;
	}
}
