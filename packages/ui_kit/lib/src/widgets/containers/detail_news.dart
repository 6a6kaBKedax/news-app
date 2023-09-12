import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class DetailNewsWidget extends StatelessWidget {
  const DetailNewsWidget({super.key, required this.model});

  final NewsModel model;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 16.0,
            ),
            if (model.urlToImage != null)
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    model.urlToImage!,
                    loadingBuilder: (_, child, status) {
                      if (status == null) return child;
                      return const CircularProgressIndicator.adaptive();
                    },
                  ),
                ),
              ),
            Text(model.content ?? ''),
            const SizedBox(
              height: 16.0,
            ),
            GestureDetector(
              onTap: () =>launchUrlString(model.url!),
              child: const Text(
                'View more...',
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
          ],
        ),
      ),
    );
  }
}
