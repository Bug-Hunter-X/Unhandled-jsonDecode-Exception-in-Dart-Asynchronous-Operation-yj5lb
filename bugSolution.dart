```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try{
        final jsonData = jsonDecode(response.body);
        // Process jsonData
      } on FormatException catch (e) {
        print('Invalid JSON format: $e');
        rethrow; //Rethrow to handle at higher level
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    rethrow; //Rethrow to handle at higher level
  }
}
```