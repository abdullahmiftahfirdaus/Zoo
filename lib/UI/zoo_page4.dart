import 'package:flutter/material.dart';

class PiscesPage extends StatefulWidget {
  @override
  _PiscesPageState createState() => _PiscesPageState();
}

class _PiscesPageState extends State<PiscesPage> {
  List<Map<String, String>> daftarHewan = [
    {
      'nama': 'Ikan Badut (Clownfish)',
      'deskripsi': 'Ikan badut dikenal dengan warna cerah dan pola unik pada tubuhnya. Mereka cenderung hidup dalam hubungan simbiosis dengan sea anemones di lingkungan terumbu karang.',
      'kategori': 'Pisces',
      'gambar': 'Ikan Badut.jpg'
    },
    {
      'nama': 'Ikan Hiu Paus (Whale Shark)',
      'deskripsi': 'Hiu paus adalah ikan terbesar di dunia dan memiliki corak bintik-bintik putih khas di tubuhnya. Meskipun ukurannya besar, ikan ini bersifat pemakan plankton dan tidak berbahaya bagi manusia.',
      'kategori': 'Pisces',
      'gambar': 'Ikan Hiu.jpg'
    },
    {
      'nama': 'Ikan Beluga Sturgeon',
      'deskripsi': 'Beluga sturgeon adalah ikan besar yang dikenal karena menghasilkan kaviar beluga yang mahal. Populasi ikan ini telah menurun drastis karena perburuan berlebihan untuk kaviarnya.',
      'kategori': 'Pisces',
      'gambar': 'Ikan Beluga.jpg'
    },
    {
      'nama': 'Ikan Pari (Manta Ray)',
      'deskripsi': 'Ikan pari memiliki bentuk tubuh datar dan seringkali memiliki corak berwarna hitam atau putih di bagian atasnya. Manta ray adalah spesies yang dilindungi karena ancaman dari perburuan dan perangkap.',
      'kategori': 'Pisces',
      'gambar': 'Ikan pari.jpg'
    },
  ];

  List<Map<String, String>> hasilPencarian = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pisces'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () async {
              final dipilih = await showSearch<String>(
                context: context,
                delegate: CustomSearchDelegate(daftarHewan),
              );

              if (dipilih != null && dipilih != "") {
                // Do something when an item is selected from the search
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
