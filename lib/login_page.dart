import 'package:flutter/material.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue, // Vurgu rengi beyaz olarak ayarlandı
        textTheme: TextTheme(
          bodyLarge:
              TextStyle(color: Colors.blue), // Ana metin mavi olarak ayarlandı
          bodyMedium: TextStyle(
              color: Colors.white), // Yardımcı metin beyaz olarak ayarlandı
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Kullanıcı Girişi',
              style: TextStyle(
                  color: Colors.white)), // Başlık beyaz renkte ve custom fontta
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  style:
                      TextStyle(color: Colors.blue), // Metin alanı mavi renkte
                  decoration: InputDecoration(
                    labelText: 'Kullanıcı Adı',
                    labelStyle:
                        TextStyle(color: Colors.blue), // Etiket mavi renkte
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors
                              .blue), // Odaklandığında alt çizgi mavi olacak
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                TextField(
                  style:
                      TextStyle(color: Colors.blue), // Metin alanı mavi renkte
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Şifre',
                    labelStyle:
                        TextStyle(color: Colors.blue), // Etiket mavi renkte
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors
                              .blue), // Odaklandığında alt çizgi mavi olacak
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    // Burada giriş işlemi yapılabilir
                    // Örneğin, kullanıcı adı ve şifre kontrolü API ile yapılabilir
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.blue, // Buton rengi mavi olarak ayarlandı
                  ),
                  child: Text('Giriş Yap',
                      style: TextStyle(
                          color: Colors.white)), // Buton metni beyaz renkte
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
