import 'package:material_ui/material_ui.dart';
import 'package:myportofolio_mobile/widgets/left_drawer.dart';
import 'package:myportofolio_mobile/experience_form.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  final String npm = "2506596331";
  final String nama = "Sayyid Aqil Kusuma";
  final String kelas = "PBP C";

  @override
  Widget build(BuildContext context) {
    final List<ItemHomepage> items = [
      ItemHomepage("Lihat Pengalaman", Icons.folder, Colors.grey, null),
      ItemHomepage("Tambah Pengalaman", Icons.add_circle, Colors.green, (context) => ExperienceFormPage()),
      ItemHomepage("Edit Pengalaman", Icons.edit, Theme.of(context).colorScheme.secondary, null),
      ItemHomepage("Hapus Pengalaman", Icons.delete_forever, Colors.red, null),
      ItemHomepage("Lihat Skill", Icons.folder, Colors.grey, null),
      ItemHomepage("Tambah Skill", Icons.add_circle, Colors.green, null),
      ItemHomepage("Edit Skill", Icons.edit, Theme.of(context).colorScheme.secondary, null),
      ItemHomepage("Hapus Skill", Icons.delete_forever, Colors.red, null),
      ItemHomepage("Logout", Icons.logout, Colors.black, null),
    ];
    // Scaffold menyediakan struktur visual dasar halaman (AppBar, Body, SnackBar).
    return Scaffold(
      // AppBar menampilkan bar bagian atas halaman aplikasi.
      appBar: AppBar(
        title: const Text(
          'MyPortfolio',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      // Body halaman utama yang dapat di-scroll dengan padding di sekelilingnya.
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          // Baris horizontal untuk menampilkan 3 InfoCard secara sejajar.
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InfoCard(title: 'NPM', content: npm),
              InfoCard(title: 'Name', content: nama),
              InfoCard(title: 'Class', content: kelas),
            ],
          ),

          const SizedBox(height: 16.0),

          // Bagian tengah: pesan sambutan dan kisi tombol menu portofolio.
          Center(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: Text(
                    'Selamat datang di MyPortfolio Mobile!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                ),

                // GridView menampilkan kartu tombol dalam tata letak kisi 3 kolom.
                GridView.count(
                  primary: true,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 4,
                  // shrinkWrap agar ukuran kisi menyesuaikan tinggi konten anak.
                  shrinkWrap: true,
                  children: items.map((ItemHomepage item) {
                    return ItemCard(item);
                  }).toList(),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: const LeftDrawer(),
    );
  }
}

class InfoCard extends StatelessWidget {
  // Kartu informasi yang menampilkan judul (title) dan isi (content).
  final String title;
  final String content;

  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      // Memberikan efek bayangan kartu elevasi 2 unit.
      elevation: 2.0,
      child: Container(
        // Menyesuaikan lebar kartu dengan proporsi layar (dibagi 3.5).
        width: MediaQuery.of(context).size.width / 3.5,
        padding: const EdgeInsets.all(16.0),
        // Menyusun teks title dan content secara vertikal.
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(content),
          ],
        ),
      ),
    );
  }
}

class ItemHomepage {
  final String name;
  final IconData icon;
  final Color color;
  final WidgetBuilder? page;

  ItemHomepage(this.name, this.icon, this.color, this.page);
}

class ItemCard extends StatelessWidget {
  final ItemHomepage item;

  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      // Menggunakan warna sekunder dari skema tema aplikasi.
      color: item.color,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        // Aksi ketika kartu ditekan oleh pengguna.
        onTap: () {
          // Menampilkan SnackBar dengan pesan interaktif.
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
            );

            // Navigate ke halaman yang sesuai
            if (item.page != null) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: item.page!
                ),
              );
            }
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}