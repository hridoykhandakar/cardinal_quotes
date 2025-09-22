final String baseUrl = "assets/images/sidebar";

class SidebarListData {
  final String title;
  final String icon;
  final Function()? onTap;

  SidebarListData({required this.title, required this.icon, this.onTap});
}

final List<SidebarListData> sidebarListData = [
  SidebarListData(title: "Explore", icon: "$baseUrl/explore.svg"),
  SidebarListData(title: "Popular", icon: "$baseUrl/popular.svg"),
  SidebarListData(title: "Latest", icon: "$baseUrl/latest.svg"),
  SidebarListData(title: "Cardinal Sound", icon: "$baseUrl/cardinal_sound.svg"),
  SidebarListData(title: "Wallpapers", icon: "$baseUrl/wallpaper.svg"),
  SidebarListData(title: "Natural Sound", icon: "$baseUrl/natural_sound.svg"),
  SidebarListData(title: "Sleeping", icon: "$baseUrl/sleeping.svg"),
  SidebarListData(title: "Meditation", icon: "$baseUrl/meditation.svg"),
  SidebarListData(
    title: "Breathing Exercise",
    icon: "$baseUrl/breathing_exercise.svg",
  ),
  SidebarListData(
    title: "Meditation Audios",
    icon: "$baseUrl/meditational_audios.svg",
  ),
  SidebarListData(
    title: "Short Meditation",
    icon: "$baseUrl/short_meditation.svg",
  ),
  SidebarListData(title: "Top Quotes", icon: "$baseUrl/top_quotes.svg"),
  SidebarListData(title: "Soul Check-In", icon: "$baseUrl/soul_check_in.svg"),
  SidebarListData(
    title: "Sacred Journals",
    icon: "$baseUrl/sacred_journals.svg",
  ),
  SidebarListData(title: "Medicine Notes", icon: "$baseUrl/medicine_note.svg"),
  SidebarListData(title: "Memorial Cards", icon: "$baseUrl/memorial_card.svg"),
  SidebarListData(title: "Save", icon: "$baseUrl/save.svg"),
];
