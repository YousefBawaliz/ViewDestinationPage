import 'Site.dart';

class SiteStorage {
  final List<sites> _siteData = [
    sites(
        siteImage:
            "https://upload.travelawaits.com/ta/uploads/2021/04/6774bc9a0dad571855fb28138b8a46774bc.jpg",
        title: "Petra",
        description:
            " An inscription written by “Abdomanchos”, indicates that the tomb was to be used for himself and his family, probably in the reign of Malichus II (40- 70 AD)."),
    sites(
        siteImage:
            "https://dannythedigger.com/wp-content/uploads/jerash-tour-scaled-e1619676987568.jpg",
        title: "jarash",
        description:
            " Jerash is a city in Jordan, north of the capital Amman. Inhabited since the Bronze Age, it’s known for the ruins of the walled Greco-Roman settlement of Gerasa just outside the modern city. These include the 2nd-century Hadrian’s Arch, the Corinthian columns of the Temple of Artemis and the huge Forum’s oval colonnade. The Jerash Archaeological Museum displays artifacts excavated from the site"),
  ];

  String getSiteTitle({required int index}) {
    return _siteData[index].title;
  }

  String getSiteImage({required int index}) {
    return _siteData[index].siteImage;
  }

  String getSiteDescription({required int index}) {
    return _siteData[index].description;
  }
}
