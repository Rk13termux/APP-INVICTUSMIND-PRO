import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Invictusmind Store',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF121212),
        primaryColor: Colors.blue.shade800,
        appBarTheme: AppBarTheme(
          backgroundColor: const Color(0xFF222222),
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue.shade700,
            foregroundColor: Colors.white,
          ),
        ),
        cardColor: const Color(0xFF222222),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
          titleMedium: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      onGenerateRoute: (settings) {
        if (settings.name == '/product1' ||
            settings.name == '/product2' ||
            settings.name == '/product3' ||
            settings.name == '/product4' ||
            settings.name == '/product5' ||
            settings.name == '/product6' ||
            settings.name == '/product7' ||
            settings.name == '/product8' ||
            settings.name == '/product9' ||
            settings.name == '/product10') {
          final Map<String, dynamic> args = settings.arguments as Map<String, dynamic>;
          return MaterialPageRoute(
            builder: (context) => ProductLandingPage(
              productName: args['productName'],
              products: args['products'],
            ),
          );         
        }
        return null;
      },
      home: const MyHomePage(title: 'Invictusmind Store'),
    );
  }
}

class Product {
  final String name;
  final String imageUrl;
  final String description;
  final String landingPageUrl;

  Product({
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.landingPageUrl,
  });
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final List<Product> products = [
      Product(
        name: 'The Alpha Mindset',
        imageUrl: 'https://images.unsplash.com/photo-1532635124-e0e80451ca33?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fG1hbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',        
        description: 'Master your thoughts and dominate your life. This course will teach you how to cultivate an alpha mindset and achieve your goals.',
        landingPageUrl: '/product1',
      ),
      Product(
        name: 'Unleash Your Potential',
        imageUrl: 'https://images.unsplash.com/photo-1547623579-d84dca38a812?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NzB8fG1hbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',        
        description: 'Unlock the hidden potential within you. This program provides the tools and strategies you need to achieve peak performance in all areas of your life.',
        landingPageUrl: '/product2',
      ),
      Product(
        name: 'Master Your Focus',
        imageUrl: 'https://images.unsplash.com/photo-1517245474244-408e33bd7347?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODh8fG1hbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',        
        description: 'Eliminate distractions and laser-focus on what matters most. This course will teach you proven techniques to improve your concentration and achieve your goals faster.',
        landingPageUrl: '/product3',
      ),
      Product(
        name: 'The Charisma Code',
        imageUrl: 'https://images.unsplash.com/photo-1520099302579-499d97920a0b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTAwfHxtYW58ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',        
        description: 'Become the man everyone wants to know. This program will teach you the secrets of charisma and how to connect with anyone.',
        landingPageUrl: '/product4',
      ),
      Product(
        name: 'Financial Freedom Blueprint',
        imageUrl: 'https://images.unsplash.com/photo-1556761175-b413da4ca674?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTIyfHxtYW58ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',        
        description: 'Take control of your finances and build a life of freedom. This blueprint will guide you step-by-step to financial independence.',
        landingPageUrl: '/product5',
      ),
      Product(
        name: 'The Ultimate Body Transformation',
        imageUrl: 'https://images.unsplash.com/photo-1552611052-90ef2914c9b1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTQyfHxtYW58ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',        
        description: 'Transform your body and unlock your physical potential. This comprehensive program provides everything you need to build a lean, strong, and healthy physique.',
        landingPageUrl: '/product6',
      ),
      Product(
        name: 'The Art of Communication',
        imageUrl: 'https://images.unsplash.com/photo-1508214751196-bcfd6ca6ac9e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTYwfHxtYW58ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',        
        description: 'Master the art of communication and build stronger relationships. This course will teach you how to communicate effectively in any situation.',
        landingPageUrl: '/product7',
      ),
      Product(
        name: 'Leadership Secrets',
        imageUrl: 'https://images.unsplash.com/photo-1488521787991-ed7b0bb5da01?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTg1fHxtYW58ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',        
        description: 'Unlock your leadership potential and inspire others. This program reveals the secrets of effective leadership and how to build a winning team.',
        landingPageUrl: '/product8',
      ),
      Product(
        name: 'Time Management Mastery',
        imageUrl: 'https://images.unsplash.com/photo-1542744166-e09c6713f0cb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjA2fHxtYW58ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',        
        description: 'Take control of your time and maximize your productivity. This course will teach you proven time management techniques to achieve more in less time.',
        landingPageUrl: '/product9',
      ),
      Product(
        name: 'Stress-Free Living',
        imageUrl: 'https://images.unsplash.com/photo-1504198453319-5ce911bafcde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjIyfHxtYW58ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',        
        description: 'Reduce stress and live a more balanced life. This program provides practical tools and techniques to manage stress and improve your well-being.',
        landingPageUrl: '/product10',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Unlock Your Potential: Invest in Yourself Today',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return GridView.count(
                    crossAxisCount: constraints.maxWidth > 600 ? 3 : 2,
                    mainAxisSpacing: 16.0,
                    crossAxisSpacing: 16.0,
                    childAspectRatio: 0.75,
                    children: products
                        .map((product) => ProductCard(
                              product: product,
                              products: products,
                            ))
                        .toList(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, required this.product, required this.products}) : super(key: key);

  final Product product;
  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Image.network(
                product.imageUrl,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const Center(child: Icon(Icons.error));
                },
              ),
            ),
            const SizedBox(height: 8),
            Text(
              product.name,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 4),
            Text(
              product.description,
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  product.landingPageUrl,
                  arguments: {
                    'productName': product.name,
                    'products': products,
                  },
                );
              },
              child: const Text('Unlock Now'),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductLandingPage extends StatelessWidget {
  const ProductLandingPage({Key? key, required this.productName, required this.products}) : super(key: key);

  final String productName;
  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    final Product product = products.firstWhere((prod) => prod.name == productName);

    return Scaffold(
      appBar: AppBar(
        title: Text(productName),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              product.imageUrl,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return const Center(child: Icon(Icons.error));
              },
            ),
            const SizedBox(height: 16),
            Text(
              product.name,
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              product.description,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                textStyle: const TextStyle(fontSize: 18),
              ),
              onPressed: () async {
                final Uri url = Uri.parse(product.landingPageUrl);
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {
                  print('Could not launch URL');
                }
              },
              child: const Text('Proceed to Checkout'),
            ),
          ],
        ),
      ),
    );
  }
}
