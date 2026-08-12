  import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_theme.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Image.asset(
                    'assets/logo.png',
                    height: 80,
                    errorBuilder: (context, error, stackTrace) {
                      return ShaderMask(
                        shaderCallback: (bounds) => const LinearGradient(
                          colors: [AppColors.primaryGold, AppColors.secondaryFixedDim],
                        ).createShader(bounds),
                        child: const Icon(
                          Icons.restaurant,
                          size: 48,
                          color: Colors.white,
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 16),
               
              
                const SizedBox(height: 8),
                Text(
                  'Chào mừng trở lại',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    color: AppColors.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 36),
                Text(
                  'EMAIL',
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: AppColors.onSurface,
                    letterSpacing: 1.0,
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: _emailController,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    hintText: 'Nhập email của bạn',
                    prefixIcon: Icon(Icons.email_outlined),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'MẬT KHẨU',
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: AppColors.onSurface,
                        letterSpacing: 1.0,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Yêu cầu đặt lại mật khẩu đã được gửi')),
                        );
                      },
                      child: Text(
                        'Quên mật khẩu?',
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          color: AppColors.primaryGold,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: _passwordController,
                  obscureText: _obscurePassword,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: '••••••••',
                    prefixIcon: const Icon(Icons.lock_outline),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscurePassword ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                        color: AppColors.outline,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 28),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/home');
                  },
                  child: const Text('LOG IN'),
                ),
                const SizedBox(height: 28),
                Row(
                  children: [
                    const Expanded(child: Divider(color: AppColors.outlineVariant)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'HOẶC',
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          color: AppColors.outline,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const Expanded(child: Divider(color: AppColors.outlineVariant)),
                  ],
                ),
                const SizedBox(height: 24),
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.g_mobiledata, size: 24, color: Colors.white),
                  label: Text(
                    'Tiếp tục với Google',
                    style: GoogleFonts.montserrat(color: Colors.white, fontSize: 14),
                  ),
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    side: const BorderSide(color: AppColors.outlineVariant),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                const SizedBox(height: 12),
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.apple, size: 22, color: Colors.white),
                  label: Text(
                    'Tiếp tục với Apple',
                    style: GoogleFonts.montserrat(color: Colors.white, fontSize: 14),
                  ),
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    side: const BorderSide(color: AppColors.outlineVariant),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                const SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Chưa có tài khoản? ',
                      style: GoogleFonts.montserrat(
                        color: AppColors.onSurfaceVariant,
                        fontSize: 14,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/register');
                      },
                      child: Text(
                        'Đăng ký ngay',
                        style: GoogleFonts.montserrat(
                          color: AppColors.primaryGold,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
