import '../../../core/database/network/end_points.dart';

class Items{
  static List<String> itemsName = [
    'Rockets',
    'Dragons',
    'Launches',
    'Crew',
    'About Company'
  ];
  static String getTheEndPoint(String inputString) {
    switch (inputString) {
      case 'Rockets':
        return EndPoint.rockets;
      case 'Dragons':
        return EndPoint.dragons;
      case 'Launches':
        return EndPoint.launches;
      case 'Crew':
        return EndPoint.crew;
      case 'About Company':
        return EndPoint.company;
      default:
        return 'The provided string does not match any known options.';
    }
  }
}
