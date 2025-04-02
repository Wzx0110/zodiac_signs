import '../models/zodiac.dart';

class ZodiacService {
  static List<Zodiac> getAllZodiacs() {
    return [
      // 水象星座
      Zodiac(
        name: '雙魚座',
        englishName: 'Pisces',
        symbol: '♓',
        date: '2/19-3/20',
        element: '水象星座',
        description: '雙魚座充滿夢幻與直覺，富有同情心與創造力。他們情感細膩，常被藝術與音樂吸引，並且具備豐富的想像力與靈性，雖然有時情緒不穩定，卻也能帶來溫暖與關懷。',
        personality: '浪漫、富同情心、富創造力、直覺強、理想主義',
        imageUrl: 'assets/images/pisces.png',
      ),
      Zodiac(
        name: '巨蟹座',
        englishName: 'Cancer',
        symbol: '♋',
        date: '6/22-7/22',
        element: '水象星座',
        description: '巨蟹座以家庭與情感為重，溫柔而充滿保護慾。他們心思細膩、敏感且富有同情心，總是願意照顧和關心周圍的人，儘管情緒波動時也會顯得脆弱。',
        personality: '敏感、富同情心、重視家庭、保護慾強、重感情',
        imageUrl: 'assets/images/cancer.png',
      ),
      Zodiac(
        name: '天蠍座',
        englishName: 'Scorpio',
        symbol: '♏',
        date: '10/24-11/22',
        element: '水象星座',
        description: '天蠍座神秘而熱情，擁有強烈的意志力和敏銳的洞察力。他們情感深沉且專一，對於真誠和信任有著極高的要求，但有時也會顯露出強烈的佔有慾與嫉妒心。',
        personality: '熱情、堅強、神秘、有洞察力、重感情',
        imageUrl: 'assets/images/scorpio.png',
      ),

      // 火象星座
      Zodiac(
        name: '牡羊座',
        englishName: 'Aries',
        symbol: '♈',
        date: '3/21-4/19',
        element: '火象星座',
        description: '牡羊座充滿活力與熱情，勇於挑戰新事物，總是走在冒險的前端。他們直率且行動迅速，具有強烈的領導才能，儘管有時會顯得衝動與缺乏耐心。',
        personality: '熱情、勇敢、率直、有活力、衝勁十足',
        imageUrl: 'assets/images/aries.png',
      ),
      Zodiac(
        name: '獅子座',
        englishName: 'Leo',
        symbol: '♌',
        date: '7/23-8/22',
        element: '火象星座',
        description: '獅子座天生自信且充滿魅力，喜歡成為眾人注目的焦點。他們慷慨大方、熱情洋溢，具備出色的領導力和創意，但有時候也會顯得過於自我中心，渴望讚美。',
        personality: '自信、慷慨、有領導力、重尊嚴、創意豐富',
        imageUrl: 'assets/images/leo.png',
      ),
      Zodiac(
        name: '射手座',
        englishName: 'Sagittarius',
        symbol: '♐',
        date: '11/23-12/21',
        element: '火象星座',
        description: '射手座熱愛自由與冒險，樂觀且充滿好奇心。他們追求真理與智慧，對未知世界充滿熱情，雖然有時候缺乏細心，但總能帶來無限活力與幽默感。',
        personality: '樂觀、愛自由、富冒險精神、誠實、開放',
        imageUrl: 'assets/images/sagittarius.png',
      ),

      // 風象星座
      Zodiac(
        name: '水瓶座',
        englishName: 'Aquarius',
        symbol: '♒',
        date: '1/20-2/18',
        element: '風象星座',
        description: '水瓶座思想前衛且獨立，擁有強烈的創新精神和人道主義理念。他們喜愛自由與變革，善於思考未來，雖然有時看似冷漠，但內心其實充滿對社會的關懷。',
        personality: '獨特、創新、重自由、人道主義、理性',
        imageUrl: 'assets/images/aquarius.png',
      ),
      Zodiac(
        name: '雙子座',
        englishName: 'Gemini',
        symbol: '♊',
        date: '5/21-6/21',
        element: '風象星座',
        description: '雙子座聰明伶俐、靈活多變，具備出色的溝通能力和好奇心。他們適應力極強，喜歡學習新知識與嘗試新事物，雖然有時顯得善變，但總能帶來豐富的社交樂趣。',
        personality: '聰明、善交際、靈活、好奇心強、多變',
        imageUrl: 'assets/images/gemini.png',
      ),
      Zodiac(
        name: '天秤座',
        englishName: 'Libra',
        symbol: '♎',
        date: '9/23-10/23',
        element: '風象星座',
        description: '天秤座追求和諧與平衡，具有優雅氣質和敏銳的審美觀。他們擅長人際溝通與調解，重視公平與正義，但在做決定時有時會猶豫不決。',
        personality: '優雅、公平、重和諧、善交際、有藝術感',
        imageUrl: 'assets/images/libra.png',
      ),

      // 土象星座
      Zodiac(
        name: '摩羯座',
        englishName: 'Capricorn',
        symbol: '♑',
        date: '12/22-1/19',
        element: '土象星座',
        description: '摩羯座務實且堅韌，擁有強烈的責任感與目標意識。他們注重事業發展與個人成就，務實謹慎，雖然有時顯得保守，但始終努力追求卓越與成功。',
        personality: '務實、有耐心、負責任、重傳統、追求成就',
        imageUrl: 'assets/images/capricorn.png',
      ),
      Zodiac(
        name: '金牛座',
        englishName: 'Taurus',
        symbol: '♉',
        date: '4/20-5/20',
        element: '土象星座',
        description: '金牛座穩重而踏實，喜歡安定與舒適的生活。他們注重物質享受與感官體驗，耐心且固執，追求長期穩定的關係與事業發展，但有時可能過於保守。',
        personality: '穩重、實際、有耐心、重物質、享受生活',
        imageUrl: 'assets/images/taurus.png',
      ),
      Zodiac(
        name: '處女座',
        englishName: 'Virgo',
        symbol: '♍',
        date: '8/23-9/22',
        element: '土象星座',
        description: '處女座以追求完美與細節見稱，務實且謹慎。他們擅長分析與計劃，對品質有極高要求，雖然有時會顯得過於挑剔，但這也使他們在各自領域中成為可靠的夥伴。',
        personality: '完美主義、細心、分析力強、務實、理性',
        imageUrl: 'assets/images/virgo.png',
      ),
    ];
  }

  static List<Zodiac> getZodiacsByElement(String element) {
    return getAllZodiacs()
        .where((zodiac) => zodiac.element == element)
        .toList();
  }
}
