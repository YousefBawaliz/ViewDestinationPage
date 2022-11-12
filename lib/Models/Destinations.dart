import 'Site.dart';

// class SiteStorage {
//   final List<sites> _siteData = [
//     sites(
//         siteImage:
//             "https://upload.travelawaits.com/ta/uploads/2021/04/6774bc9a0dad571855fb28138b8a46774bc.jpg",
//         title: "Petra",
//         description:
//             " An inscription written by “Abdomanchos”, indicates that the tomb was to be used for himself and his family, probably in the reign of Malichus II (40- 70 AD)."),
//     sites(
//         siteImage:
//             "https://dannythedigger.com/wp-content/uploads/jerash-tour-scaled-e1619676987568.jpg",
//         title: "jarash",
//         description:
//             " Jerash is a city in Jordan, north of the capital Amman. Inhabited since the Bronze Age, it’s known for the ruins of the walled Greco-Roman settlement of Gerasa just outside the modern city. These include the 2nd-century Hadrian’s Arch, the Corinthian columns of the Temple of Artemis and the huge Forum’s oval colonnade. The Jerash Archaeological Museum displays artifacts excavated from the site"),
//   ];

//   String getSiteTitle({required int index}) {
//     return _siteData[index].title;
//   }

//   String getSiteImage({required int index}) {
//     return _siteData[index].siteImage;
//   }

//   String getSiteDescription({required int index}) {
//     return _siteData[index].description;
//   }

// }

class SiteStorage {
  final Map<String, sites> _mySiteData = {
    'Jarash': sites(
        title: "Jarash",
        siteImage:
            "https://media.tacdn.com/media/attractions-splice-spp-674x446/0b/88/3b/44.jpg"),
    'Aqaba': sites(
        title: "Aqaba",
        siteImage:
            "https://storage.googleapis.com/alghad-media/2021/09/WhatsApp-Image-2021-09-11-at-8.42.02-AM.jpeg"),
    'Dead sea': sites(
        title: "Dead sea",
        siteImage:
            "https://iresizer.devops.arabiaweather.com/resize?url=https://adminassets.devops.arabiaweather.com/sites/default/files/field/image/dead-sea2.jpg&size=850x478&force_jpg=1"),
    'wadi rum': sites(
        title: "wadi rum",
        siteImage:
            "https://media-cdn.tripadvisor.com/media/photo-s/1a/7a/de/0c/wadi-rum-palmera-camp.jpg"),
    'Ajloan': sites(
        title: "Ajloan",
        siteImage:
            "https://www.zamantours.com/wp-content/uploads/2020/05/Region-2_1-900x685-1.jpg"),
    'Im Qays': sites(
        title: "Im Qays",
        siteImage:
            "https://modo3.com/thumbs/fit630x300/197704/1536241454/%D9%85%D8%AF%D9%8A%D9%86%D8%A9_%D8%A3%D9%85_%D9%82%D9%8A%D8%B3.jpg"),
    'Petra': sites(
        title: "Petra",
        siteImage:
            "https://cdn1-m.alittihad.ae/store/archive/image/2020/12/7/c6df0a0a-31d1-4b32-a160-fd40bb49a762.png?width=1300"),
    'Maeein Falls': sites(
        title: "Maeein Falls",
        siteImage: "https://pbs.twimg.com/media/C6zWKOfW0AEuFR9.jpg"),
    'Wadi Mujib': sites(
        title: "Wadi Mujib",
        siteImage:
            "https://click2jordan.com/wp-content/uploads/2020/07/%D9%88%D8%A7%D8%AF%D9%8A-%D8%A7%D9%84%D9%85%D9%88%D8%AC%D8%A8-1.jpg"),
  };

  String getSiteTitle({required String siteName}) {
    return _mySiteData[siteName]!.title;
  }

  String getSiteImage({required String siteName}) {
    return _mySiteData[siteName]!.siteImage;
  }
}
