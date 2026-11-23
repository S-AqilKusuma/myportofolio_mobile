Nama : Sayyid Aqil Kusuma

NPM : 2506596331

Kelas : PBP C


### Tugas 7

1.  Mengutip dari dokumentasi resmi Flutter, semua yang ada pada aplikasi *Widget* membentuk sebuah hierarki di mana semua *child Widget* di *nest* di dalam *Widget parent*-nya dan dapat menerima konteks dari *parent*-nya. Hierarki inilah yang disebut *Widget tree*.

2.  Berikut merupakan *Widget* bawaan yang saya gunakan sejauh ini:
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

3.  *MaterialApp* merupakan *Widget* yang dijadikan *root Widget* dari proyek ini. Mengutip dari dokumentasi Flutter API, *MaterialApp* membungkus beberapa *Widget* yang biasanya digunakan aplikasi yang menggunakan *Material Design* yang dibuat oleh Google. Hal ini yang menyebabkan *MaterialApp* sering digunakan sebagai *root* dari aplikasi Flutter.

4.  Mengutip dari dokumentasi Flutter API, *StatelessWidget* merupakan *Widget* yang tidak memerlukan *state* yang dapat diubah. *Widget* ini digunakan ketika bagian dari *UI* yang kita buat tidak bergantung pada selain konfigurasi dari *Widget* itu sendiri dan *build context* dari *parent*-nya. Sementara itu, *StatefulWidget* merupakan *Widget* yang memiliki state yang dapat diubah. Kebalikan dari *StatelessWidget*, *StatefulWidget* sebaiknya digunakan ketika *Widget* yang ingin kita buat perlu menyimpan *state*, misal dari jam internal ataupun *state* sistem.

5.  Mengutip dari dokumentasi Flutter API, *BuildContext* merupakan *Widget* yang digunakan untuk memberikan *build context kepada *child* dari sebuah *Widget*. Objek *BuildContext* dilempar ke *function* dari *WidgetBuilder* seperti *function build* ataupun dijadikan sebagai bagian dari *State.context*.

6.  Mengutip dari dokumentasi Flutter, *hot reload* merupakan konsep di mana *source code* yang diubah langsung di-*inject* saat *runtime*. *Hot reload* tidak menjalankan *main* lagi dan tidak menghilangkan *state* yang ada pada aplikasi yang mana kebalikan dari *hot restart*. Ada beberapa kasus khusus di mana *hot reload* tidak bisa diandalkan:
    - Aplikasi di *kill* oleh sistem,
    - *Compile error*,
    - Perubahan pada *CupertinoTabView builder*,
    - dan beberapa kasus lain yang ada di dokumentasi Flutter.


### AI USAGE

Saya tidak menggunakan AI dalam mengerjakan tugas ini. Saya mengikuti langkah-langkah yang ada di tutorial dan membaca dokumentasi Flutter dan API Flutter.



### Tugas 8

1.  Mengutip dari dokumen tutorial 9, *push()* pada *Navigator* menambahkan *route* ke atas *stack* yang ada pada *Navigator*. *Route* yang ditambahkan ini akan ditampilkan. Mirip dengan *push()*, *pushReplacement()* juga menambahkan *route* ke atas *stack*. Namun, sebelum menambahkan, *route* yang ada di posisi paling atas dikeluarkan terlebih dahulu terlebih dahulu sehingga *route* teratas tergantikan oleh yang baru di-*push*. Sementara itu, *pop()* digunakan untuk mengeluarkan *route* teratas dari *stack*.

    *Method* yang digunakan untuk pindah ke halaman *form* ketika tombol *card* ditekan adalah *push()*. Ketika pengguna memilih opsi *Home* dari *drawer*, *route* baru yang berisi *builder* dari *MyHomePage* akan menggantikan *route* yang ada di atas *stack* dengan menggunakan *pushReplacement()*. Kemudian, halaman utama di-*build* dan ditampilkan.

