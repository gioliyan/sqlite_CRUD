class Item {
  int _id;
  String _name;
  int _price;
  int _stock;
  int _kode;

  int get id => this._id;

  get stock => this._stock;

  set stock(int value) => this._stock = value;

  get kode => this._kode;

  set kode(value) => this._kode = value;

  set id(int value) => this._id = value;

  get name => this._name;

  set name(value) => this._name = value;

  get price => this._price;

  set price(value) => this._price = value;

  Item(this._name, this._price, this._stock, this._kode);

  //konstruktor konversi dari map ke item
  Item.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._name = map['name'];
    this._price = map['price'];
    this._stock = map['stock'];
    this._kode = map['kode'];
  }

  //konversi dari item ke map
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['name'] = name;
    map['price'] = price;
    map['stock'] = stock;
    map['kode'] = kode;
    return map;
  }
}
