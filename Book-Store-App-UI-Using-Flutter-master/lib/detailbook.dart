import 'package:flutter/material.dart';

void main() => runApp(const BookApp());

class BookApp extends StatelessWidget {
  const BookApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BookDetailPage(),
    );
  }
}

class BookDetailPage extends StatelessWidget {
  const BookDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Details'),
      ),
      body: const Padding(
        padding:  EdgeInsets.all(16.0),
        child: BookDetailsWidget(),
      ),
    );
  }
}

class BookDetailsWidget extends StatelessWidget {
  const BookDetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Center(
            child: Image.network(
              'https://eccthai.com/wp-content/uploads/2021/01/sach-dac-nhan-tam-dale-carnegie.jpg', // Replace with your book cover image URL
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 16.0),
        const Text(
          'Book Title',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8.0),
        const Text(
          'Author Name',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 16.0),
        const Text(
          'Book Description: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vel justo ac enim venenatis finibus. Quisque et magna ac nulla luctus venenatis in in sapien. Nullam vitae magna nec eros malesuada consequat. Ut facilisis eu lorem vitae fermentum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla facilisi. Nullam convallis fermentum posuere. Duis id fringilla nunc. Sed ac tristique est, nec tincidunt dolor.',
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
      ],
    );
  }
}
