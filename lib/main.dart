import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kanishk Saini',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF090A0F),
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background glow
          Positioned(
            top: -120,
            right: -100,
            child: Container(
              width: 380,
              height: 380,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    Color(0xFF6366F1),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),

          Positioned(
            bottom: -150,
            left: -100,
            child: Container(
              width: 400,
              height: 400,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    Color(0xFF0EA5E9),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),

          // Main glass card
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(28),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 20,
                      sigmaY: 20,
                    ),
                    child: Container(
                      width: 500,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 40,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(28),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.12),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Profile icon
                          Container(
                            padding: const EdgeInsets.all(3),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFF6366F1),
                                  Color(0xFF0EA5E9),
                                ],
                              ),
                            ),
                            child: const CircleAvatar(
                              radius: 45,
                              backgroundColor: Color(0xFF13151E),
                              child: Icon(
                                Icons.person_outline_rounded,
                                size: 46,
                                color: Colors.white,
                              ),
                            ),
                          ),

                          const SizedBox(height: 24),

                          // Name
                          const Text(
                            'Kanishk Saini',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),

                          const SizedBox(height: 8),

                          // Student information
                          const Text(
                            '1st Year MBA Tech (Computer Engineering)\n'
                            'Student at NMIMS',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              height: 1.5,
                              color: Color(0xFF94A3B8),
                            ),
                          ),

                          const SizedBox(height: 20),

                          // Learning status
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 7,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xFF6366F1)
                                  .withOpacity(0.15),
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                color: const Color(0xFF6366F1)
                                    .withOpacity(0.35),
                              ),
                            ),
                            child: const Text(
                              'LEARNING & EXPLORING',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.8,
                                color: Color(0xFF818CF8),
                              ),
                            ),
                          ),

                          const SizedBox(height: 30),

                          const Divider(
                            height: 1,
                            color: Colors.white10,
                          ),

                          const SizedBox(height: 28),

                          // About me
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'ABOUT ME',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1.2,
                                color: Color(0xFF64748B),
                              ),
                            ),
                          ),

                          const SizedBox(height: 14),

                          const Text(
                            "I'm currently starting my software "
                            "engineering journey from scratch. "
                            "I'm focusing on understanding programming "
                            "basics, learning new concepts, and exploring "
                            "web and app development.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 15,
                              height: 1.7,
                              color: Color(0xFFD1D5DB),
                            ),
                          ),

                          const SizedBox(height: 24),

                          // App Development Club
                          _buildInfoCard(
                            icon: Icons.groups_outlined,
                            title: 'App Development Club',
                            subtitle: 'Learning and exploring app development',
                          ),

                          const SizedBox(height: 12),

                          // Flutter Demo Homepage
                          _buildInfoCard(
                            icon: Icons.phone_android_rounded,
                            title: 'Flutter Demo Homepage',
                            subtitle: 'A simple Flutter project I am working on',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Reusable information card
  static Widget _buildInfoCard({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.03),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: Colors.white.withOpacity(0.08),
        ),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xFF818CF8),
            size: 24,
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF94A3B8),
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