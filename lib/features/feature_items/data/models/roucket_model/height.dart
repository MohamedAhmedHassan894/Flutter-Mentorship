class Height {
	double? meters;
	num? feet;

	Height({this.meters, this.feet});

	factory Height.fromJson(Map<String, dynamic> json) => Height(
				meters: (json['meters'] as num?)?.toDouble(),
				feet: json['feet'] as num?,
			);

	Map<String, dynamic> toJson() => {
				'meters': meters,
				'feet': feet,
			};
}
