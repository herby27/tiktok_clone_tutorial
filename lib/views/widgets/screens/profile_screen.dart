import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String uid;
  const ProfileScreen({
    Key? key,
    required this.uid,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        leading: const Icon(
            Icons.person_add_alt_1_outlined
        ),
        actions: const[
          Icon(Icons.more_horiz),
        ],
        title: Text(
          'username',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipOval(
                      child: CachedNetworkImage(
                        fit: BoxFit.cover,
                        imageUrl: '',
                        height: 100,
                        width: 100,
                        placeholder: (context, url) => const CircularProgressIndicator(),
                        errorWidget: (context, url, error) => Icon(
                            Icons.error,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          '10',
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Following',
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      color: Colors.black54,
                      width: 1,
                      height: 15,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          '10',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Followers',
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      color: Colors.black54,
                      width: 1,
                      height: 15,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          '10',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Likes',
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 15,),
                Container(
                  width: 140,
                  height: 47,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black12,
                    ),
                  ),
                  child: Center(
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        'Sign Out',
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                // video list
              ],
            ),
          ],
        ),
      ),
    );
  }
}
