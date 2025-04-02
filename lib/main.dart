import 'package:flutter/material.dart';
import 'models/zodiac.dart';
import 'services/zodiac_service.dart';
import 'screens/zodiac_detail_screen.dart';
// import 'package:flutter/rendering.dart';

void main() {
  //debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '星座',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 40, 50, 75),
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

// 主頁面
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 40, 50, 75),
        appBar: AppBar(
          title: const Text(
            '星座',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          bottom: const TabBar(tabs: [Tab(text: '四象'), Tab(text: '日期')]),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        body: TabBarView(
          children: [_buildGridView(context), _buildListView(context)],
        ),
      ),
    );
  }

  // 使用 ＧridView 顯示星座列表
  Widget _buildGridView(BuildContext context) {
    final zodiacs = ZodiacService.getAllZodiacs();

    // 根據 element 分組
    final grouped = <String, List<Zodiac>>{};
    for (final zodiac in zodiacs) {
      if (grouped.containsKey(zodiac.element)) {
        grouped[zodiac.element]!.add(zodiac);
      } else {
        grouped[zodiac.element] = [zodiac];
      }
    }

    return ListView.builder(
      itemCount: grouped.length,
      itemBuilder: (context, index) {
        final element = grouped.keys.elementAt(index);
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 4),
          padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 分組標題
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0, left: 8.0),
                child: Text(
                  element,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              // 顯示星座卡片
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 120,
                  mainAxisExtent: 160,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: grouped[element]!.length,
                itemBuilder:
                    (context, index) =>
                        _buildZodiacCard(context, grouped[element]![index]),
              ),
              const SizedBox(height: 16),
              // 分隔線
              const Divider(thickness: 2),
            ],
          ),
        );
      },
    );
  }

  Widget _buildListView(BuildContext context) {
    final zodiacs = ZodiacService.getAllZodiacs();
    // 先根據月份排序，摩羯座特別處理
    zodiacs.sort((a, b) {
      if (b.name == '摩羯座') return 1;

      // 其他星座按月份排序
      int monthA = int.parse(a.date.split('/')[0]);
      int monthB = int.parse(b.date.split('/')[0]);
      return monthA.compareTo(monthB);
    });
    
    return ListView.separated(
      itemCount: zodiacs.length,
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder:
          (context, index) => _buildZodiacListTile(context, zodiacs[index]),
    );
  }

  // Card 用於顯示星座的名稱和日期
  Widget _buildZodiacCard(BuildContext context, Zodiac zodiac) {
    return SizedBox(
      width: 120, 
      height: 160, 
      child: Card(
        child: InkWell(
          onTap: () => _navigateToDetail(context, zodiac),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 星座圖片
                Image.asset(zodiac.imageUrl, height: 80),
                const SizedBox(height: 2),
                // 星座名稱和日期
                Text(
                  zodiac.name,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(zodiac.date),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ListTile 用於顯示星座的名稱和日期
  Widget _buildZodiacListTile(BuildContext context, Zodiac zodiac) {
    return ListTile(
      leading: Image.asset(zodiac.imageUrl, height: 50),
      title: Text(
        zodiac.name,
        style: TextStyle(
          fontSize: 22,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        zodiac.date,
        style: TextStyle(
          fontSize: 12,
          color: Colors.white,
          fontStyle: FontStyle.italic,
        ),
      ),
      trailing: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 20),
      onTap: () => _navigateToDetail(context, zodiac),
    );
  }

  // 導航到星座詳細頁面
  void _navigateToDetail(BuildContext context, Zodiac zodiac) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ZodiacDetailScreen(zodiac: zodiac),
      ),
    );
  }
}
