class Mass {
	int? kg;
	int? lb;

	Mass({this.kg, this.lb});

	factory Mass.fromJson(Map<String, dynamic> json) => Mass(
				kg: json['kg'] as int?,
				lb: json['lb'] as int?,
			);

	Map<String, dynamic> toJson() => {
				'kg': kg,
				'lb': lb,
			};
}
