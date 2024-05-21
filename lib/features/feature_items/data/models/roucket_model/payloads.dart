import 'composite_fairing.dart';

class Payloads {
	CompositeFairing? compositeFairing;
	String? option1;

	Payloads({this.compositeFairing, this.option1});

	factory Payloads.fromJson(Map<String, dynamic> json) => Payloads(
				compositeFairing: json['composite_fairing'] == null
						? null
						: CompositeFairing.fromJson(json['composite_fairing'] as Map<String, dynamic>),
				option1: json['option_1'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'composite_fairing': compositeFairing?.toJson(),
				'option_1': option1,
			};
}
