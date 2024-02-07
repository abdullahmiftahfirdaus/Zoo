import 'package:flutter/material.dart';

class ReptilePage extends StatefulWidget {
  @override
  _ReptilePageState createState() => _ReptilePageState();
}

class _ReptilePageState extends State<ReptilePage> {
  List<Map<String, String>> daftarHewan = [
    {
      'nama': 'BUAYA',
      'deskripsi': 'Buaya adalah reptil bertubuh besar yang hidup di air. Secara ilmiah, buaya meliputi seluruh spesies anggota suku Crocodylidae, termasuk pula buaya sepit (Tomistoma schlegelii).',
      'kategori': 'Reptile',
      'gambar': 'buaya.jpg'
    },
    {
      'nama': 'KURA - KURA PIPI MERAH',
      'deskripsi': 'Kura – Kura Pipi Merah adalah kura-kura semi-aquatic milik keluarga Emydidae. Mereka adalah subspesies dari slider kolam.',
      'kategori': 'Reptile',
      'gambar': 'turtle.jpg'
    },
    {
      'nama': 'SANCA PATOLA',
      'deskripsi': 'Sanca Patola (Morelia amethistina) adalah spesies ular non berbisa, yang dikenal sebagai dari batu kecubung, scrub python atau Sanca di permata lokal, yang ditemukan di Indonesia, Papua Nugini dan Australia.',
      'kategori': 'Reptile',
      'gambar': 'snake.jpg'
    },
    {
      'nama': 'PYTHON RETICULATUS',
      'deskripsi': 'Python reticulatus, juga dikenal sebagai (Asiatic) reticulated python, adalah spesies python yang ditemukan di Asia Tenggara.',
      'kategori': 'Reptile',
      'gambar': 'sanca1.jpg'
    },
    {
      'nama': 'BIAWAK',
      'deskripsi': 'Biawak Salvador (Varanus salvator) merupakan salah satu kadal terbesar di Asia Selatan dan Tenggara.',
      'kategori': 'Reptile',
      'gambar': 'lizard-salvator.jpg'
    },
    {
      'nama': 'KOMODO',
      'deskripsi': 'Komodo adalah spesies kadal besar yang ditemukan di pulau-pulau Indonesia Komodo, Rinca, Flores, Gili Motang, dan Padar.',
      'kategori': 'Reptile',
      'gambar': 'komodo.jpg'
    },
    {
      'nama': 'KING COBRA',
      'deskripsi': 'King Cobra adalah elapid yang sebagian besar ditemukan di hutan dari India sampai Asia Tenggara. Spesies ini adalah ular berbisa terpanjang di dunia, dengan panjang hingga 18,5-18,8 ft (5,6-5,7 m).',
      'kategori': 'Reptile',
      'gambar': 'cobra.jpg'
    },
    {
      'nama': 'KADAL LIDAH BIRU',
      'deskripsi': 'Kadal lidah biru (Tiliqua gigas) adalah kerabat dekat dari kadal biru berlidah yang berasal dari Timur. Mereka dapat ditemukan di pulau New Guinea dan pulau-pulau sekitarnya.',
      'kategori': 'Reptile',
      'gambar': 'kadal.jpg'
    },
    {
      'nama': 'BIAWAK HITAM',
      'deskripsi': 'Black lizard (Varanus beccarii) adalah anggota yang relatif kecil dari keluarga Varanidae, tumbuh panjangnya menjadi sekitar 90-120 cm (35-47 in).',
      'kategori': 'Reptile',
      'gambar': 'biawak hitam.jpg'
    },
    {
      'nama': 'KADAL MALUKU',
      'deskripsi': 'Kadal Maluku (Varanus indicus) adalah anggota dari keluarga kadal monitor dengan distribusi yang besar dari Kepulauan Maluku, untuk Australia dan New Guinea, Kepulauan Solomon, Kepulauan Marshall, Kepulauan Caroline, dan Kepulauan Mariana. Tumbuh dengan panjang 3,5 sampai 4 kaki.',
      'kategori': 'Reptile',
      'gambar': 'biawak maluku.jpg'
    },
  ];

  List<Map<String, String>> hasilPencarian = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reptil'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () async {
              final dipilih = await showSearch<String>(
                context: context,
                delegate: CustomSearchDelegate(daftarHewan),
              );

              if (dipilih != null && dipilih != "") {
              }
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/forest.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: hasilPencarian.length == 0 ? daftarHewan.length : hasilPencarian.length,
          itemBuilder: (BuildContext context, int index) {
            final item = hasilPencarian.length == 0 ? daftarHewan[index] : hasilPencarian[index];
            return Card(
              color: Color(0xff33691E74),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: ClipOval(
                      child: Image.asset(
                        'assets/${item['gambar']}',
                        width: 50.0,
                        height: 50.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(item['nama'] ?? ''),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('Kategori: '),
                            Text(item['kategori'] ?? ''),
                          ],
                        ),
                      ],
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.info),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Informasi ${item['nama']}'),
                              content: Text('Deskripsi: ${item['deskripsi']}'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('OK'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Anda memilih:'),
                            content: Text(item['nama'] ?? ''),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate<String> {
  final List<Map<String, String>> data;

  CustomSearchDelegate(this.data);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
          showSuggestions(context);
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context,"");
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return buildSuggestions(context);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final daftarSaran = query.isEmpty
        ? data
        : data.where((element) => element['nama']!.toLowerCase().contains(query.toLowerCase())).toList();

    return ListView.builder(
      itemCount: daftarSaran.length,
      itemBuilder: (BuildContext context, int index) {
        final saran = daftarSaran[index]['nama'];
        return ListTile(
          title: Text(saran!),
          onTap: () {
            close(context, saran);
          },
        );
      },
    );
  }
}
