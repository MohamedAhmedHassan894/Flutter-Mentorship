import 'diameter.dart';
import 'heat_shield.dart';
import 'height_w_trunk.dart';
import 'launch_payload_mass.dart';
import 'launch_payload_vol.dart';
import 'pressurized_capsule.dart';
import 'return_payload_mass.dart';
import 'return_payload_vol.dart';
import 'thruster.dart';
import 'trunk.dart';

class DragonModel {
	HeatShield? heatShield;
	LaunchPayloadMass? launchPayloadMass;
	LaunchPayloadVol? launchPayloadVol;
	ReturnPayloadMass? returnPayloadMass;
	ReturnPayloadVol? returnPayloadVol;
	PressurizedCapsule? pressurizedCapsule;
	Trunk? trunk;
	HeightWTrunk? heightWTrunk;
	Diameter? diameter;
	String? firstFlight;
	List<String>? flickrImages;
	String? name;
	String? type;
	bool? active;
	int? crewCapacity;
	int? sidewallAngleDeg;
	int? orbitDurationYr;
	int? dryMassKg;
	int? dryMassLb;
	List<Thruster>? thrusters;
	String? wikipedia;
	String? description;
	String? id;

	DragonModel({
		this.heatShield, 
		this.launchPayloadMass, 
		this.launchPayloadVol, 
		this.returnPayloadMass, 
		this.returnPayloadVol, 
		this.pressurizedCapsule, 
		this.trunk, 
		this.heightWTrunk, 
		this.diameter, 
		this.firstFlight, 
		this.flickrImages, 
		this.name, 
		this.type, 
		this.active, 
		this.crewCapacity, 
		this.sidewallAngleDeg, 
		this.orbitDurationYr, 
		this.dryMassKg, 
		this.dryMassLb, 
		this.thrusters, 
		this.wikipedia, 
		this.description, 
		this.id, 
	});

	factory DragonModel.fromJson(Map<String, dynamic> json) => DragonModel(
				heatShield: json['heat_shield'] == null
						? null
						: HeatShield.fromJson(json['heat_shield'] as Map<String, dynamic>),
				launchPayloadMass: json['launch_payload_mass'] == null
						? null
						: LaunchPayloadMass.fromJson(json['launch_payload_mass'] as Map<String, dynamic>),
				launchPayloadVol: json['launch_payload_vol'] == null
						? null
						: LaunchPayloadVol.fromJson(json['launch_payload_vol'] as Map<String, dynamic>),
				returnPayloadMass: json['return_payload_mass'] == null
						? null
						: ReturnPayloadMass.fromJson(json['return_payload_mass'] as Map<String, dynamic>),
				returnPayloadVol: json['return_payload_vol'] == null
						? null
						: ReturnPayloadVol.fromJson(json['return_payload_vol'] as Map<String, dynamic>),
				pressurizedCapsule: json['pressurized_capsule'] == null
						? null
						: PressurizedCapsule.fromJson(json['pressurized_capsule'] as Map<String, dynamic>),
				trunk: json['trunk'] == null
						? null
						: Trunk.fromJson(json['trunk'] as Map<String, dynamic>),
				heightWTrunk: json['height_w_trunk'] == null
						? null
						: HeightWTrunk.fromJson(json['height_w_trunk'] as Map<String, dynamic>),
				diameter: json['diameter'] == null
						? null
						: Diameter.fromJson(json['diameter'] as Map<String, dynamic>),
				firstFlight: json['first_flight'] as String?,
				flickrImages: json['flickr_images'] as List<String>?,
				name: json['name'] as String?,
				type: json['type'] as String?,
				active: json['active'] as bool?,
				crewCapacity: json['crew_capacity'] as int?,
				sidewallAngleDeg: json['sidewall_angle_deg'] as int?,
				orbitDurationYr: json['orbit_duration_yr'] as int?,
				dryMassKg: json['dry_mass_kg'] as int?,
				dryMassLb: json['dry_mass_lb'] as int?,
				thrusters: (json['thrusters'] as List<dynamic>?)
						?.map((e) => Thruster.fromJson(e as Map<String, dynamic>))
						.toList(),
				wikipedia: json['wikipedia'] as String?,
				description: json['description'] as String?,
				id: json['id'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'heat_shield': heatShield?.toJson(),
				'launch_payload_mass': launchPayloadMass?.toJson(),
				'launch_payload_vol': launchPayloadVol?.toJson(),
				'return_payload_mass': returnPayloadMass?.toJson(),
				'return_payload_vol': returnPayloadVol?.toJson(),
				'pressurized_capsule': pressurizedCapsule?.toJson(),
				'trunk': trunk?.toJson(),
				'height_w_trunk': heightWTrunk?.toJson(),
				'diameter': diameter?.toJson(),
				'first_flight': firstFlight,
				'flickr_images': flickrImages,
				'name': name,
				'type': type,
				'active': active,
				'crew_capacity': crewCapacity,
				'sidewall_angle_deg': sidewallAngleDeg,
				'orbit_duration_yr': orbitDurationYr,
				'dry_mass_kg': dryMassKg,
				'dry_mass_lb': dryMassLb,
				'thrusters': thrusters?.map((e) => e.toJson()).toList(),
				'wikipedia': wikipedia,
				'description': description,
				'id': id,
			};
}
