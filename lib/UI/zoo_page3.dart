import 'package:flutter/material.dart';

class AvesPage extends StatefulWidget {
  @override
  _AvesPageState createState() => _AvesPageState();
}

class _AvesPageState extends State<AvesPage> {
  List<Map<String, String>> daftarHewan = [
    {
      'nama': 'Bayan',
      'deskripsi': 'Merupakan burung paruh bengkok yang cerdas, dapat meniru suara manusia. Jantan dan betina memiliki pola warna bulu sangat berbeda. Bulu sang jantan berwarna hijau, merah di bawah sayap, sisi kiri, dan sisi kanan tubuh yang tertutup oleh bulu sayap. Ekornya panjang berwarna biru. Sedangkan bulu burung betina berwarna merah gelap, dengan warna biru di leher dan dada, serta ekor panjang berwarna merah. Burung ini memiliki paruh pendek dan kuat, ujung bagian atas runcing. Paruh jantan berwarna jingga, betina hitam. Burung betina bertelur 2 butir dengan jarak peneluran 2 – 3 hari lama pengeraman 27 hari. Makanannya biji – bijian. Penyebarannya : Indonesia. Status konservasi menurut IUCN adalah terancam punah (Red list)..',
      'kategori': 'aves',
      'gambar': 'bayan.jpg'
    },
    {
      'nama': 'Cendrawasih',
      'deskripsi': 'Merupakan sejenis burung pengicau berukuran sedang, dengan panjang sekitar 33 cm,  berwarna kuning dan coklat, dan berparuh kuning. Burung jantan dewasa berukuran 72 cm yang termasuk bulu-bulu hiasan berwarna merah darah dengan ujung berwarna putih pada bagian sisi perutnya, betina berukuran lebih kecil dari burung jantan, dengan muka berwarna coklat tua dan tidak punya bulu-bulu hiasan. Burung jantan memikat pasangan dengan ritual tarian yang memamerkan bulu-bulu hiasannya. Makanannya buah – buahan, serangga. Penyebarannya : Indonesia. Status konservasi menurut IUCN adalah Terancam (red list.',
      'kategori': 'aves',
      'gambar': 'cendrawasih.jpg'
    },
    {
      'nama': 'Pelikan',
      'deskripsi': 'Burung undan atau pelikan adalah burung air yang memiliki kantung di bawah paruhnya, dan merupakan bagian dari keluarga burung Pelecanidae.Bersama burung pecuk, pecuk ular, gannet, angsa batu, dan cikalang, mereka membentuk ordo Pelecaniformes. Pelikan modern ditemukan di semua benua kecuali Antartika. Mereka hidup umumnya di wilayah hangat, dan mereka tidak dijumpai di wilayah kutub, laut dalam, kepulauan samudra, dan benua Amerika Selatan.',
      'kategori': 'aves',
      'gambar': 'pelikan.jpg'
    },
    {
      'nama': 'Flamingo',
      'deskripsi': 'Flamingo adalah spesies burung berkaki jenjang yang hidup berkelompok. Mereka berasal dari genus Phoenicopterus dan familia Phoenicopteridae.Burung ini ditemukan di belahan bumi barat dan timur, namun lebih banyak terdapat di belahan timur. Terdapat 4 .',
      'kategori': 'aves',
      'gambar': 'flamingo.jpg'
    },
    {
      'nama': 'elang ikan',
      'deskripsi': 'Elang ikan kepala kelabu (Ichthyophaga ichthyaetus) adalah spesies burung dari keluarga Accipitridae, dari genus Ichtyophaga. Burung ini merupakan jenis burung pemakan ikan yang memiliki habitat di perairan, danau, sungai, rawa di hutan.',
      'kategori': 'aves',
      'gambar': 'elang ikan.jpg'
    },
    {
      'nama': 'Kasuari gelambir tunggal',
      'deskripsi': 'Kasuari Gelambir Tunggal (Casuarius unappendiculatus) juga dikenal sebagai kasuari leher emas, adalah burung tidak bisa terbang yang besar, kekar berasal dari utara Papua. Burung ini adalah anggota dari superorder Paleognatha.',
      'kategori': 'aves',
      'gambar': 'kasuari gelambir tunggal.jpg'
    },
    {
      'nama': 'Nuri coklat',
      'deskripsi': 'Nuri coklat (Chalcopsitta duivenbodei), juga disebut lory Duyvenbode, adalah spesies burung beo dalam keluarga Psittaculidae.Burung indi ditemukan di Papua Barat, Indonesia dan Papua Nugini. Habitat alamnya adalah hutan dataran rendah lembab subtropis atau tropis.',
      'kategori': 'aves',
      'gambar': 'nuri coklat.jpg'
    },
    {
      'nama': 'puyuh mahkota sengayan',
      'deskripsi': 'Puyuh sengayan (Rollulus rouloul) adalah sejenis burung puyuh berukuran kecil, dengan panjang sekitar 25cm, berkaki and kulit sekitar mata berwarna merah.Burung jantan dan betina mudah dibedakan. Jantan dewasa memiliki bulu berwarna biru keunguan mengilap, paruh bawah berwarna merah dan dahi berwarna putih dengan jambul tegak seperti bulu sikat berwarna merah.Betina memiliki kepala dan jambul pendek berwarna abu-abu, sayap kecoklatan dan bulu berwarna hijau. Burung betina berukuran lebih kecil dari burung jantan. Deskripsi: Berbadan gemuk (25cm), berjambul. Jantan : jambul merah padam menyebar khas, betina kepala dan jambul abu-abu, sayap coklat, tubuh hijau..',
      'kategori': 'aves',
      'gambar': 'puyuh mahkota.jpg'
    },
    {
      'nama': 'bangau tongtong',
      'deskripsi': 'Bangau tongtong, (Leptoptilos javanicus) adalah spesies burung dari familia bangau atau Ciconiidae. Tersebar di selatan Asia mulai dari India timur sampai Pulau Jawa.Tingginya sekitar 110-120 cm, berat 5 kg dan rentang sayap 210 cm. Spesies ini adalah yang terkecil dalam genus Leptoptilos. Bagian atas tubuhnya dan sayapnya berwarna hitam, namun perut, kalung leher dan bagian bawah ekor berwarna putih.Kepala dan lehernya botak, dengan bulu kapas putih halus pada mahkota. Paruhnya berwarna pucat, panjang, dan tebal. Burung muda warnanya lebih kusam daripada burung dewasa. Bangau ini, seperti jenis-jenis bangau lainnya, memangsa ikan, kodok, kadal, serangga besar, dan invertebrata lainnya.',
      'kategori': 'aves',
      'gambar': 'bangau tongtong.jpg'
    },
    {
      'nama': 'Beo',
      'deskripsi': 'Beo, mamiang, atau tiong emas (Gracula) adalah sejenis burung anggota suku Sturnidae (jalak dan kerabatnya).Wilayah persebaran alaminya adalah mulai dari Sri Lanka, India, Himalaya, ke timur hingga Filipina, jawa hingga kepulauan sunda kecil. Burung ini dapat ditemukan di dataran rendah hingga dataran tinggi lebih dari 2000m. Karena kemampuannya menirukan bahasa manusia, burung ini menjadi hewan peliharaan populer. Deskripsi: Berukuran besar (30 cm), berwarna hitam berkilau, bercak sayap putih mencolok, pial kuning khas pada sisi kepala..',
      'kategori': 'aves',
      'gambar': 'beo.jpg'
    },
    {
      'nama': 'Merak biru',
      'deskripsi': 'Merak biru (Pavo cristatus) adalah burung besar dan berwarna cerah dari keluarga asli burung dari Asia Selatan, namun diperkenalkan di banyak bagian lain dunia seperti Amerika Serikat, Meksiko, Honduras, Kolombia, Guyana, Suriname, Brazil, Urugua.',
      'kategori': 'aves',
      'gambar': 'merak biru.jpg'
    },
  ];

  List<Map<String, String>> hasilPencarian = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aves'),
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
