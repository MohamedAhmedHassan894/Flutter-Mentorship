class ThrustSeaLevel {
	int? kN;
	int? lbf;

	ThrustSeaLevel({this.kN, this.lbf});

	factory ThrustSeaLevel.fromJson(Map<String, dynamic> json) {
		return ThrustSeaLevel(
			kN: json['kN'] as int?,
			lbf: json['lbf'] as int?,
		);
	}



	Map<String, dynamic> toJson() => {
				'kN': kN,
				'lbf': lbf,
			};
}
