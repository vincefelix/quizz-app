import 'package:flutter/material.dart';
import 'quiz_screen.dart';
import '../models/category.dart';
import '../models/question.dart';

class CategoriesScreen extends StatelessWidget {
  final List<Category> categories = [
    Category(
      'History',
      'lib/assets/images/history.png',
      [
        Question(
            "Mungo Park est l'un des premiers explorateurs européens à avoir exploré l'Afrique de l'Ouest.",
            'lib/assets/images/history.png',
            true), // Mungo Park a exploré le fleuve Niger.
        Question(
            "Le royaume du Mali était connu pour sa richesse en or et son célèbre dirigeant, Mansa Moussa.",
            'lib/assets/images/mali_empire.png',
            true), // Mansa Moussa est connu comme l'un des hommes les plus riches de l'histoire.
        Question(
            "L'empire du Mali incluait autrefois une partie du Sénégal.",
            'lib/assets/images/history.png',
            true), // De célèbres résistants comme Lat Dior et El Hadj Omar Tall ont lutté contre la colonisation.
        Question(
            "Le royaume du Ghana est le plus ancien des grands royaumes de l'Afrique de l'Ouest.",
            'lib/assets/images/ghana_empire.png',
            true), // Il a prospéré entre le 4ᵉ et le 13ᵉ siècle.
        Question(
            "Le fleuve Sénégal était une route commerciale importante pour les explorateurs et les commerçants.",
            'lib/assets/images/senegal_river.png',
            true), // Il servait à transporter des marchandises comme l'or et les esclaves.
        Question(
            "Lat Dior Ngoné Latyr Diop, né en 1842 à Derklé",
            'lib/assets/images/lat_dior.png',
            true), // Lat Dior est une figure historique majeure au Sénégal.
        Question(
            "L’empire Songhaï a prospéré grâce à son contrôle du commerce transsaharien.",
            'lib/assets/images/songhai_empire.png',
            true), // L'empire Songhaï était un centre économique et culturel.
        Question(
            "L'île de Gorée, au Sénégal, était un centre d'éducation durant la colonisation.",
            'lib/assets/images/goree.png',
            false), // L'île de Gorée est tristement célèbre pour son rôle dans la traite négrière.
        Question(
            "Samory Touré était un résistant célèbre en Afrique de l'Ouest contre la colonisation française.",
            'lib/assets/images/history.png',
            true), // Samory Touré a combattu les forces françaises pendant plusieurs années.
        Question(
            "Le Sénégal avait trois grands royaumes : le Tekrour, le Djolof et le Waalo.",
            'lib/assets/images/senegal_kingdoms.png',
            true), // Ce sont les royaumes les plus connus de l'histoire sénégalaise.
      ],
    ),
    Category(
      'Math',
      'lib/assets/images/math.png',
      [
        Question(
            "Le théorème de Pythagore affirme que dans un triangle rectangle, le carré de l'hypoténuse est égal à la somme des carrés des deux autres côtés.",
            'lib/assets/images/math.png',
            true), // C'est l'énoncé du théorème de Pythagore.
        Question(
            "Le théorème de Thalès concerne les triangles rectangles uniquement.",
            'lib/assets/images/math.png',
            false), // Il s'applique à toute configuration avec des parallèles et une sécante.
        Question(
            "Dans un cercle, un angle inscrit qui intercepte un diamètre est un angle droit.",
            'lib/assets/images/math.png',
            true), // C'est une propriété fondamentale des cercles.
        Question(
            "Dans un triangle isocèle, les deux angles à la base sont toujours égaux.",
            'lib/assets/images/math.png',
            true), // C'est une propriété du triangle isocèle.
        Question(
            "Un triangle équilatéral peut avoir un angle obtus.",
            'lib/assets/images/math.png',
            false), // Tous les angles d'un triangle équilatéral sont de 60°.
        Question(
            "La somme des angles d'un triangle est toujours égale à 180°.",
            'lib/assets/images/math.png',
            true), // Une propriété fondamentale des triangles dans la géométrie plane.
        Question(
            "Dans un rectangle, les diagonales sont toujours perpendiculaires.",
            'lib/assets/images/math.png',
            false), // Les diagonales sont égales mais ne sont pas perpendiculaires.
        Question(
            "Le théorème de Thalès peut être utilisé pour démontrer que deux triangles sont semblables.",
            'lib/assets/images/math.png',
            true), // C'est l'une des principales applications du théorème de Thalès.
        Question(
            "La distance entre deux points dans un plan peut être calculée à l'aide de la formule de Pythagore.",
            'lib/assets/images/math.png',
            true), // La distance repose sur l'application du théorème de Pythagore.
        Question(
            "La formule pour la somme des angles d'un polygone à n côtés est (n-2) × 180°.",
            'lib/assets/images/math.png',
            true), // C'est une formule fondamentale en géométrie.
      ],
    ),
    Category(
      'Geography',
      'lib/assets/images/geography.png',
      [
        Question(
            "L'Afrique compte 54 pays reconnus.",
            'lib/assets/images/geography.png',
            true), // L'Afrique compte effectivement 54 pays.
        Question(
            "La capitale du Nigéria est Lagos.",
            'lib/assets/images/geography.png',
            false), // La capitale du Nigéria est Abuja.
        Question(
            "La Mauritanie se trouve à l'est du Sénégal.",
            'lib/assets/images/geography.png',
            false), // La Mauritanie est au nord du Sénégal.
        Question(
            "Le fleuve Nil traverse 11 pays.",
            'lib/assets/images/geography.png',
            true), // Le Nil traverse effectivement 11 pays.
        Question(
            "Le Sahara est le plus grand désert chaud du monde.",
            'lib/assets/images/geography.png',
            true), // Le Sahara est bien le plus grand désert chaud.
        Question(
            "La capitale de l'Afrique du Sud est Johannesburg.",
            'lib/assets/images/geography.png',
            false), // Les capitales de l'Afrique du Sud sont Pretoria, Le Cap et Bloemfontein.
        Question(
            "Le Maroc partage une frontière terrestre avec l'Espagne.",
            'lib/assets/images/geography.png',
            true), // C'est vrai via les enclaves de Ceuta et Melilla.
        Question(
            "Le mont Kilimandjaro se trouve en Tanzanie.",
            'lib/assets/images/geography.png',
            true), // Il est situé en Tanzanie.
        Question(
            "La Guinée équatoriale est le seul pays africain où l'espagnol est une langue officielle.",
            'lib/assets/images/geography.png',
            true), // L'espagnol est une langue officielle en Guinée équatoriale.
        Question(
            "L’Éthiopie est le seul pays africain à n'avoir jamais été colonisé.",
            'lib/assets/images/geography.png',
            false), // Bien que l'Éthiopie ait résisté à la colonisation, elle a été occupée par l'Italie.
      ],
    ),
    Category(
      'Cinema',
      'lib/assets/images/cinema.png',
      [
        Question(
            "Le film Avengers: Endgame est le film ayant généré le plus de revenus au box-office mondial.",
            'lib/assets/images/cinema.png',
            true), // Endgame est effectivement le plus grand succès au box-office.
        Question(
            "Titanic a remporté 11 Oscars lors de la cérémonie des Oscars de 1998.",
            'lib/assets/images/cinema.png',
            true), // Titanic a remporté 11 Oscars, égalant le record.
        Question(
            "Le théâtre sénégalais est principalement influencé par le théâtre grec antique.",
            'lib/assets/images/cinema.png',
            false), // Il est plutôt influencé par les traditions africaines et l'oralité.
        Question(
            "L'anime Solo Leveling est une adaptation directe d'un manga japonais.",
            'lib/assets/images/cinema.png',
            false), // Solo Leveling est basé sur un webtoon coréen.
        Question(
            "Le réalisateur Christopher Nolan est connu pour avoir réalisé la trilogie The Dark Knight.",
            'lib/assets/images/cinema.png',
            true), // Nolan est bien le réalisateur de cette trilogie.
        Question(
            "Le film Parasite est le premier film sud-coréen à avoir remporté l'Oscar du meilleur film.",
            'lib/assets/images/cinema.png',
            true), // Parasite a remporté cet Oscar en 2020.
        Question(
            "Le film Black Panther a été le premier film de super-héros à être nommé pour l'Oscar du meilleur film.",
            'lib/assets/images/cinema.png',
            true), // Black Panther est le premier de ce genre à recevoir cette nomination.
        Question(
            "Le Festival de Cannes est le plus ancien festival de cinéma au monde.",
            'lib/assets/images/cinema.png',
            false), // Le festival le plus ancien est la Mostra de Venise.
        Question(
            "L'anime Attack on Titan (Shingeki no Kyojin) est entièrement terminé.",
            'lib/assets/images/cinema.png',
            false), // L'anime est toujours en cours avec des épisodes à venir.
        Question(
            "Le film Avatar de James Cameron est le film avec la plus longue durée de projection dans les cinémas.",
            'lib/assets/images/cinema.png',
            false), // Ce n'est pas Avatar, mais certains films plus anciens comme Gone with the Wind.
      ],
    ),
    Category(
      'Animaux',
      'lib/assets/images/animal.png',
      [
        Question(
            "Les crocodiles ouvrent toujours leur gueule pour réguler leur température corporelle.",
            'lib/assets/images/animal.png',
            true), // Vrai, les crocodiles gardent leur gueule ouverte pour se refroidir.
        Question(
            "Les éléphants sont les seuls mammifères incapables de sauter.",
            'lib/assets/images/animal.png',
            true), // Vrai, les éléphants ne peuvent pas sauter.
        Question(
            "Les dauphins peuvent se reconnaître dans un miroir.",
            'lib/assets/images/animal.png',
            true), // Vrai, les dauphins possèdent cette capacité d'auto-reconnaissance.
        Question(
            "Les autruches peuvent courir à une vitesse supérieure à celle d'un lion.",
            'lib/assets/images/animal.png',
            true), // Vrai, elles peuvent atteindre jusqu'à 70 km/h, souvent plus rapides que les lions.
        Question(
            "Les chauves-souris dorment la tête en haut lorsqu'elles ne trouvent pas de perchoir.",
            'lib/assets/images/animal.png',
            false), // Faux, les chauves-souris dorment toujours suspendues, même sans perchoir, elles restent accrochées.
        Question(
            "Les kangourous ne peuvent pas reculer à cause de la forme de leur queue.",
            'lib/assets/images/animal.png',
            true), // Vrai, leur queue et leur structure corporelle les empêchent de reculer.
        Question(
            "Le caméléon change de couleur uniquement pour se camoufler.",
            'lib/assets/images/animal.png',
            false), // Faux, il change aussi de couleur pour exprimer des émotions ou se thermoréguler.
        Question(
            "Les abeilles peuvent reconnaître les visages humains.",
            'lib/assets/images/animal.png',
            true), // Vrai, les abeilles peuvent reconnaître des motifs similaires à des visages.
        Question(
            "Les pieuvres ont trois cœurs.",
            'lib/assets/images/animal.png',
            true), // Vrai, elles ont bien trois cœurs.
        Question(
            "Les lions sont les seuls félins qui vivent en groupe.",
            'lib/assets/images/animal.png',
            true), // Vrai, les lions vivent en groupes appelés "prides".
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text('Select a Category'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 3 / 2,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QuizScreen(category: category),
                ),
              );
            },
            child: Card(
              elevation: 5,
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(
                      category.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      category.name,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
