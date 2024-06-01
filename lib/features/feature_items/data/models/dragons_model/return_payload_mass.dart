class ReturnPayloadMass {
	int? kg;
	int? lb;

	ReturnPayloadMass({this.kg, this.lb});

	factory ReturnPayloadMass.fromJson(Map<String, dynamic> json) {
		return ReturnPayloadMass(
			kg: json['kg'] as int?,
			lb: json['lb'] as int?,
		);
	}



	Map<String, dynamic> toJson() => {
				'kg': kg,
				'lb': lb,
			};
}
