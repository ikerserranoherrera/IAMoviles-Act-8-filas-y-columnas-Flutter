import 'package:flutter/material.dart';

void main() => runApp(const AppCarlsjr());

class AppCarlsjr extends StatelessWidget {
  const AppCarlsjr({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Carl's Jr Isaac",
      theme: ThemeData(
        brightness: Brightness.dark,
        // Color de fondo del Scaffold (Gris muy claro)
        scaffoldBackgroundColor: const Color.fromARGB(255, 241, 241, 241),
        useMaterial3: true,
      ),
      home: const ProductosCarne(),
    );
  }
}

class ProductosCarne extends StatelessWidget {
  const ProductosCarne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Carl's Jr. Isaac",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 8,
        actions: const [
          Icon(Icons.lunch_dining, color: Colors.white),
          SizedBox(width: 15),
          Icon(Icons.shopping_cart, color: Colors.white),
          SizedBox(width: 15),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              // FILA 1: Burgers y Papas
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: customCard(
                        Colors.orange.shade800, 
                        "Burgers", 
                        Icons.lunch_dining
                      ),
                    ),
                    Expanded(
                      child: customCard(
                        Colors.yellow.shade700, 
                        "Papas", 
                        Icons.fastfood
                      ),
                    ),
                  ],
                ),
              ),
              // FILA 2: Postres y Ensaladas
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: customCard(
                        Colors.purple.shade400, 
                        "Postres", 
                        Icons.icecream
                      ),
                    ),
                    Expanded(
                      child: customCard(
                        Colors.green.shade700, 
                        "Ensaladas", 
                        Icons.eco // Corregido: Icons.leaf.round.outlined no existe
                      ),
                    ),
                  ],
                ),
              ),
              // FILA 3: Bebidas y Promociones
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: customCard(
                        Colors.blue.shade800, 
                        "Bebidas", 
                        Icons.local_drink
                      ),
                    ),
                    Expanded(
                      child: customCard(
                        Colors.red.shade900, 
                        "Promos", 
                        Icons.sell 
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Widget personalizado para crear las tarjetas del menú
  Widget customCard(Color color, String texto, IconData icono) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(25.0),
        boxShadow: [
          BoxShadow(
            // Nota: withValues es para Flutter 3.22+, si usas una versión vieja usa .withOpacity(0.35)
            color: Colors.black.withValues(alpha: 0.35),
            blurRadius: 8,
            offset: const Offset(3, 5),
          ),
        ],
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icono,
              color: Colors.white,
              size: 45,
            ),
            const SizedBox(height: 12),
            Text(
              texto,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.8,
                shadows: [
                  Shadow(
                    blurRadius: 4, 
                    color: Colors.black45, 
                    offset: Offset(1, 2)
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}