class LaunchPayloadMass {
	int? kg;
	int? lb;

	LaunchPayloadMass({this.kg, this.lb});

	factory LaunchPayloadMass.fromJson(Map<String, dynamic> json) {
		return LaunchPayloadMass(
			kg: json['kg'] as int?,
			lb: json['lb'] as int?,
		);
	}



	Map<String, dynamic> toJson() => {
				'kg': kg,
				'lb': lb,
			};
}
