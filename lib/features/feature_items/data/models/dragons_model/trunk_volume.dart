class TrunkVolume {
	int? cubicMeters;
	int? cubicFeet;

	TrunkVolume({this.cubicMeters, this.cubicFeet});

	factory TrunkVolume.fromJson(Map<String, dynamic> json) => TrunkVolume(
				cubicMeters: json['cubic_meters'] as int?,
				cubicFeet: json['cubic_feet'] as int?,
			);

	Map<String, dynamic> toJson() => {
				'cubic_meters': cubicMeters,
				'cubic_feet': cubicFeet,
			};
}
