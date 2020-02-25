class ImageModel{
  int id;
  String url;
  String title;
  String status;
  String species;
  String gender;

  ImageModel(this.id,this.url,this.title,this.status,this.species,this.gender);

  ImageModel.fromJson(Map<String, dynamic> parsedJson){
    id = parsedJson['id'];
    url = parsedJson['image'];
    title = parsedJson['name'];
    status = parsedJson['status'];
    species = parsedJson['species'];
    gender = parsedJson['gender'];
  }

}