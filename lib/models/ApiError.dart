class ApiError {
  String _error;

  ApiError({required String error}) {
    this._error = error;
  }

  // ignore: unnecessary_getters_setters
  String get error => _error;
  set error(String error) => _error = error;

  ApiError.fromJson(Map<String, dynamic> json) {
    _error = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this._error;
    return data;
  }
}
