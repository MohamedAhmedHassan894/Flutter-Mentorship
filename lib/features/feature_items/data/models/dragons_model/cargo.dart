class Cargo {
	int? solarArray;
	bool? unpressurizedCargo;

	Cargo({this.solarArray, this.unpressurizedCargo});

	factory Cargo.fromJson(Map<String, dynamic> json) => Cargo(
				solarArray: json['solar_array'] as int?,
				unpressurizedCargo: json['unpressurized_cargo'] as bool?,
			);

	Map<String, dynamic> toJson() => {
				'solar_array': solarArray,
				'unpressurized_cargo': unpressurizedCargo,
			};
}
