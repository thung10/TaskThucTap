class DonationProgram {
  final String imageUrl;
  final String title;
  final String description;

  DonationProgram({
    required this.imageUrl,
    required this.title,
    required this.description,
  });
}

List<DonationProgram> donationPrograms = [
  DonationProgram(
    imageUrl: 'assets/images/login.jpg',
    title: 'Quyên góp sách vở cho các em ở Cao Bằng',
    description: 'Quyên góp sách vở cho các em ở Cao Bằng',
  ),
  DonationProgram(
    imageUrl: 'assets/images/login.jpg',
    title: 'Chương trình 2',
    description: 'Mô tả chi tiết của chương trình 2',
  ),
  DonationProgram(
    imageUrl: 'assets/images/login.jpg',
    title: 'Chương trình 3',
    description: 'Mô tả chi tiết của chương trình 3',
  ),
];
