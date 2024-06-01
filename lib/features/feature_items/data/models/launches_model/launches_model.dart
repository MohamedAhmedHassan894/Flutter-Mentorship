import 'core.dart';
import 'failure.dart';
import 'fairings.dart';
import 'links.dart';

class LaunchesModel {
	Fairings? fairings;
	Links? links;
	DateTime? staticFireDateUtc;
	int? staticFireDateUnix;
	bool? net;
	int? window;
	String? rocket;
	bool? success;
	List<Failure>? failures;
	String? details;
	List<dynamic>? crew;
	List<dynamic>? ships;
	List<dynamic>? capsules;
	List<dynamic>? payloads;
	String? launchpad;
	int? flightNumber;
	String? name;
	DateTime? dateUtc;
	int? dateUnix;
	String? dateLocal;
	String? datePrecision;
	bool? upcoming;
	List<Core>? cores;
	bool? autoUpdate;
	bool? tbd;
	dynamic launchLibraryId;
	String? id;

	LaunchesModel({
		this.fairings, 
		this.links, 
		this.staticFireDateUtc, 
		this.staticFireDateUnix, 
		this.net, 
		this.window, 
		this.rocket, 
		this.success, 
		this.failures, 
		this.details, 
		this.crew, 
		this.ships, 
		this.capsules, 
		this.payloads, 
		this.launchpad, 
		this.flightNumber, 
		this.name, 
		this.dateUtc, 
		this.dateUnix, 
		this.dateLocal, 
		this.datePrecision, 
		this.upcoming, 
		this.cores, 
		this.autoUpdate, 
		this.tbd, 
		this.launchLibraryId, 
		this.id, 
	});

	factory LaunchesModel.fromJson(Map<String, dynamic> json) => LaunchesModel(
				fairings: json['fairings'] == null
						? null
						: Fairings.fromJson(json['fairings'] as Map<String, dynamic>),
				links: json['links'] == null
						? null
						: Links.fromJson(json['links'] as Map<String, dynamic>),
				staticFireDateUtc: json['static_fire_date_utc'] == null
						? null
						: DateTime.parse(json['static_fire_date_utc'] as String),
				staticFireDateUnix: json['static_fire_date_unix'] as int?,
				net: json['net'] as bool?,
				window: json['window'] as int?,
				rocket: json['rocket'] as String?,
				success: json['success'] as bool?,
				failures: (json['failures'] as List<dynamic>?)
						?.map((e) => Failure.fromJson(e as Map<String, dynamic>))
						.toList(),
				details: json['details'] as String?,
				crew: json['crew'] as List<dynamic>?,
				ships: json['ships'] as List<dynamic>?,
				capsules: json['capsules'] as List<dynamic>?,
				payloads: json['payloads'] as List<dynamic>?,
				launchpad: json['launchpad'] as String?,
				flightNumber: json['flight_number'] as int?,
				name: json['name'] as String?,
				dateUtc: json['date_utc'] == null
						? null
						: DateTime.parse(json['date_utc'] as String),
				dateUnix: json['date_unix'] as int?,
				dateLocal: json['date_local'] as String?,
				datePrecision: json['date_precision'] as String?,
				upcoming: json['upcoming'] as bool?,
				cores: (json['cores'] as List<dynamic>?)
						?.map((e) => Core.fromJson(e as Map<String, dynamic>))
						.toList(),
				autoUpdate: json['auto_update'] as bool?,
				tbd: json['tbd'] as bool?,
				launchLibraryId: json['launch_library_id'] as dynamic,
				id: json['id'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'fairings': fairings?.toJson(),
				'links': links?.toJson(),
				'static_fire_date_utc': staticFireDateUtc?.toIso8601String(),
				'static_fire_date_unix': staticFireDateUnix,
				'net': net,
				'window': window,
				'rocket': rocket,
				'success': success,
				'failures': failures?.map((e) => e.toJson()).toList(),
				'details': details,
				'crew': crew,
				'ships': ships,
				'capsules': capsules,
				'payloads': payloads,
				'launchpad': launchpad,
				'flight_number': flightNumber,
				'name': name,
				'date_utc': dateUtc?.toIso8601String(),
				'date_unix': dateUnix,
				'date_local': dateLocal,
				'date_precision': datePrecision,
				'upcoming': upcoming,
				'cores': cores?.map((e) => e.toJson()).toList(),
				'auto_update': autoUpdate,
				'tbd': tbd,
				'launch_library_id': launchLibraryId,
				'id': id,
			};
}
