class Reddit {
	dynamic campaign;
	dynamic launch;
	dynamic media;
	dynamic recovery;

	Reddit({this.campaign, this.launch, this.media, this.recovery});

	factory Reddit.fromJson(Map<String, dynamic> json) => Reddit(
				campaign: json['campaign'] as dynamic,
				launch: json['launch'] as dynamic,
				media: json['media'] as dynamic,
				recovery: json['recovery'] as dynamic,
			);

	Map<String, dynamic> toJson() => {
				'campaign': campaign,
				'launch': launch,
				'media': media,
				'recovery': recovery,
			};
}
