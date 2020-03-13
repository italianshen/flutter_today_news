class WeitoutiaoArticleItemEntity {
	String schema;
	int publishType;
	String thumbUrl;
	int itemId;
	int itemType;
	String imageUrl;
	String itemIdStr;
	String source;
	String title;
	int groupFlags;
	String groupIdStr;
	int groupId;
	int mediaType;
	String publishStatus;

	WeitoutiaoArticleItemEntity({this.schema, this.publishType, this.thumbUrl, this.itemId, this.itemType, this.imageUrl, this.itemIdStr, this.source, this.title, this.groupFlags, this.groupIdStr, this.groupId, this.mediaType, this.publishStatus});

	WeitoutiaoArticleItemEntity.fromJson(Map<String, dynamic> json) {
		schema = json['schema'];
		publishType = json['publish_type'];
		thumbUrl = json['thumb_url'];
		itemId = json['item_id'];
		itemType = json['item_type'];
		imageUrl = json['image_url'];
		itemIdStr = json['item_id_str'];
		source = json['source'];
		title = json['title'];
		groupFlags = json['group_flags'];
		groupIdStr = json['group_id_str'];
		groupId = json['group_id'];
		mediaType = json['media_type'];
		publishStatus = json['publish_status'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['schema'] = this.schema;
		data['publish_type'] = this.publishType;
		data['thumb_url'] = this.thumbUrl;
		data['item_id'] = this.itemId;
		data['item_type'] = this.itemType;
		data['image_url'] = this.imageUrl;
		data['item_id_str'] = this.itemIdStr;
		data['source'] = this.source;
		data['title'] = this.title;
		data['group_flags'] = this.groupFlags;
		data['group_id_str'] = this.groupIdStr;
		data['group_id'] = this.groupId;
		data['media_type'] = this.mediaType;
		data['publish_status'] = this.publishStatus;
		return data;
	}
}
