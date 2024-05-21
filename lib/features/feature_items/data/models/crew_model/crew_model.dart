class CrewModel {
	String? name;
	String? agency;
	String? image;
	String? wikipedia;
	List<String>? launches;
	String? status;
	String? id;

	CrewModel({
		this.name, 
		this.agency, 
		this.image, 
		this.wikipedia, 
		this.launches, 
		this.status, 
		this.id, 
	});

	factory CrewModel.fromJson(Map<String, dynamic> json) => CrewModel(
				name: json['name'] as String?,
				agency: json['agency'] as String?,
				image: json['image'] as String?,
				wikipedia: json['wikipedia'] as String?,
				launches: json['launches'] as List<String>?,
				status: json['status'] as String?,
				id: json['id'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'name': name,
				'agency': agency,
				'image': image,
				'wikipedia': wikipedia,
				'launches': launches,
				'status': status,
				'id': id,
			};
}
