class Region{
String region;
int value;

Region(this.value,this.region);

factory Region.fromJson(dynamic json) {
    return Region(json['value'] as int, json['region'] as String);
  }

  @override
  String toString() {
    return '{ ${this.value}, ${this.region} }';
  }
}