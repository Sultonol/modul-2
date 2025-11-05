import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

/// Halaman tugas: menampilkan data dari API dalam GridView.builder
class TugasPage2 extends StatefulWidget {
  const TugasPage2({Key? key}) : super(key: key);

  @override
  State<TugasPage2> createState() => _TugasPage2State();
}

class _TugasPage2State extends State<TugasPage2> {
  List<dynamic> dataBerita = [];
  bool isLoading = false;

  // URL API (sama seperti yang kamu pakai)
  final String apiUrl = 'https://jakpost.vercel.app/api/category/business/tech';

  // fallback image jika data tidak punya image
  final String defaultImage =
      'https://cdn.pixabay.com/photo/2018/03/17/20/51/white-buildings-3235135_340.jpg';

  @override
  void initState() {
    super.initState();
    _ambilData();
  }

  Future<void> _ambilData() async {
    setState(() => isLoading = true);
    try {
      final response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        final decoded = jsonDecode(response.body);
        // pastikan 'posts' memang list
        final posts = decoded['posts'];
        if (posts is List) {
          setState(() {
            dataBerita = posts;
          });
        } else {
          // jika struktur beda, kosongkan dan tampilkan pesan singkat (log)
          debugPrint('Format respons tidak mengandung list di key "posts"');
          setState(() => dataBerita = []);
        }
      } else {
        throw Exception('Gagal load data: ${response.statusCode}');
      }
    } catch (e) {
      debugPrint('Error saat _ambilData: $e');
      // tampilkan SnackBar agar user tahu
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Kesalahan: $e')));
      }
    } finally {
      setState(() => isLoading = false);
    }
  }

  Future<void> _refresh() async => await _ambilData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo GridView.builder'),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: isLoading && dataBerita.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : dataBerita.isEmpty
            ? RefreshIndicator(
                onRefresh: _refresh,
                child: ListView(
                  children: const [
                    SizedBox(height: 180),
                    Center(child: Text('Tidak ada data. Tarik untuk refresh.')),
                  ],
                ),
              )
            : RefreshIndicator(
                onRefresh: _refresh,
                child: GridView.builder(
                  itemCount: dataBerita.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 1.25,
                  ),
                  itemBuilder: (context, index) {
                    final item = dataBerita[index];
                    // beberapa API menaruh struktur berbeda -> amanin dengan cast
                    final Map<String, dynamic> mapItem = (item is Map)
                        ? Map<String, dynamic>.from(item as Map)
                        : <String, dynamic>{};

                    final title = mapItem['title'] ?? 'Tanpa judul';
                    final rawImage = mapItem['image'] ?? mapItem['img'] ?? '';
                    final imageUrl = (rawImage is String && rawImage.isNotEmpty)
                        ? rawImage
                        : defaultImage;

                    return ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: GridTile(
                        footer: SizedBox(
                          height: 65,
                          child: GridTileBar(
                            backgroundColor: Colors.black26.withAlpha(175),
                            title: Text(
                              title,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                        child: Image.network(
                          imageUrl,
                          fit: BoxFit.cover,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Center(
                              child: CircularProgressIndicator(
                                value:
                                    loadingProgress.expectedTotalBytes != null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                          (loadingProgress.expectedTotalBytes ??
                                              1)
                                    : null,
                              ),
                            );
                          },
                          errorBuilder: (context, error, stackTrace) {
                            // jika image gagal load, tampilkan fallback
                            return Image.network(
                              defaultImage,
                              fit: BoxFit.cover,
                            );
                          },
                        ),
                      ),
                    );
                  },
                ),
              ),
      ),
    );
  }
}
