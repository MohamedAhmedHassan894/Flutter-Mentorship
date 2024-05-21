class Diameter {
	double? meters;
	double? feet;

	Diameter({this.meters, this.feet});

	factory Diameter.fromJson(Map<String, dynamic> json) => Diameter(
				meters: (json['meters'] as num?)?.toDouble(),
				feet: (json['feet'] as num?)?.toDouble(),
			);

	Map<String, dynamic> toJson() => {
				'meters': meters,
				'feet': feet,
			};
}
