import 'package:flutter/material.dart';

class SynopsisPage extends StatelessWidget {
  const SynopsisPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "Dilan 1945",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: SizedBox(
              width: 500,
              height: 200,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        "Film Dilan 1990 bercerita tentang pertemuan yang dialami oleh dua remaja yang masih sekolah di SMA. Film ini mengangkat sebuah kisah romansa remaja SMA di Bandung yang bernama Dilan dan Milea. Awalnya, Dilan dan Milea bertemu di salah satu SMA di Bandung pada tahun 1990. Saat itu Milea merupakan anak pindahan dari Jakarta. Ketika Milea pergi ke sekolah, ia bertemu dengan teman yang satu sekolahnya. Teman laki-laki itu suka meramal. Teman laki-laki itu mengatakan jika nanti Milea dengan dirinya akan ketemu di kantin sekolah. Melia pun acuh dan tidak terlaku menggubrisnya. Justru Milea merasa terganggu karena selalu menghampirinya setiap hari. Ternyata laki-laki itu bernama Dilan. Dilan mendekati Milea dengan cara yang unik dan berbeda dengan laki-laki lainnya. Bahkan beda dengan Beni, pacar Milea di Jakarta. Hal itu membuat Milea terus memikirkannya. Setelah berkenalan, Milea mulai mengenal keunikan Dilan, pintar, baik hati dan romantis. Berbagai kisah unik pun dialami mereka berdua. Dilan memberikan hadiah berupa cokelat kepada Melia melalui POS. Dilan juga memanggilkan tukang pijat saat Milea jatuh sakit. Pada saat ulang tahun, Dilan memberi kado Milea berupa teka-teki silang (TTS). Di TTS itu Dilan menuliskan Selamat hari lahir Milea, Ini aku persembahkan hadiah untuk kamu. Hanya sebuah TTS, tapi semuanya sudah aku isi, aku cinta kamu, aku tidak ingin kamu jadi pusing karena mengisi TTS ini . Perjalanan hubungan mereka tidak selalu mulus. Pacar Dilan di Jakarta, Beni turut mewarnai perjalanan hubungan mereka berdua. Bahkan guru tes privat Milea, Kang Adi juga menaksir Milea. Bahkan mereka sempat berjalan keluar bareng. Suatu ketika Milea bertemu dengan ibunya Dilan. Ternyata ibunya Dilan orangnya asyik seperti Dilan. Ibunya Dilan senang dengan Milea, kemudian ia mendukung hubungan keduanya untuk jadian. Akhirnya, Dilan dan Milea resmi pacaran. Bahkan Dilan membuat surat resmi yang dilengkapi materai yang isinya seperti teks proklamasi.",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
