import 'dart:math';

class RadiationRepository {
  T? _useRandomEvent<T>(bool useRandomNull, T data) {
    if (!useRandomNull) return data;
    return Random().nextInt(100) % 2 == 0 ? null : data;
  }

  /// getTotalStatistics 방사능 검사 현황 통계 정보 조회
  /// params
  /// - useRandomNull : 랜덤 하게 null 값을 반환하는 기능(널처리를 위한 파라미터 : default 는 사용하지 않는다.)
  /// return 데이터
  /// check_date : 일일현황 날짜
  /// one_day_data : 일일현황 통계 데이터
  /// accumulated_date : 누적현황 날짜
  /// accumulated_data : 누적현황 통계 데이터
  Future<Map<String, dynamic>?> getTotalStatistics(
      {bool useRandomNull = false}) async {
    await Future.delayed(const Duration(milliseconds: 1500));
    return _useRandomEvent<Map<String, dynamic>?>(useRandomNull, {
      'check_date': DateTime.now(),
      'one_day_data': {
        'total_cnt': 64,
        'safety_cnt': 64,
        'bad_cnt': 0,
      },
      'accumulated_date': DateTime(2023),
      'accumulated_data': {
        'total_cnt': 6581,
        'safety_cnt': 6581,
        'bad_cnt': 0,
      }
    });
  }

  /// getSafetyStatePerLocation 지역별 안전현황
  /// params
  /// - useRandomNull : 랜덤 하게 null 값을 반환하는 기능(널처리를 위한 파라미터 : default 는 사용하지 않는다.)
  /// return 데이터
  ///  - location_code : 지역코드
  ///  - location_nm : 지역이름
  ///  - status : 안전 현황
  Future<List<Map<String, dynamic>>?> getSafetyStatePerLocation(
      {bool useRandomNull = false}) async {
    await Future.delayed(const Duration(milliseconds: 1500));
    return _useRandomEvent<List<Map<String, dynamic>>?>(useRandomNull, [
      {'location_code': 'kl_001', 'location_nm': '강원', 'status': 'SAFETY'},
      {'location_code': 'kl_002', 'location_nm': '경기', 'status': 'NEED_CHECK'},
      {'location_code': 'kl_003', 'location_nm': '경남', 'status': 'DANGER'},
      {'location_code': 'kl_004', 'location_nm': '경북', 'status': 'SAFETY'},
      {'location_code': 'kl_005', 'location_nm': '부산', 'status': 'NEED_CHECK'},
      {'location_code': 'kl_006', 'location_nm': '울산', 'status': 'DANGER'},
      {'location_code': 'kl_007', 'location_nm': '인천', 'status': 'SAFETY'},
      {'location_code': 'kl_008', 'location_nm': '전남', 'status': 'NEED_CHECK'},
      {'location_code': 'kl_009', 'location_nm': '전북', 'status': 'DANGER'},
      {'location_code': 'kl_010', 'location_nm': '제주', 'status': 'SAFETY'},
      {'location_code': 'kl_011', 'location_nm': '충남', 'status': 'SAFETY'}
    ]);
  }
}
