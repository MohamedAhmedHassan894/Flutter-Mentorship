import 'cargo.dart';
import 'trunk_volume.dart';

class Trunk {
	TrunkVolume? trunkVolume;
	Cargo? cargo;

	Trunk({this.trunkVolume, this.cargo});

	factory Trunk.fromJson(Map<String, dynamic> json) => Trunk(
				trunkVolume: json['trunk_volume'] == null
						? null
						: TrunkVolume.fromJson(json['trunk_volume'] as Map<String, dynamic>),
				cargo: json['cargo'] == null
						? null
						: Cargo.fromJson(json['cargo'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toJson() => {
				'trunk_volume': trunkVolume?.toJson(),
				'cargo': cargo?.toJson(),
			};
}
