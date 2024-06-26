import 'payloads.dart';
import 'thrust.dart';

class SecondStage {
	Thrust? thrust;
	Payloads? payloads;
	bool? reusable;
	int? engines;
	double? fuelAmountTons;
	int? burnTimeSec;

	SecondStage({
		this.thrust, 
		this.payloads, 
		this.reusable, 
		this.engines, 
		this.fuelAmountTons, 
		this.burnTimeSec, 
	});

	factory SecondStage.fromJson(Map<String, dynamic> json) => SecondStage(
				thrust: json['thrust'] == null
						? null
						: Thrust.fromJson(json['thrust'] as Map<String, dynamic>),
				payloads: json['payloads'] == null
						? null
						: Payloads.fromJson(json['payloads'] as Map<String, dynamic>),
				reusable: json['reusable'] as bool?,
				engines: json['engines'] as int?,
				fuelAmountTons: (json['fuel_amount_tons'] as num?)?.toDouble(),
				burnTimeSec: json['burn_time_sec'] as int?,
			);

	Map<String, dynamic> toJson() => {
				'thrust': thrust?.toJson(),
				'payloads': payloads?.toJson(),
				'reusable': reusable,
				'engines': engines,
				'fuel_amount_tons': fuelAmountTons,
				'burn_time_sec': burnTimeSec,
			};
}
