// 定義 Zodiac 類別
class Zodiac {
  final String name;  // 星座名稱
  final String englishName; // 星座英文名稱
  final String symbol; // 星座符號
  final String date; // 星座日期範圍
  final String element; // 星座元素（火象、土象、風象、水象）
  final String description; // 星座描述
  final String personality; // 星座性格特點
  final String imageUrl; // 星座圖片路徑

  Zodiac({
    required this.name,
    required this.englishName,
    required this.symbol,
    required this.date,
    required this.element,
    required this.description,
    required this.personality,
    required this.imageUrl,
  });
}
