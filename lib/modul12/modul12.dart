import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class Modul12Page extends StatefulWidget {
  const Modul12Page({super.key});

  @override
  State<Modul12Page> createState() => _Modul12PageState();
}

class _Modul12PageState extends State<Modul12Page> {
  String? _kecamatan;
  String? _kota;
  bool _isLoading = false;
  String? _errorMessage;

  // Fungsi utama untuk mendapatkan lokasi
  Future<void> _getLocation() async {
    // 1. Set status loading dan reset data
    setState(() {
      _isLoading = true;
      _errorMessage = null;
      _kecamatan = null;
      _kota = null;
    });

    try {
      // 2. Cek apakah layanan lokasi (GPS) aktif
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        // Jika GPS tidak aktif, tampilkan pesan error
        throw Exception('Layanan lokasi tidak aktif. Mohon aktifkan GPS.');
      }

      // 3. Periksa izin akses lokasi
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        // Jika izin belum diberikan, minta izin kepada pengguna
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          throw Exception('Izin lokasi ditolak oleh pengguna.');
        }
      }

      if (permission == LocationPermission.deniedForever) {
        // Jika izin ditolak permanen, beri instruksi
        throw Exception(
            'Izin lokasi ditolak permanen. Anda harus mengubahnya di pengaturan aplikasi.');
      }

      // 4. Ambil posisi perangkat saat ini
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high); // Presisi tinggi

      // 5. Lakukan reverse geocoding
      List<Placemark> placemarks =
          await placemarkFromCoordinates(position.latitude, position.longitude);

      if (placemarks.isNotEmpty) {
        // Ambil data lokasi pertama
        Placemark place = placemarks[0];
        setState(() {
          _kecamatan =
              place.subLocality; // subLocality biasanya kecamatan/kelurahan
          _kota = place
              .subAdministrativeArea; // subAdministrativeArea biasanya kota
        });
      } else {
        // Jika tidak ada data alamat yang ditemukan
        throw Exception('Tidak dapat menemukan informasi alamat.');
      }
    } catch (e) {
      // 6. Tangani error dan tampilkan pesan
      setState(() {
        _errorMessage = e.toString().replaceAll("Exception: ", "");
      });
    } finally {
      // 7. Hentikan status loading
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lokasi Saya (Modul 12)',
          style: GoogleFonts.poppins(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF1A237E),
        elevation: 4.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
              child: Container(
                // [PERBAIKAN]: Kata 'kena' sudah dihapus dari sini
                padding: const EdgeInsets.symmetric(
                    vertical: 32.0, horizontal: 16.0),
                child: _isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : (_errorMessage != null)
                        ? Text(
                            _errorMessage!,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                color: Colors.red, fontSize: 16),
                          )
                        : (_kecamatan == null && _kota == null)
                            ? Text(
                                'Tekan tombol untuk menampilkan lokasi.',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(fontSize: 16),
                              )
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Kelurahan/Kecamatan: $_kecamatan',
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    'Kota: $_kota',
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              // Nonaktifkan tombol saat loading
              onPressed: _isLoading ? null : _getLocation,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1A237E),
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                elevation: 5.0,
              ),
              child: Text(
                'TAMPILKAN LOKASI SAAT INI',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
