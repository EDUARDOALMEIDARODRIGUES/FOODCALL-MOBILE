import 'dart:convert';
import 'package:http/http.dart' as http;

class SearchService {
  static const _baseUrl = 'http://localhost:3000';

  Future<List<String>> buscar(String query) async {
    final url = Uri.parse('$_baseUrl/search?q=${Uri.encodeComponent(query)}');
    final response = await http.get(url);

    if (response.statusCode != 200) {
      throw Exception('Erro na busca: ${response.statusCode}');
    }

    final List data = jsonDecode(response.body);
    return data.map<String>((item) => item['colocacao'] as String).toList();
  }
}