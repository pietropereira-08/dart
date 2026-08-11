import 'package:flutter/material.dart';

void main() {
  runApp(const MeuCrachaApp());
}

class MeuCrachaApp extends StatelessWidget {
  const MeuCrachaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PPDM - Cracha Digital',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const TelaVersao08(), // Versão 8.0 ativa
    );
  }
}

/*
// =============================================================================
// HISTÓRICO DAS VERSÕES ANTERIORES (0.0 ATÉ 7.0)
// =============================================================================

// MENU PRINCIPAL DE NAVEGAÇÃO ENTRE VERSÕES
class MenuVersionamentoScreen extends StatelessWidget {
  const MenuVersionamentoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final versoes = [
      {'titulo': 'Versão 0.0 — Código Base Original', 'tela': const TelaVersao00()},
      {'titulo': 'Versão 1.0 — Ex 01: Alteração de Cores (Verde)', 'tela': const TelaVersao01()},
      {'titulo': 'Versão 2.0 — Ex 02: Status da Matrícula', 'tela': const TelaVersao02()},
      {'titulo': 'Versão 3.0 — Ex 03: Imagem de Perfil (NetworkImage)', 'tela': const TelaVersao03()},
      {'titulo': 'Versão 4.0 — Ex 04: Erro Sintático (Explicado em Alerta)', 'tela': const TelaVersao04()},
      {'titulo': 'Versão 5.0 — Ex 05: Inclusão de Padding na Column', 'tela': const TelaVersao05()},
      {'titulo': 'Versão 6.0 — Ex 06: Botão Validar Carteirinha', 'tela': const TelaVersao06()},
      {'titulo': 'Versão 7.0 — Ex 07: Modularização (Widget Reutilizável)', 'tela': const TelaVersao07()},
      {'titulo': 'Versão 8.0 — Ex 08: Desafio Lista de Crachás', 'tela': const TelaVersao08()},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Histórico de Versionamento'),
        centerTitle: true,
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16.0),
        itemCount: versoes.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) {
          final item = versoes[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              child: Text('v$index'),
            ),
            title: Text(
              item['titulo'] as String,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => item['tela'] as Widget,
                ),
              );
            },
          );
        },
      ),
    );
  }
}

// VERSÃO 0.0: CÓDIGO BASE ORIGINAL
class TelaVersao00 extends StatelessWidget {
  const TelaVersao00({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('v0.0 - Código Base'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          width: 320,
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.indigo.shade50,
            borderRadius: BorderRadius.circular(16.0),
            border: Border.all(color: Colors.indigo, width: 2.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircleAvatar(
                radius: 40,
                backgroundColor: Colors.indigo,
                child: Icon(Icons.person, size: 50, color: Colors.white),
              ),
              const SizedBox(height: 12.0),
              const Text(
                'Ana Silva Santos',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
              ),
              const Text(
                'Desenvolvimento Mobile / PPDM',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Divider(height: 24, thickness: 1),
              Row(
                children: const [
                  Icon(Icons.badge, color: Colors.indigo),
                  SizedBox(width: 10),
                  Text('RA: 2026109923', style: TextStyle(fontSize: 16)),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                children: const [
                  Icon(Icons.email, color: Colors.indigo),
                  SizedBox(width: 10),
                  Text('ana.silva@estudante.edu.br', style: TextStyle(fontSize: 14)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// VERSÃO 1.0: EXERCÍCIO 01
class TelaVersao01 extends StatelessWidget {
  const TelaVersao01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('v1.0 - Tema Verde'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          width: 320,
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.green.shade50,
            borderRadius: BorderRadius.circular(16.0),
            border: Border.all(color: Colors.green, width: 2.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircleAvatar(
                radius: 40,
                backgroundColor: Colors.green,
                child: Icon(Icons.person, size: 50, color: Colors.white),
              ),
              const SizedBox(height: 12.0),
              const Text(
                'Ana Silva Santos',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              const Text(
                'Desenvolvimento Mobile / PPDM',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Divider(height: 24, thickness: 1),
              Row(
                children: const [
                  Icon(Icons.badge, color: Colors.green),
                  SizedBox(width: 10),
                  Text('RA: 2026109923', style: TextStyle(fontSize: 16)),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                children: const [
                  Icon(Icons.email, color: Colors.green),
                  SizedBox(width: 10),
                  Text('ana.silva@estudante.edu.br', style: TextStyle(fontSize: 14)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// VERSÃO 2.0: EXERCÍCIO 02
class TelaVersao02 extends StatelessWidget {
  const TelaVersao02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('v2.0 - Status Matrícula'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          width: 320,
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.green.shade50,
            borderRadius: BorderRadius.circular(16.0),
            border: Border.all(color: Colors.green, width: 2.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircleAvatar(
                radius: 40,
                backgroundColor: Colors.green,
                child: Icon(Icons.person, size: 50, color: Colors.white),
              ),
              const SizedBox(height: 12.0),
              const Text(
                'Ana Silva Santos',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              const Text(
                'Desenvolvimento Mobile / PPDM',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Divider(height: 24, thickness: 1),
              Row(
                children: const [
                  Icon(Icons.badge, color: Colors.green),
                  SizedBox(width: 10),
                  Text('RA: 2026109923', style: TextStyle(fontSize: 16)),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                children: const [
                  Icon(Icons.email, color: Colors.green),
                  SizedBox(width: 10),
                  Text('ana.silva@estudante.edu.br', style: TextStyle(fontSize: 14)),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                children: const [
                  Icon(Icons.check_circle, color: Colors.green),
                  SizedBox(width: 10),
                  Text(
                    'Status: Matriculado / Ativo',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// VERSÃO 3.0: EXERCÍCIO 03
class TelaVersao03 extends StatelessWidget {
  const TelaVersao03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('v3.0 - Foto NetworkImage'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          width: 320,
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.green.shade50,
            borderRadius: BorderRadius.circular(16.0),
            border: Border.all(color: Colors.green, width: 2.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircleAvatar(
                radius: 40,
                backgroundColor: Colors.green,
                foregroundImage: NetworkImage('https://i.pravatar.cc/300?img=5'),
                child: Icon(Icons.person, size: 50, color: Colors.white),
              ),
              const SizedBox(height: 12.0),
              const Text(
                'Ana Silva Santos',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              const Text(
                'Desenvolvimento Mobile / PPDM',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Divider(height: 24, thickness: 1),
              Row(
                children: const [
                  Icon(Icons.badge, color: Colors.green),
                  SizedBox(width: 10),
                  Text('RA: 2026109923', style: TextStyle(fontSize: 16)),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                children: const [
                  Icon(Icons.email, color: Colors.green),
                  SizedBox(width: 10),
                  Text('ana.silva@estudante.edu.br', style: TextStyle(fontSize: 14)),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                children: const [
                  Icon(Icons.check_circle, color: Colors.green),
                  SizedBox(width: 10),
                  Text(
                    'Status: Matriculado / Ativo',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// VERSÃO 4.0: EXERCÍCIO 04
class TelaVersao04 extends StatelessWidget {
  const TelaVersao04({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('v4.0 - Diagnóstico de Erro'),
        backgroundColor: Colors.red.shade700,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Icon(Icons.error_outline, size: 60, color: Colors.red),
            SizedBox(height: 16),
            Text(
              'Erro ao trocar child por children no Container:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            ContainerErroBox(),
            SizedBox(height: 16),
            Text(
              'Motivo: O widget Container aceita apenas um único filho através da propriedade "child". Para passar múltiplos filhos em lista, deve-se usar widgets específicos como Column, Row ou ListView.',
              style: TextStyle(fontSize: 14, color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerErroBox extends StatelessWidget {
  const ContainerErroBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.red.shade50,
        border: Border.all(color: Colors.red),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Text(
        "The named parameter 'children' isn't defined for the class 'Container'.",
        style: TextStyle(fontFamily: 'monospace', color: Colors.red, fontWeight: FontWeight.bold),
      ),
    );
  }
}

// VERSÃO 5.0: EXERCÍCIO 05
class TelaVersao05 extends StatelessWidget {
  const TelaVersao05({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('v5.0 - Padding Adicionado'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          width: 320,
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.green.shade50,
            borderRadius: BorderRadius.circular(16.0),
            border: Border.all(color: Colors.green, width: 2.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.green,
                  foregroundImage: NetworkImage('https://i.pravatar.cc/300?img=5'),
                  child: Icon(Icons.person, size: 50, color: Colors.white),
                ),
                const SizedBox(height: 12.0),
                const Text(
                  'Ana Silva Santos',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                const Text(
                  'Desenvolvimento Mobile / PPDM',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Divider(height: 24, thickness: 1),
                Row(
                  children: const [
                    Icon(Icons.badge, color: Colors.green),
                    SizedBox(width: 10),
                    Text('RA: 2026109923', style: TextStyle(fontSize: 16)),
                  ],
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: const [
                    Icon(Icons.email, color: Colors.green),
                    SizedBox(width: 10),
                    Text('ana.silva@estudante.edu.br', style: TextStyle(fontSize: 14)),
                  ],
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: const [
                    Icon(Icons.check_circle, color: Colors.green),
                    SizedBox(width: 10),
                    Text(
                      'Status: Matriculado / Ativo',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// VERSÃO 6.0: EXERCÍCIO 06
class TelaVersao06 extends StatelessWidget {
  const TelaVersao06({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('v6.0 - Botão Validar'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          width: 320,
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.green.shade50,
            borderRadius: BorderRadius.circular(16.0),
            border: Border.all(color: Colors.green, width: 2.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.green,
                  foregroundImage: NetworkImage('https://i.pravatar.cc/300?img=5'),
                  child: Icon(Icons.person, size: 50, color: Colors.white),
                ),
                const SizedBox(height: 12.0),
                const Text(
                  'Ana Silva Santos',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                const Text(
                  'Desenvolvimento Mobile / PPDM',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Divider(height: 24, thickness: 1),
                Row(
                  children: const [
                    Icon(Icons.badge, color: Colors.green),
                    SizedBox(width: 10),
                    Text('RA: 2026109923', style: TextStyle(fontSize: 16)),
                  ],
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: const [
                    Icon(Icons.email, color: Colors.green),
                    SizedBox(width: 10),
                    Text('ana.silva@estudante.edu.br', style: TextStyle(fontSize: 14)),
                  ],
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: const [
                    Icon(Icons.check_circle, color: Colors.green),
                    SizedBox(width: 10),
                    Text(
                      'Status: Matriculado / Ativo',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  icon: const Icon(Icons.verified),
                  label: const Text('Validar Carteirinha'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// VERSÃO 7.0: EXERCÍCIO 07
class TelaVersao07 extends StatelessWidget {
  const TelaVersao07({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('v7.0 - Widget Customizado'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: CartaoEstudante(
          nome: 'Ana Silva Santos',
          curso: 'Desenvolvimento Mobile / PPDM',
          ra: '2026109923',
          email: 'ana.silva@estudante.edu.br',
          status: 'Matriculado / Ativo',
          urlFoto: 'https://i.pravatar.cc/300?img=5',
        ),
      ),
    );
  }
}
*/

