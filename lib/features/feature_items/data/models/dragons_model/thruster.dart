import 'thrust.dart';

class Thruster {
	String? type;
	int? amount;
	int? pods;
	String? fuel1;
	String? fuel2;
	int? isp;
	Thrust? thrust;

	Thruster({
		this.type, 
		this.amount, 
		this.pods, 
		this.fuel1, 
		this.fuel2, 
		this.isp, 
		this.thrust, 
	});

	factory Thruster.fromJson(Map<String, dynamic> json) => Thruster(
				type: json['type'] as String?,
				amount: json['amount'] as int?,
				pods: json['pods'] as int?,
				fuel1: json['fuel_1'] as String?,
				fuel2: json['fuel_2'] as String?,
				isp: json['isp'] as int?,
				thrust: json['thrust'] == null
						? null
						: Thrust.fromJson(json['thrust'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toJson() => {
				'type': type,
				'amount': amount,
				'pods': pods,
				'fuel_1': fuel1,
				'fuel_2': fuel2,
				'isp': isp,
				'thrust': thrust?.toJson(),
			};
}
