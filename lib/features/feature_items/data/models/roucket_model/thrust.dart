class Thrust {
	int? kN;
	int? lbf;

	Thrust({this.kN, this.lbf});

	factory Thrust.fromJson(Map<String, dynamic> json) => Thrust(
				kN: json['kN'] as int?,
				lbf: json['lbf'] as int?,
			);

	Map<String, dynamic> toJson() => {
				'kN': kN,
				'lbf': lbf,
			};
}
