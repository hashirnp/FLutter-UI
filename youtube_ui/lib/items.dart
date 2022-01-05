class VideoItems {
  late String thumb, logo, title, name, views, date;

  VideoItems(
      {required this.thumb,
      required this.logo,
      required this.title,
      required this.name,
      required this.views,
      required this.date});
}

List<VideoItems> items = [
  new VideoItems(
      thumb:
          'https://wpimg.pixelied.com/blog/wp-content/uploads/2020/08/28175258/YoutubeThumbnailSize-1-1280x720.jpg',
      logo:
          'https://yt3.ggpht.com/ytc/AKedOLT1CRcPARyvE_pR7TZT_DwM0_3-9TkWI27-HeWbvg=s176-c-k-c0x00ffffff-no-rj',
      title:
          'LIVE NOW PLAYING BEST 100 LIFE HACKS! Smart Parenting Hacks, Crafts & Food Ideas by 5-Minute Crafts',
      name: '5 Minutes Craft',
      views: '110K Viewes',
      date: '1 year ago'),
  new VideoItems(
      thumb:
          'https://i.ytimg.com/vi/z-gMhLsaNCE/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLAsNpaRsQnuN6I632xe0JdRI1g26Q',
      logo:
          'https://yt3.ggpht.com/ytc/AKedOLT1CRcPARyvE_pR7TZT_DwM0_3-9TkWI27-HeWbvg=s88-c-k-c0x00ffffff-no-rj',
      title:
          '15 Miniature Barbie Dreamhouse DIYs || DIY Mini Toilet Paper, TV, and Chair',
      name: '5-Minute Crafts',
      views: '1,275,382 views',
      date: '17 Jul 2020'),
  new VideoItems(
      thumb:
          'https://wpimg.pixelied.com/blog/wp-content/uploads/2020/08/28175258/YoutubeThumbnailSize-1-1280x720.jpg',
      logo:
          'https://yt3.ggpht.com/ytc/AKedOLQUf-7qkRIYePvl6PEwQ__cBGTdOYgR-KEDitHl=s88-c-k-c0x00ffffff-no-rj',
      title: 'SHOPPING with Mr Bean | Funny Episodes | Mr Bean Cartoon World',
      name: 'Mr Bean Cartoon World',
      views: '36,325,386 views',
      date: '11 Jan 2020')
];