// =============================================================================
// VERSÃO 8.0: DESAFIO LISTA COM MÚLTIPLOS CRACHÁS (CÓDIGO ATIVO)
// =============================================================================
class TelaVersao08 extends StatelessWidget {
  const TelaVersao08({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PPDM - Lista de Estudantes'),
        centerTitle: true,
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Center(
          child: Column(
            children: const [
              CartaoEstudante(
                nome: 'Ana Silva Santos',
                curso: 'Desenvolvimento Mobile / PPDM',
                ra: '2026109923',
                email: 'ana.silva@estudante.edu.br',
                status: 'Matriculado / Ativo',
                urlFoto: 'https://i.pravatar.cc/300?img=5',
              ),
              SizedBox(height: 20.0),
              CartaoEstudante(
                nome: 'Carlos Eduardo Lima',
                curso: 'Sistemas para Internet',
                ra: '2026108841',
                email: 'carlos.lima@estudante.edu.br',
                status: 'Matriculado / Ativo',
                urlFoto: 'https://i.pravatar.cc/300?img=12',
              ),
              SizedBox(height: 20.0),
              CartaoEstudante(
                nome: 'Beatriz Almeida Rocha',
                curso: 'Análise e Des. de Sistemas',
                ra: '2026107712',
                email: 'beatriz.rocha@estudante.edu.br',
                status: 'Matriculado / Ativo',
                urlFoto: 'https://i.pravatar.cc/300?img=9',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// =============================================================================
// WIDGET REUTILIZÁVEL CUSTOMIZADO (MANDATÓRIO PARA A VERSÃO 8)
// =============================================================================
class CartaoEstudante extends StatelessWidget {
  final String nome;
  final String curso;
  final String ra;
  final String email;
  final String status;
  final String urlFoto;

  const CartaoEstudante({
    super.key,
    required this.nome,
    required this.curso,
    required this.ra,
    required this.email,
    required this.status,
    required this.urlFoto,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.green.shade50,
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(color: Colors.green, width: 2.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.green,
              foregroundImage: NetworkImage(urlFoto),
              child: const Icon(Icons.person, size: 50, color: Colors.white),
            ),
            const SizedBox(height: 12.0),
            Text(
              nome,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              curso,
              style: const TextStyle(
                fontSize: 14.0,
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            const Divider(height: 24, thickness: 1),
            Row(
              children: [
                const Icon(Icons.badge, color: Colors.green),
                const SizedBox(width: 10),
                Text('RA: $ra', style: const TextStyle(fontSize: 14)),
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              children: [
                const Icon(Icons.email, color: Colors.green),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    email,
                    style: const TextStyle(fontSize: 13),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              children: [
                const Icon(Icons.check_circle, color: Colors.green),
                const SizedBox(width: 10),
                Text('Status: $status', style: const TextStyle(fontSize: 14)),
              ],
            ),
            const SizedBox(height: 16.0),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
              onPressed: () {},
              icon: const Icon(Icons.verified),
              label: const Text('Validar Carteirinha'),
            ),
          ],
        ),
      ),
    );
  }
}