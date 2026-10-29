
import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  const Perfil({super.key});

  static const Color laranja = Color(0xFFE87942);
  static const Color creme = Color(0xFFFFF8F0);
  static const Color marrom = Color(0xFF49352A);
  static const Color branco = Color(0xFFFFFFFF);
  static const Color borda = Color(0xFFE8D8CA);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: creme,

      appBar: AppBar(
        title: const Text(
          'Saborê',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: branco,
          ),
        ),
        backgroundColor: laranja,
        foregroundColor: branco,
        centerTitle: true,
        elevation: 0,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Pesquisar receitas',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: marrom,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Encontre receitas para preparar hoje!',
              style: TextStyle(
                fontSize: 16,
                color: marrom,
              ),
            ),

            const SizedBox(height: 24),

            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: branco,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: borda),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Nome da receita',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: marrom,
                    ),
                  ),

                  const SizedBox(height: 12),

                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Ex.: Pizza Margherita',
                      hintStyle: const TextStyle(color: Colors.black54),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: marrom,
                      ),
                      filled: true,
                      fillColor: branco,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: borda),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: borda),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: laranja,
                          width: 2,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.search),
                      label: const Text('Buscar receitas'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: laranja,
                        foregroundColor: branco,
                        elevation: 0,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              'Receitas disponíveis',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: marrom,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Selecione uma receita para ver o preparo.',
              style: TextStyle(
                fontSize: 15,
                color: marrom,
              ),
            ),

            const SizedBox(height: 20),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                vertical: 32,
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                color: branco,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: borda),
              ),
              child: const Column(
                children: [
                  Icon(
                    Icons.restaurant_menu,
                    size: 55,
                    color: laranja,
                  ),

                  SizedBox(height: 12),

                  Text(
                    'Nenhuma receita selecionada',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: marrom,
                    ),
                  ),

                  SizedBox(height: 8),

                  Text(
                    'Pesquise uma receita para encontrar '
                        'opções e descobrir como prepará-las.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: marrom,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: branco,
        elevation: 8,
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        selectedItemColor: laranja,
        unselectedItemColor: marrom,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explorar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favoritos',
          ),
        ],
      ),
    );
  }
}
