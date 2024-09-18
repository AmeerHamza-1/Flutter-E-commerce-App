import 'package:clothing_store/utils/pakages_path.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteclr,
      appBar: _buildAppBar(),
      body: Column(
        children: [
          const SizedBox(height: 20),
          _ProfileHeader(),
          const SizedBox(height: 20),
          _ProfileOptionsList(),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text('My Profile'),
      backgroundColor: Colors.grey[200],
      elevation: 0,
      centerTitle: true,
    );
  }
}

class _ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blueGrey,
            ),
            _EditIcon(),
          ],
        ),
        const SizedBox(height: 10),
        const Text(
          'Ameer Hamza',
          style: TextStyle(fontSize: 20, fontFamily: semibold),
        ),
      ],
    );
  }
}

class _EditIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 15,
      backgroundColor: Colors.grey,
      child: Icon(Icons.edit, color: Colors.white, size: 15),
    );
  }
}

class _ProfileOptionsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: const [
          ProfileOption(icon: Icons.person, title: "Your Profile"),
          ProfileOption(icon: Icons.payment, title: "Payment Methods"),
          ProfileOption(icon: Icons.list_alt, title: "My Orders"),
          ProfileOption(icon: Icons.settings, title: "Settings"),
          ProfileOption(icon: Icons.help, title: "Help Center"),
          ProfileOption(icon: Icons.lock, title: "Privacy Policy"),
        ],
      ),
    );
  }
}

class ProfileOption extends StatelessWidget {
  final IconData icon;
  final String title;

  const ProfileOption({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(
        title,
        style: const TextStyle(fontFamily: medium),
      ),
      trailing:
          const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
      onTap: () {},
    );
  }
}
