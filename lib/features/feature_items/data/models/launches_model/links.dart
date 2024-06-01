import 'flickr.dart';
import 'patch.dart';
import 'reddit.dart';

class Links {
	Patch? patch;
	Reddit? reddit;
	Flickr? flickr;
	dynamic presskit;
	String? webcast;
	String? youtubeId;
	String? article;
	String? wikipedia;

	Links({
		this.patch, 
		this.reddit, 
		this.flickr, 
		this.presskit, 
		this.webcast, 
		this.youtubeId, 
		this.article, 
		this.wikipedia, 
	});

	factory Links.fromJson(Map<String, dynamic> json) => Links(
				patch: json['patch'] == null
						? null
						: Patch.fromJson(json['patch'] as Map<String, dynamic>),
				reddit: json['reddit'] == null
						? null
						: Reddit.fromJson(json['reddit'] as Map<String, dynamic>),
				flickr: json['flickr'] == null
						? null
						: Flickr.fromJson(json['flickr'] as Map<String, dynamic>),
				presskit: json['presskit'] as dynamic,
				webcast: json['webcast'] as String?,
				youtubeId: json['youtube_id'] as String?,
				article: json['article'] as String?,
				wikipedia: json['wikipedia'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'patch': patch?.toJson(),
				'reddit': reddit?.toJson(),
				'flickr': flickr?.toJson(),
				'presskit': presskit,
				'webcast': webcast,
				'youtube_id': youtubeId,
				'article': article,
				'wikipedia': wikipedia,
			};
}
