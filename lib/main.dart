import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Widget utama aplikasi
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nur Anisa - Mini Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
        fontFamily: 'Roboto',
      ),
      home: const PortfolioPage(),
    );
  }
}

// Halaman utama portofolio
class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // navbar atas
      appBar: AppBar(
        title: const Text(
          'Mini Portfolio App',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFFE06B80),
        elevation: 4,
      ),

      // Isi halaman
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Profil
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE06B80),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withValues(alpha: 0.9),
                        blurRadius: 20,
                        offset: const Offset(0, 8),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      // Foto profil
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('assets/profile.png'),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Nur Anisa',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        '23552011171',
                        style: TextStyle(fontSize: 16, color: Colors.white70),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),

                // Tentang Saya
                const Text(
                  'Tentang Saya',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF333333),
                  ),
                ),
                const SizedBox(height: 12),
                _buildWhiteShadowCard(
                  child: const Text(
                    'Halo! Saya Nur Anisa, seorang pengembang aplikasi mobile yang bersemangat dengan pengalaman dalam membangun aplikasi Flutter yang menarik dan fungsional. Saya suka menciptakan solusi inovatif yang memberikan pengalaman pengguna yang luar biasa.',
                    style: TextStyle(
                      fontSize: 15,
                      height: 1.6,
                      color: Color(0xFF666666),
                    ),
                  ),
                ),
                const SizedBox(height: 24),

                // Keahlian
                const Text(
                  'Keahlian',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF333333),
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    // Keahlian Flutter
                    Expanded(
                      child: _buildSkillCard(
                        icon: Icons.phone_android,
                        title: 'Flutter',
                        color: const Color(0xFF02569B),
                      ),
                    ),
                    const SizedBox(width: 12),

                    // Keahlian Dart
                    Expanded(
                      child: _buildSkillCard(
                        icon: Icons.code,
                        title: 'Dart',
                        color: const Color(0xFF0175C2),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),

                //  Portfolio
                const Text(
                  'Portfolio',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF333333),
                  ),
                ),
                const SizedBox(height: 6),
                _buildProjectCard(
                  title: 'To Do Apps',
                  description: 'Aplikasi untuk mengelola daftar tugas harian.',
                  icon: Icons.task_alt,
                  color: const Color(0xFF00BCD4),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Fungsi untuk membuat box putih dengan efek bayangan
  static Widget _buildWhiteShadowCard({required Widget child}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withValues(alpha: 0.9),
            blurRadius: 15,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: child,
    );
  }

  // Fungsi untuk membuat box keahlian
  Widget _buildSkillCard({
    required IconData icon,
    required String title,
    required Color color,
  }) {
    return _buildWhiteShadowCard(
      child: Column(
        children: [
          Icon(icon, size: 40, color: color),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xFF333333),
            ),
          ),
        ],
      ),
    );
  }

  // Fungsi untuk membuat box portofolio
  Widget _buildProjectCard({
    required String title,
    required String description,
    required IconData icon,
    required Color color,
  }) {
    return _buildWhiteShadowCard(
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: Icon(icon, size: 32, color: color),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF333333),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFF666666),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
