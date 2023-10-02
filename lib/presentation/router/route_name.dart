mixin RouteName {
  static String getPageName({required String fullPath}) {
    final firstIndex = fullPath.lastIndexOf('/');
    return fullPath.substring(firstIndex + 1);
  }

  static const home = '/home';
  static const settingDetailPage = '$home/settingDetailPage';
  static const detailInfoPage = '$settingDetailPage/detailInfoPage';
}
