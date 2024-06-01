class PayloadVolume {
	int? cubicMeters;
	int? cubicFeet;

	PayloadVolume({this.cubicMeters, this.cubicFeet});

	factory PayloadVolume.fromJson(Map<String, dynamic> json) => PayloadVolume(
				cubicMeters: json['cubic_meters'] as int?,
				cubicFeet: json['cubic_feet'] as int?,
			);

	Map<String, dynamic> toJson() => {
				'cubic_meters': cubicMeters,
				'cubic_feet': cubicFeet,
			};
}
