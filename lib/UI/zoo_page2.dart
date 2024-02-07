import 'package:flutter/material.dart';

class MamaliaPage extends StatefulWidget {
  @override
  _MamaliaPageState createState() => _MamaliaPageState();
}

class _MamaliaPageState extends State<MamaliaPage> {
  List<Map<String, String>> daftarHewan = [
    {
      'nama': 'Singa',
      'deskripsi': 'Singa (Panthera leo) adalah spesies hewan dari keluarga felidae atau jenis kucing.Singa merupakan hewan yang hidup berkelompok. Biasanya terdiri dari seekor jantan dan banyak betina. Kelompok ini menjaga daerah kekuasaannya..',
      'kategori': 'Mamalia',
      'gambar': 'singa.jpg'
    },
    {
      'nama': 'Eland',
      'deskripsi': 'Merupakan mamalia yang tergolong dalam kelompok antelop (hewan berkuku genap) dengan ukuran terbesar. Berat jantan 400 kg – 1 ton dengan tinggi 120 cm, betina 300 kg – 600 kg tinggi 60 cm. Mereka mempunyai kewaspadaan yang tinggi membuat mereka sulit untuk didekati dan diamati, karena tubuhnya yang berat konsekuensinya satwa ini tidak bisa berlari kencang dengan kecepatan 40 km/jam dan mampu melompat hingga ketinggian 3 meter dari posisi berdiri. Masa kebuntingan eland betina 8,5 – 9 bulan dan melahirkan 1 ekor anak. Makanannya rumput atau tumbuhan. Penyebaran Afrika. Status konservasi menurut IUCN adalah beresiko rendah (Least Concern ).',
      'kategori': 'Mamalia',
      'gambar': 'eland.jpg'
    },
    {
      'nama': 'Bekantan',
      'deskripsi': 'Bekantan (Nasalis larvatus) atau monyet berhidung panjang, , adalah arboreal monyet dunia lama coklat kemerahan yang dapat ditemukan di pulau Asia Tenggara, Kalimantan..',
      'kategori': 'Mamalia',
      'gambar': 'bekantan.jpg'
    },
    {
      'nama': 'Harimau sumatra',
      'deskripsi': 'Harimau sumatera (Panthera tigris sumatrae) adalah subspesies harimau yang habitat aslinya di pulau Sumatera. memiliki ciri kulit loreng coklat kekuning-kuningan dengan garis-garis hitam vertikal dari kepala sampai ekor. Tinggi dapat mencapai 60 cm, dengan panjang 250 cm. Merupakan sub spesies Harimau terakhir yang ada di Indonesia',
      'kategori': 'Mamalia',
      'gambar': 'harimau.jpg'
    },
    {
      'nama': 'Beruk',
      'deskripsi': 'Beruk (Macaca nemestrina) dewasa jantan dapat mencapai berat badan sampai 5 – 15 kg. Monyet-monyet ini memiliki warna kekuning-kuningan sampai cokelat dengan punggung berwarna lebih gelap dan lebih terang pada tubuh bagian bawahnya..',
      'kategori': 'Mamalia',
      'gambar': 'beruk.jpg'
    },
    {
      'nama': 'Harimau bengala',
      'deskripsi': 'Harimau benggala (bahasa Latin: Panthera tigris tigris, sebelumnya Panthera tigris bengalensis) adalah subspesies harimau di India, Bangladesh, Nepal, dan Bhutan..',
      'kategori': 'Mamalia',
      'gambar': 'harimau bengala.jpg'
    },
    {
      'nama': 'Kukang',
      'deskripsi': 'Kukang (Nycticebus coucang) atau Kukang Besar adalah primata strepsirrhine dan spesies dari kukang lambat asli berasal dari Indonesia, Malaysia bagian Barat, Thailand bagian Selatan dan juga Singapura..',
      'kategori': 'Mamalia',
      'gambar': 'kukang.jpg'
    },
    {
      'nama': 'monyet kokah',
      'deskripsi': 'Monyet Kokah (Presbytis siamensis) adalah spesies primata dalam keluarga Cercopithecidae.Mereka tersebar di Thailand-Semenanjung Malaya, Kepulauan Riau dan Sumatra. Empat subspesies, siamensis (mencalonkan), Kana, paenulata dan rhionis, diakui di sini, tapi taxonomyis sengketa dan membutuhkan tinjauan, dan sudah termasuk P. natunae sebagai subspesies, atau alternatif keduanya telah dianggap subspesies dari P. femoralis.',
      'kategori': 'Mamalia',
      'gambar': 'monyet.jpg'
    },
    {
      'nama': 'lutung budeng',
      'deskripsi': 'Lutung Budeng (Trachypithecus auratus) adalah monyet Dunia Lama dari subfamili Colobinae. Jenis yang paling banyak adalah yang berwarna hitam glossy dengan nada kecoklatan ke kakinya, sisi, dan “cambang”. Monyet ini ditemukan di pulau Jawa, serta pada beberapa pulau-pulau Indonesia sekitarnya. The auratus kata Latin dalam nama ilmiahnya berarti “emas”, dan mengacu pada varian warna yang kurang umum..',
      'kategori': 'Mamalia',
      'gambar': 'lutung budeng.jpg'
    },
    {
      'nama': 'monyet boti',
      'deskripsi': 'Monyet boti (Macaca tonkeana) adalah spesies primata dalam keluarga Cercopithecidae.Mereka dapat ditemukan Sulawesi tengah dan dekat Kepulauan Togian di Indonesia. Mereka terancam akan kehilangan habitat tinggal. Pertambangan luas di Sulawesi tengah dan di provinsi terdekat Gorontalo diyakini memperburuk masalah hilangnya habitat..',
      'kategori': 'Mamalia',
      'gambar': 'monyet boti.jpg'
    },
  ];

  List<Map<String, String>> hasilPencarian = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mamalia'),
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
