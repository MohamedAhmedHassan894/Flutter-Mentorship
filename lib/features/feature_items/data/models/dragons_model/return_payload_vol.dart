class ReturnPayloadVol {
	int? cubicMeters;
	int? cubicFeet;

	ReturnPayloadVol({this.cubicMeters, this.cubicFeet});

	factory ReturnPayloadVol.fromJson(Map<String, dynamic> json) {
		return ReturnPayloadVol(
			cubicMeters: json['cubic_meters'] as int?,
			cubicFeet: json['cubic_feet'] as int?,
		);
	}



	Map<String, dynamic> toJson() => {
				'cubic_meters': cubicMeters,
				'cubic_feet': cubicFeet,
			};
}
