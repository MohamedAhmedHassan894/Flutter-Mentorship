class LaunchPayloadVol {
	int? cubicMeters;
	int? cubicFeet;

	LaunchPayloadVol({this.cubicMeters, this.cubicFeet});

	factory LaunchPayloadVol.fromJson(Map<String, dynamic> json) {
		return LaunchPayloadVol(
			cubicMeters: json['cubic_meters'] as int?,
			cubicFeet: json['cubic_feet'] as int?,
		);
	}



	Map<String, dynamic> toJson() => {
				'cubic_meters': cubicMeters,
				'cubic_feet': cubicFeet,
			};
}
