 # Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
 > Widget stateless tidak pernah berubah. Icon, IconButton, dan Text adalah contoh widget stateless. 
Widget stateful bersifat dinamis: misalnya, ia dapat mengubah tampilannya sebagai respons terhadap peristiwa yang dipicu oleh interaksi pengguna atau saat menerima data. Checkbox, Radio, Slider, InkWell, Form, dan TextField adalah contoh widget stateful.

 # Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
 > Widget yang saya gunakan berupa statless widget seperti button yang digunakan untuk increment dan decerement counter, serta Text yang digunakan untuk menampilkan
 jika counter tersebut genap atau ganjil.
 
 # Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
 > setState() akan memberikan informasi kepada framework bahwa terjadi perubahan internal pada object tersebut. Salah satu variabel yang dapat terdampak pada tugas ini 
 adalah contohnya variabel _counter. Variabel ini akan terdampak ketika terjadi perubahan pada angka _counter tersebut.
 
 # Jelaskan perbedaan antara const dengan final.
 >Const mengharuskan variabel diinisialisasi pada waktu kompilasi; nilainya konstan sehingga pada saat kompilasi variabel const sudah memiliki nilai, sedangkan final tidak mengharuskan variabel tersebut memiliki nilai secara langsung / eksplisit pada waktu kompilasi. Inilah perbedaan utama antara keduanya.
 
 # Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
 > Widget yang digunakan adalah button dan text, dimana kedua widget tersebut merupakan statless widget. setState() digunakan pada object yang mempunyai variabel _counter, karena itulah yang akan diganti pada tugas ini.
