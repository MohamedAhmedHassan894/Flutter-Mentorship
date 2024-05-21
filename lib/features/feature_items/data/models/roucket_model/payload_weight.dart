class PayloadWeight {
	String? id;
	String? name;
	int? kg;
	int? lb;

	PayloadWeight({this.id, this.name, this.kg, this.lb});

	factory PayloadWeight.fromJson(Map<String, dynamic> json) => PayloadWeight(
				id: json['id'] as String?,
				name: json['name'] as String?,
				kg: json['kg'] as int?,
				lb: json['lb'] as int?,
			);

	Map<String, dynamic> toJson() => {
				'id': id,
				'name': name,
				'kg': kg,
				'lb': lb,
			};
}
