class HeightWTrunk {
	double? meters;
	double? feet;

	HeightWTrunk({this.meters, this.feet});

	factory HeightWTrunk.fromJson(Map<String, dynamic> json) => HeightWTrunk(
				meters: (json['meters'] as num?)?.toDouble(),
				feet: (json['feet'] as num?)?.toDouble(),
			);

	Map<String, dynamic> toJson() => {
				'meters': meters,
				'feet': feet,
			};
}
