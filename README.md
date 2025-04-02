# 星座 App
這是一個使用 Flutter 建立的星座介紹應用程式，主要展示十二星座的詳細資料，並提供直觀的介面與互動功能，讓使用者探索星座資訊。

## 功能
本專案提供以下功能：

- 十二星座完整介紹：包含星座名稱、英文名稱、符號、日期範圍、四象屬性、性格特點與詳細描述。
- 分組與排序展示：
  - 「四象」標籤：按水象、火象、風象、土象分組，使用 GridView 顯示星座卡片。
  - 「日期」標籤：按月份排序星座（特別處理摩羯座），以 ListView 呈現。
- 詳細資訊頁面：點擊星座卡片或列表項可進入詳細頁面，展示圖片與完整介紹。
- 視覺化設計：使用 Material Design，提供現代化且具吸引力的介面。

## 使用技術
- Flutter 與 Dart：用於構建跨平台行動應用。
- Material Design：實現現代化、統一的 UI 設計。
- 狀態管理：透過 StatelessWidget 與服務層分離資料邏輯。
- 本地資源：使用 assets 管理星座圖片與資料。

## 安裝步驟
# 複製專案
```bash
git clone https://github.com/Wzx0110/zodiac_signs.git
```
# 安裝依賴
```bash
cd zodiac_signs
flutter pub get
```
# 執行專案
```bash
flutter run
```

## 專案結構
```text
lib/
├── models/           
│   └── zodiac.dart        # 星座資料模型，定義屬性結構
├── screens/          
│   └── zodiac_detail_screen.dart # 星座詳細資訊頁面
├── services/         
│   └── zodiac_service.dart # 提供星座資料的服務層
└── main.dart              # 程式進入點，包含主頁面與分頁視圖
assets/
└── images/                # 星座圖片資源
```
