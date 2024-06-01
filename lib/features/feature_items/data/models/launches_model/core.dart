class Core {
	String? core;
	int? flight;
	bool? gridfins;
	bool? legs;
	bool? reused;
	bool? landingAttempt;
	dynamic landingSuccess;
	dynamic landingType;
	dynamic landpad;

	Core({
		this.core, 
		this.flight, 
		this.gridfins, 
		this.legs, 
		this.reused, 
		this.landingAttempt, 
		this.landingSuccess, 
		this.landingType, 
		this.landpad, 
	});

	factory Core.fromJson(Map<String, dynamic> json) => Core(
				core: json['core'] as String?,
				flight: json['flight'] as int?,
				gridfins: json['gridfins'] as bool?,
				legs: json['legs'] as bool?,
				reused: json['reused'] as bool?,
				landingAttempt: json['landing_attempt'] as bool?,
				landingSuccess: json['landing_success'] as dynamic,
				landingType: json['landing_type'] as dynamic,
				landpad: json['landpad'] as dynamic,
			);

	Map<String, dynamic> toJson() => {
				'core': core,
				'flight': flight,
				'gridfins': gridfins,
				'legs': legs,
				'reused': reused,
				'landing_attempt': landingAttempt,
				'landing_success': landingSuccess,
				'landing_type': landingType,
				'landpad': landpad,
			};
}
