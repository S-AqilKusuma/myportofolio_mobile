Nama : Sayyid Aqil Kusuma

NPM : 2506596331

Kelas : PBP C


### Tugas 7

1. Mengutip dari dokumentasi resmi Flutter, semua yang ada pada aplikasi *Widget* membentuk sebuah hierarki di mana semua *child Widget* di *nest* di dalam *Widget parent*-nya dan dapat menerima konteks dari *parent*-nya. Hierarki inilah yang disebut *Widget tree*.

2. Berikut merupakan *Widget* bawaan yang saya gunakan sejauh ini:
    - *AppBar*            : tampilan *bar* yang ada di atas layar
    - *BorderRadius*      : mengatur radius dari *border Widget*
    - *BuildContext*      : memberikan *build context* kepada anak dari suatu *Widget*
    - *Card*              : tampilan *InfoCard* identitas
    - *Center*            : kontainer mengatur posisi anakannya menjadi di tengah
    - *Color*             : warna dari *Widget*
    - *Colors*            : warna bawaan dari Flutter
    - *ColorScheme*       : skema warna yang digunakan aplikasi
    - *Column*            : *layout* untuk kolom
    - *Container*         : wadah dengan satu anak
    - *EdgeInsets*        : mengatur *padding*
    - *FontWeight*        : mengatur ketebalan teks
    - *GridView*          : *view* yang tampilannya berupa *grid*
    - *Icon*              : ikon dari *Widget*
    - *Icons*             : ikon bawaan Flutter
    - *IconData*          : data dari ikon yang ingin di-*render*
    - *InkWell*           : fungsionalitas tombol dari *ItemCard*
    - *ListView*          : *view* berbentuk daftar yang bisa di-*scroll*
    - *MainAxisAlignment* : mengatur *alignment* (vertikal pada *Column* dan horizontal pada *Row*)
    - *Material*          : wadah dari tombol *ItemCard*
    - *MaterialApp*       : *root Widget* aplikasi
    - *MediaQuery*        : mengambil data *query* dari *build context*
    - *Padding*           : mengatur *padding*
    - *Row*               : *layout* untuk baris
    - *Scaffold*          : struktur visual dasar
    - *ScaffoldMessenger* : memunculkan pesan ketika tombol diklik
    - *SizedBox*          : pemisah antara tampilan *InfoCard* dan *ItemCard*
    - *SnackBar*          : tampilan pesan yang muncul ketika tombol diklik
    - *StatelessWidget*   : *Widget* yang tidak menyimpan *state* sebagai *class* yang di-*inherit*
    - *Text*              : tampilan teks
    - *TextAlign*         : mengatur *alignment* teks
    - *TextStyle*         : mengatur gaya tampilan teks
    - *Theme*             : tema yang digunakan aplikasi
    - *ThemeData*         : data dari tema
    - *Widget*            : *base class* dari semua *Widget*

3. *MaterialApp* merupakan *Widget* yang dijadikan *root Widget* dari proyek ini. Mengutip dari dokumentasi Flutter API, *MaterialApp* membungkus beberapa *Widget* yang biasanya digunakan aplikasi yang menggunakan *Material Design* yang dibuat oleh Google. Hal ini yang menyebabkan *MaterialApp* sering digunakan sebagai *root* dari aplikasi Flutter.

4. Mengutip dari dokumentasi Flutter API, *StatelessWidget* merupakan *Widget* yang tidak memerlukan *state* yang dapat diubah. *Widget* ini digunakan ketika bagian dari *UI* yang kita buat tidak bergantung pada selain konfigurasi dari *Widget* itu sendiri dan *build context* dari *parent*-nya. Sementara itu, *StatefulWidget* merupakan *Widget* yang memiliki state yang dapat diubah. Kebalikan dari *StatelessWidget*, *StatefulWidget* sebaiknya digunakan ketika *Widget* yang ingin kita buat perlu menyimpan *state*, misal dari jam internal ataupun *state* sistem.

5. Mengutip dari dokumentasi Flutter API, *BuildContext* merupakan *Widget* yang digunakan untuk memberikan *build context kepada *child* dari sebuah *Widget*. Objek *BuildContext* dilempar ke *function* dari *WidgetBuilder* seperti *function build* ataupun dijadikan sebagai bagian dari *State.context*.

6. Mengutip dari dokumentasi Flutter, *hot reload* merupakan konsep di mana *source code* yang diubah langsung di-*inject* saat *runtime*. *Hot reload* tidak menjalankan *main* lagi dan tidak menghilangkan *state* yang ada pada aplikasi yang mana kebalikan dari *hot restart*. Ada beberapa kasus khusus di mana *hot reload* tidak bisa diandalkan:
    - Aplikasi di *kill* oleh sistem,
    - *Compile error*,
    - Perubahan pada *CupertinoTabView builder*,
    - dan beberapa kasus lain yang ada di dokumentasi Flutter.


### AI USAGE

Saya tidak menggunakan AI dalam mengerjakan tugas ini. Saya mengikuti langkah-langkah yang ada di tutorial dan membaca dokumentasi Flutter dan API Flutter.



### Referensi

Flutter API:
- widgets library: https://api.flutter.dev/flutter/widgets/
- BuildContext class: https://api.flutter.dev/flutter/widgets/BuildContext-class.html
- ListView class: https://api.flutter.dev/flutter/widgets/ListView-class.html
- MaterialApp class: https://api.flutter.dev/flutter/material/MaterialApp-class.html
- StatelessWidget class: https://api.flutter.dev/flutter/widgets/StatelessWidget-class.html
- StatefulWidget class: https://api.flutter.dev/flutter/widgets/StatefulWidget-class.html


Flutter Documentation:
- Hot reload: https://docs.flutter.dev/tools/hot-reload
- Material Design for Flutter: https://docs.flutter.dev/ui/design/material
- Widgets: https://docs.flutter.dev/resources/architectural-overview#widgets