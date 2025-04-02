import 'package:flutter/material.dart';
import '../models/zodiac.dart';

// 星座詳細資訊頁面
class ZodiacDetailScreen extends StatelessWidget {
  final Zodiac zodiac;

  const ZodiacDetailScreen({super.key, required this.zodiac});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 設定客製化 AppBar，使用深色背景
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white, // 設定返回鍵的顏色
        ),
        title: Text(zodiac.name, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 40, 50, 75),
          ),
        ),
      ),
      // 主要內容區域，使用漸層背景
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFF5F5F5), Color.fromARGB(255, 40, 50, 75)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        // 使用 SingleChildScrollView 確保內容可捲動
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 星座圖片卡片
              Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    zodiac.imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              // 基本資訊卡片
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '基本資訊',
                        style: Theme.of(
                          context,
                        ).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 40, 50, 75),
                        ),
                      ),
                      const Divider(thickness: 1.5),
                      const SizedBox(height: 8),
                      _buildInfoRow(context, '英文名稱', zodiac.englishName),
                      _buildInfoRow(context, '符號', zodiac.symbol),
                      _buildInfoRow(context, '日期', zodiac.date),
                      _buildInfoRow(context, '四象', zodiac.element),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // 性格特點卡片
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '性格特點',
                        style: Theme.of(
                          context,
                        ).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 40, 50, 75),
                        ),
                      ),
                      const Divider(thickness: 1.5),
                      const SizedBox(height: 8),
                      Text(
                        zodiac.personality,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // 詳細描述卡片
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '詳細描述',
                        style: Theme.of(
                          context,
                        ).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 40, 50, 75),
                        ),
                      ),
                      const Divider(thickness: 1.5),
                      const SizedBox(height: 8),
                      Text(
                        zodiac.description,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// 建立資訊列元件
  /// [label] 為標籤文字
  /// [value] 為對應的值
  Widget _buildInfoRow(BuildContext context, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 80,
            child: Text(
              label,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.grey[700],
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(value, style: Theme.of(context).textTheme.titleMedium),
          ),
        ],
      ),
    );
  }
}
