import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const Color _blue = Color(0xFF0866FF);
  static const Color _background = Color(0xFFF0F2F5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildCover(),
              _buildProfileInfo(),
              const SizedBox(
                  height:
                      12), // spacing between profile info and privacy notice
              _buildPrivacyNotice(),
              const SizedBox(
                  height: 12), // spacing between privacy notice and tabs
              _buildTabs(),
              const SizedBox(
                  height: 12), // spacing between tabs and personal details
              _buildPersonalDetails(),
              const SizedBox(height: 20), // bottom padding
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCover() {
    return SizedBox(
      height: 230,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned.fill(
            child: Image.network(
              'https://cdn.pfps.gg/pfps/8683-skeleton-meme.png',
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => Container(
                color: Colors.blueGrey.shade800,
                child:
                    const Icon(Icons.landscape, color: Colors.white, size: 48),
              ),
            ),
          ),
          Positioned(
            top: 12,
            left: 12,
            child: Column(
              children: [
                _circleIcon(Icons.menu),
                const SizedBox(height: 10), // slightly more spacing
                _circleIcon(Icons.tune),
              ],
            ),
          ),
          Positioned(
            top: 12,
            right: 12,
            child: Row(
              children: [
                _circleIcon(Icons.edit_outlined),
                const SizedBox(width: 10), // slightly more spacing
                _circleIcon(Icons.search),
                const SizedBox(width: 10),
                _circleIcon(Icons.more_horiz),
              ],
            ),
          ),
          Positioned(
            right: 12,
            bottom: 12,
            child: _circleIcon(Icons.camera_alt_outlined),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: -44,
            child: Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  const CircleAvatar(
                    radius: 52,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 47,
                      backgroundColor: Color(0xFFE8EDF3),
                      backgroundImage: NetworkImage(
                        'https://www.bing.com/th/id/OIP.71MLPk4pGsbU_lVpOwC07QHaEK?w=193&h=135&c=8&rs=1&qlt=90&o=6&pid=ImgAns&rm=2',
                      ),
                    ),
                  ),
                  Positioned(
                    right: -2,
                    bottom: 2,
                    child: _smallCameraButton(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileInfo() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(
          16, 54, 16, 16), // more bottom padding for breathing room
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'John Carl V. Babiera',
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 8),
              _roundButton(Icons.keyboard_arrow_down),
            ],
          ),
          const SizedBox(height: 6), // reduced spacing
          const Text('3 posts', style: TextStyle(fontSize: 13)),
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on, size: 17),
              SizedBox(width: 4),
              Text('Iloilo City', style: TextStyle(fontSize: 14)),
            ],
          ),
          const SizedBox(height: 18), // slightly more spacing before buttons
          Row(
            children: [
              Expanded(
                child: _actionButton(
                  label: 'Add to story',
                  icon: Icons.add_circle_outline,
                  background: _blue,
                  foreground: Colors.white,
                ),
              ),
              const SizedBox(width: 8), // slightly more spacing
              Expanded(
                child: _actionButton(
                  label: 'Edit profile',
                  icon: Icons.edit,
                  background: const Color(0xFFE4E6EB),
                  foreground: Colors.black87,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPrivacyNotice() {
    return Container(
      color: Colors.white,
      padding:
          const EdgeInsets.fromLTRB(14, 8, 14, 14), // more vertical padding
      child: Row(
        children: [
          Container(
            width: 34,
            height: 34,
            decoration: const BoxDecoration(
              color: Color(0xFFF0F2F5),
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.shield, size: 18),
          ),
          const SizedBox(width: 12), // slightly more horizontal spacing
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'You locked your profile',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Learn more',
                    style: TextStyle(color: _blue, fontSize: 13),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabs() {
    return Container(
      color: Colors.white,
      padding:
          const EdgeInsets.fromLTRB(10, 8, 10, 12), // more vertical padding
      child: Row(
        children: [
          _tab('All', selected: true),
          _tab('Photos'),
          _tab('Reels'),
        ],
      ),
    );
  }

  Widget _buildPersonalDetails() {
    return Container(
      color: Colors.white,
      padding:
          const EdgeInsets.fromLTRB(16, 12, 16, 24), // more vertical padding
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Expanded(
                child: Text(
                  'Personal details',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.edit_outlined, size: 18),
                visualDensity: VisualDensity.compact,
              ),
            ],
          ),
          _detailRow(Icons.location_on_outlined, 'Iloilo City, Philippines'),
          _detailRow(Icons.home_outlined, 'Calinog, Iloilo'),
          _detailRow(Icons.card_giftcard_outlined, 'Oct 12, 2006'),
        ],
      ),
    );
  }

  Widget _circleIcon(IconData icon) {
    return Material(
      color: Colors.black.withOpacity(0.45),
      shape: const CircleBorder(),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(9),
          child: Icon(icon, color: Colors.white, size: 19),
        ),
      ),
    );
  }

  Widget _smallCameraButton() {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        color: Color(0xFFE4E6EB),
        shape: BoxShape.circle,
      ),
      child: const Icon(Icons.camera_alt, size: 17),
    );
  }

  Widget _roundButton(IconData icon) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: const BoxDecoration(
        color: Color(0xFFE4E6EB),
        shape: BoxShape.circle,
      ),
      child: Icon(icon, size: 18),
    );
  }

  Widget _actionButton({
    required String label,
    required IconData icon,
    required Color background,
    required Color foreground,
  }) {
    return SizedBox(
      height: 40,
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(icon, size: 16),
        label: Text(label, maxLines: 1, overflow: TextOverflow.ellipsis),
        style: ElevatedButton.styleFrom(
          backgroundColor: background,
          foregroundColor: foreground,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          ),
        ),
      ),
    );
  }

  Widget _tab(String label, {bool selected = false}) {
    return Expanded(
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor:
              selected ? const Color(0xFFE7F3FF) : Colors.transparent,
          minimumSize: const Size(0, 36),
          padding: const EdgeInsets.symmetric(horizontal: 6),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: selected ? _blue : Colors.black87,
            fontWeight: selected ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
      ),
    );
  }

  Widget _detailRow(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, size: 18),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
