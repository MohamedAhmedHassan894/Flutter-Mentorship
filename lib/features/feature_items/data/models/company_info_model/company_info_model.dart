import 'headquarters.dart';
import 'links.dart';

class CompanyInfoModel {
	Headquarters? headquarters;
	Links? links;
	String? name;
	String? founder;
	int? founded;
	int? employees;
	int? vehicles;
	int? launchSites;
	int? testSites;
	String? ceo;
	String? cto;
	String? coo;
	String? ctoPropulsion;
	int? valuation;
	String? summary;
	String? id;

	CompanyInfoModel({
		this.headquarters, 
		this.links, 
		this.name, 
		this.founder, 
		this.founded, 
		this.employees, 
		this.vehicles, 
		this.launchSites, 
		this.testSites, 
		this.ceo, 
		this.cto, 
		this.coo, 
		this.ctoPropulsion, 
		this.valuation, 
		this.summary, 
		this.id, 
	});

	factory CompanyInfoModel.fromJson(Map<String, dynamic> json) {
		return CompanyInfoModel(
			headquarters: json['headquarters'] == null
						? null
						: Headquarters.fromJson(json['headquarters'] as Map<String, dynamic>),
			links: json['links'] == null
						? null
						: Links.fromJson(json['links'] as Map<String, dynamic>),
			name: json['name'] as String?,
			founder: json['founder'] as String?,
			founded: json['founded'] as int?,
			employees: json['employees'] as int?,
			vehicles: json['vehicles'] as int?,
			launchSites: json['launch_sites'] as int?,
			testSites: json['test_sites'] as int?,
			ceo: json['ceo'] as String?,
			cto: json['cto'] as String?,
			coo: json['coo'] as String?,
			ctoPropulsion: json['cto_propulsion'] as String?,
			valuation: json['valuation'] as int?,
			summary: json['summary'] as String?,
			id: json['id'] as String?,
		);
	}



	Map<String, dynamic> toJson() => {
				'headquarters': headquarters?.toJson(),
				'links': links?.toJson(),
				'name': name,
				'founder': founder,
				'founded': founded,
				'employees': employees,
				'vehicles': vehicles,
				'launch_sites': launchSites,
				'test_sites': testSites,
				'ceo': ceo,
				'cto': cto,
				'coo': coo,
				'cto_propulsion': ctoPropulsion,
				'valuation': valuation,
				'summary': summary,
				'id': id,
			};
}
