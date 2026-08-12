import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_theme.dart';
import '../widgets/logout_dialog.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedCategory = 0;
  final List<String> _categories = [
    'Tất cả',
    'Michelin ⭐',
    'Omakase Nhật',
    'Steakhouse',
    'Rượu Vang'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.surfaceContainerLow,
        elevation: 0,
        title: Text(
          'GOURMET GOLD',
          style: GoogleFonts.playfairDisplay(
            color: AppColors.primaryGold,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: AppColors.onSurface),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.logout, color: AppColors.primaryGold),
            onPressed: () async {
              final confirm = await LogoutDialog.show(context);
              if (confirm == true) {
                Navigator.pushReplacementNamed(context, '/login');
              }
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Chào mừng, Doanh Nhân',
              style: GoogleFonts.playfairDisplay(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: AppColors.onSurface,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'Trải nghiệm thực đơn thượng hạng được tuyển chọn',
              style: GoogleFonts.montserrat(
                fontSize: 14,
                color: AppColors.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _categories.length,
                itemBuilder: (context, index) {
                  final isSelected = index == _selectedCategory;
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: ChoiceChip(
                      label: Text(_categories[index]),
                      selected: isSelected,
                      selectedColor: AppColors.primaryGold,
                      backgroundColor: AppColors.surfaceContainer,
                      labelStyle: GoogleFonts.montserrat(
                        color: isSelected ? AppColors.onSecondary : AppColors.onSurface,
                        fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                      ),
                      onSelected: (selected) {
                        setState(() {
                          _selectedCategory = index;
                        });
                      },
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 24),
            Container(
              decoration: BoxDecoration(
                color: AppColors.tertiaryContainer,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: AppColors.primaryGold.withOpacity(0.3)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                    child: Image.asset(
                      'assets/logo.png',
                      height: 180,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          height: 180,
                          color: AppColors.surfaceContainerHigh,
                          child: const Icon(Icons.restaurant, size: 50, color: AppColors.primaryGold),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.star, color: AppColors.primaryGold, size: 18),
                            Icon(Icons.star, color: AppColors.primaryGold, size: 18),
                            Icon(Icons.star, color: AppColors.primaryGold, size: 18),
                            SizedBox(width: 8),
                            Text('Michelin 3 Stars', style: TextStyle(color: AppColors.primaryGold, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "L'Auberge Du Gold - French Fine Dining",
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Thực đơn thử nghiệm mùa thu bởi Bếp Trưởng 3 Sao Michelin Jean-Luc',
                          style: GoogleFonts.montserrat(
                            fontSize: 13,
                            color: AppColors.onSurfaceVariant,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '4,850,000 VNĐ / Khách',
                              style: GoogleFonts.montserrat(
                                color: AppColors.primaryGold,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.primaryGold,
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              ),
                              child: const Text('ĐẶT BÀN NGAY'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}