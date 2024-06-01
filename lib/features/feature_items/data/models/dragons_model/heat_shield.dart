class HeatShield {
	String? material;
	double? sizeMeters;
	int? tempDegrees;
	String? devPartner;

	HeatShield({
		this.material, 
		this.sizeMeters, 
		this.tempDegrees, 
		this.devPartner, 
	});

	factory HeatShield.fromJson(Map<String, dynamic> json) => HeatShield(
				material: json['material'] as String?,
				sizeMeters: (json['size_meters'] as num?)?.toDouble(),
				tempDegrees: json['temp_degrees'] as int?,
				devPartner: json['dev_partner'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'material': material,
				'size_meters': sizeMeters,
				'temp_degrees': tempDegrees,
				'dev_partner': devPartner,
			};
}
