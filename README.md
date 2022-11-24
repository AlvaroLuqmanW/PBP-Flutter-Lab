 # TUGAS 7

 ## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
 > Widget stateless tidak pernah berubah. Icon, IconButton, dan Text adalah contoh widget stateless. 
Widget stateful bersifat dinamis: misalnya, ia dapat mengubah tampilannya sebagai respons terhadap peristiwa yang dipicu oleh interaksi pengguna atau saat menerima data. Checkbox, Radio, Slider, InkWell, Form, dan TextField adalah contoh widget stateful.

 ## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
 > Widget yang saya gunakan berupa statless widget seperti button yang digunakan untuk increment dan decerement counter, serta Text yang digunakan untuk menampilkan
 jika counter tersebut genap atau ganjil.
 
 ## Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
 > setState() akan memberikan informasi kepada framework bahwa terjadi perubahan internal pada object tersebut. Salah satu variabel yang dapat terdampak pada tugas ini 
 adalah contohnya variabel _counter. Variabel ini akan terdampak ketika terjadi perubahan pada angka _counter tersebut.
 
 ## Jelaskan perbedaan antara const dengan final.
 >Const mengharuskan variabel diinisialisasi pada waktu kompilasi; nilainya konstan sehingga pada saat kompilasi variabel const sudah memiliki nilai, sedangkan final tidak mengharuskan variabel tersebut memiliki nilai secara langsung / eksplisit pada waktu kompilasi. Inilah perbedaan utama antara keduanya.
 
 ## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
 > Widget yang digunakan adalah button dan text, dimana kedua widget tersebut merupakan statless widget. setState() digunakan pada object yang mempunyai variabel _counter, karena itulah yang akan diganti pada tugas ini.
 
 # TUGAS 9

 ## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
 > Kia bisa melakukan pengambilan data JSON tanpa membuat model terlebih dahulu. Akan tetapi, tujuan awal dari suatu model adalah agar kita bisa mengkonstruksi suatu objek dengan atribut-atribut tertentu. Dengan demikian, program kita akan menjadi lebih rapih dan akan lebih mudah bagi kita untuk mengakses atrbibut dari suatu objek tersebut.
 
 ## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
 > Widget yang digunakan adalah Stateless dan Stateful widget. Di Flutter, Widget FutureBuilder digunakan untuk membuat widget berdasarkan snapshot interaksi terbaru dengan Future. Future perlu diperoleh lebih awal baik melalui perubahan keadaan atau perubahan ketergantungan. FutureBuilder adalah Widget yang akan membantu kita menjalankan beberapa fungsi asinkronus dan berdasarkan hasil fungsi tersebut, UI kita akan diperbarui.
 
 ## Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
 > Pertama, data JSON diambil melalui website dimana data-data tersebut di simpan. Setelah mendapat response, data tersebut akan di-decode menjadi bentuk JSON. Setelah data di konversi, data tersebut akan diubah menjadi object sesuai model yang ada. Dengan demikian, sebuah object telah dibuat untuk setiap data-data JSON yang ada.
 
 ## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
> Pertama, saya membuat models dengan atribut-atribut yang sesuai dengan mywatchlist. Setelah model dibuat, widget FutureBuilder digunakan untuk menjalankan fungsi konversi response data ke data JSON agar bisa membuat object sesuai model saya. 
