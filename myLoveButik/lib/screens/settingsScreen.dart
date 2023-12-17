import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ayarlar'),
      ),
      body: Column(
        children: [
          SettingRow(Icons.person, "Kullanıcı Bilgilerim"),
          Divider(),
          SettingRow(Icons.pin_drop_outlined, "Adres Bilgilerim"),
          Divider(),
          SettingRow(Icons.credit_card, "Kayıtlı Kartlarım"),
          Divider(),
          SettingRow(Icons.mail, "E-Posta Değişikliği"),
          Divider(),
          SettingRow(Icons.lock, "Şifre Değişikliği"),
          Divider(),
          SettingRow(Icons.campaign, "Duyuru Tercihlerim"),
          Divider(),
          SettingRow(Icons.language, "Ülke Değiştir"),
        ],
      ),
    );
  }

  Widget SettingRow(IconData icon, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: 10),
          Text(title, style: TextStyle(fontSize: 17)),
        ],
      ),
    );
  }
}