2.  Ketiga *Widget* tersebut menjaga konsistensi tiap halaman karena selalu muncul dan posisinya tidak diubah.Setiap halaman menampilkan nama halaman sedang ditampilkan melalui *AppBar*, isi utama dari halaman ditampilkan dalam *Scaffold*, dan navigasi dapat dilakukan melalui *Drawer*. Dengan begitu, pengguna tidak bingung dan akan terbiasa dengan *layout* yang ada. Contoh penggunaan warna tema di lebih satu halaman ada pada *AppBar* yang menggunakan warna *primary* dari tema.

3.  *Layout* aplikasi yang demikian berguna untuk memudahkan pengguna. Pengguna dapat melihat nama halaman yang sedang ditampilkan pada *AppBar*, melakukan navigasi melalui *Drawer* yang dapat diakses dengan menekan tombol di kiri atas, dan berinteraksi dengan halaman terkait melalui isi yang ada pada *Scaffold*. *Widget* pengatur jarak seperti *SizedBox* digunakan agar *Widget* anakan tidak ditampilkan terlalu berdempetan dengan yang lain. Sementara itu, *Widget* yang dapat di-*scroll* seperti *ListView* digunakan agar seluruh halaman dapat diakses dari ruang layar yang terbatas.

4.  *GLobalKey* dari *FormState* digunakan agar state dari *form* dapat diakses seperti ketika ingin me-*reset form*. Sementara itu, *validate()* akan melakukan validasi terhadap input dengan menggunakan *validator* yang berisi alur validasi yang digunakan. Validasi dari *front-end* seperti ini dilakukan agar kita tidak perlu meneruskan *request* dengan input yang tidak valid ke *server* sehingga mengurangi beban *request* yang diterima oleh *server*. Validasi yang dilakukan adalah mengecek *field* nama dan deskripsi agar tidak kosong serta mengecek *URL* yang diberikan pengguna.


### AI USAGE

Saya tidak menggunakan AI dalam mengerjakan tugas ini. Saya mengikuti langkah-langkah yang ada di tutorial, membaca dokumentasi Flutter dan API Flutter, mencari referensi dari StackOverflow dan GeeksForGeeks, dan menggunakan *ImagePicker* dan *ImagePickerWidget* yang ada di PubDev.



### Referensi

Flutter API:
-   widgets library: https://api.flutter.dev/flutter/widgets/
-   BuildContext class: https://api.flutter.dev/flutter/widgets/BuildContext-class.html
-   DateTime class: https://api.flutter.dev/flutter/dart-core/DateTime-class.html
-   ListView class: https://api.flutter.dev/flutter/widgets/ListView-class.html
-   MaterialApp class: https://api.flutter.dev/flutter/material/MaterialApp-class.html
-   MaterialPageRoute\<T> class: https://api.flutter.dev/flutter/material/MaterialPageRoute-class.html
-   StatelessWidget class: https://api.flutter.dev/flutter/widgets/StatelessWidget-class.html
-   StatefulWidget class: https://api.flutter.dev/flutter/widgets/StatefulWidget-class.html
-   WidgetBuilder typedef: https://api.flutter.dev/flutter/widgets/WidgetBuilder.html


Flutter Documentation:
-   Hot reload: https://docs.flutter.dev/tools/hot-reload
-   Material Design for Flutter: https://docs.flutter.dev/ui/design/material
-   Widgets: https://docs.flutter.dev/resources/architectural-overview#widgets


PubDev:
-   image_picker: https://pub.dev/packages/image_picker
-   image_picker_widget: https://pub.dev/packages/image_picker_widget


StackOverflow:
-   Image.file is not supported on Flutter Web. How to get image from gallery/camera for the Flutter Web?: https://stackoverflow.com/questions/73402464/image-file-is-not-supported-on-flutter-web-how-to-get-image-from-gallery-camera
-   Is there any way to generate the same key for the "same" widget in Flutter without having any values to be based on: https://stackoverflow.com/questions/74371559/is-there-any-way-to-generate-the-same-key-for-the-same-widget-in-flutter-witho
-   How to remove a widget from tree: https://stackoverflow.com/questions/43778489/how-to-remove-a-widget-from-tree


GeeksForGeeks:
-   Dart - Late Keyword: https://www.geeksforgeeks.org/dart/dart-late-keyword/