class Diameter {
	double? meters;
	int? feet;

	Diameter({this.meters, this.feet});

	factory Diameter.fromJson(Map<String, dynamic> json) => Diameter(
				meters: (json['meters'] as num?)?.toDouble(),
				feet: json['feet'] as int?,
			);

	Map<String, dynamic> toJson() => {
				'meters': meters,
				'feet': feet,
			};
}
