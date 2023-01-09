class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    required this.imageUrl,
    required this.title,
    required this.description,
  });
}

final slideList = [
  Slide(
    imageUrl: 'image/image 1.png',
    title: 'Get Loans , Send and Receive Money',
    description:
        'Amet minim mollit non deserunt ullamco est sit alliqua dolor do amet sint. Velit officia consequat duis enium velit mollit',
  ),
  Slide(
    imageUrl: 'image/02.png',
    title: 'Manage Your Money',
    description:
        'Amet minim mollit non deserunt ullamco est sit alliqua dolor do amet sint. Velit officia consequat duis enium velit mollit',
  ),
  Slide(
    imageUrl: 'image/image 2.png',
    title: 'Save Your Money',
    description:
        'Amet minim mollit non deserunt ullamco est sit alliqua dolor do amet sint. Velit officia consequat duis enium velit mollit',
  ),
  Slide(
    imageUrl: 'image/image 3.png',
    title: 'Buy Data and Airtime',
    description:
        'Amet minim mollit non deserunt ullamco est sit alliqua dolor do amet sint. Velit officia consequat duis enium velit mollit',
  ),
];
