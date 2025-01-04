//create a symptoms class

class Symptoms {
  final String imgurl;
  final String label;

  Symptoms({
    required this.imgurl,
    required this.label,
  });
}

List<Symptoms> symptom = [
  Symptoms(
    imgurl: './images/neckpain.png',
    label: 'Neck Pain',
  ),
  Symptoms(
    imgurl: './images/tooth.png',
    label: 'Toothache',
  ),
  Symptoms(
    imgurl: './images/bodypain.png',
    label: 'Body Pain',
  ),
  Symptoms(
    imgurl: './images/fracture.png',
    label: 'Broken Hand',
  ),
];
