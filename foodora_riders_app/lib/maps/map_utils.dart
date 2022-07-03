import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MapUtils {
  MapUtils._();

  static void lauchMapFromSourceToDestination(
    sourceLat,
    sourceLng,
    destinationLat,
    destinationLng,
  ) async {
    String mapOptions = [
      'saddr=$sourceLat,$sourceLng',
      'daddr=$destinationLat,$destinationLng',
      //'dir_action = $navigate'
    ].join('&');

    final mapUrl = 'https://maps.google.com?$mapOptions';

    await launchUrlString(mapUrl);

    // if (await canLaunchUrlString(mapUrl)) {
    //   await launchUrlString(mapUrl);
    // } else {
    //   throw "Could not launch $mapUrl";
    // }

    //canlaunch is not working don't know the reason so i am not using it and skip the how condition
    // if (await canLaunchUrlString(mapUrl)) {
    //   await launchUrlString(mapUrl);
    // } else {
    //   throw "Could not launch $mapUrl";
    // }
  }
}
