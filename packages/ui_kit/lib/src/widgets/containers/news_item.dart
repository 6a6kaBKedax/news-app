import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:intl/intl.dart';

class NewsItemWidget extends StatelessWidget {
  const NewsItemWidget({
    required this.model,
    required this.onTap,
    super.key,
  });

  final NewsModel model;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(8.0),
          margin: const EdgeInsets.all(8.0),
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(model.source.name ?? ''),
                  Text(DateFormat('y:M:d').format(DateTime.parse(model.publishedAt ?? DateTime.now().toString()))),
                ],
              ),
              const SizedBox(height: 4.0),
              Text(model.description ?? ''),
            ],
          ),
        ),
      ),
    );
  }
}
