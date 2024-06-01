import 'payload_volume.dart';

class PressurizedCapsule {
	PayloadVolume? payloadVolume;

	PressurizedCapsule({this.payloadVolume});

	factory PressurizedCapsule.fromJson(Map<String, dynamic> json) {
		return PressurizedCapsule(
			payloadVolume: json['payload_volume'] == null
						? null
						: PayloadVolume.fromJson(json['payload_volume'] as Map<String, dynamic>),
		);
	}



	Map<String, dynamic> toJson() => {
				'payload_volume': payloadVolume?.toJson(),
			};
}
