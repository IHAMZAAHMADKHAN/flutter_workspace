import 'package:flutter/material.dart';
import 'package:list_view/pages/gridview.dart';

class Resturentapp extends StatefulWidget {
  const Resturentapp({super.key});

  @override
  State<Resturentapp> createState() => _ResturentappState();
}

class _ResturentappState extends State<Resturentapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resturentapp'),
      ),
      body: SafeArea(
          child: ListView(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Gridview(),
                  ));
            },
            child: const Text("Next Page"),
          ),
          const ListTile(
            title: Text('Margherita Pizza'),
            subtitle: Text(
                'A classic Italian pizza topped with fresh tomatoes, mozzarella cheese, and basil leaves. '),
            trailing: Text("Rs : 700"),
          ),
          const ListTile(
            title: Text('Chicken Alfredo Pasta'),
            subtitle: Text(
                'Creamy fettuccine pasta with grilled chicken breast, Parmesan cheese, and a rich Alfredo sauce.'),
            trailing: Text('Rs : 1000'),
          ),
          const ListTile(
            title: Text('Caesar Salad'),
            subtitle: Text(
                'Crisp romaine lettuce tossed with Caesar dressing, crunchy croutons, and freshly grated Parmesan cheese.'),
            trailing: Text('Rs : 800'),
          ),
          const ListTile(
            title: Text('Margherita Pizza'),
            subtitle: Text(
                'A classic Italian pizza topped with fresh tomatoes, mozzarella cheese, and basil leaves. '),
            trailing: Text("Rs : 700"),
          ),
          const ListTile(
            title: Text('Chicken Alfredo Pasta'),
            subtitle: Text(
                'Creamy fettuccine pasta with grilled chicken breast, Parmesan cheese, and a rich Alfredo sauce.'),
            trailing: Text('Rs : 1000'),
          ),
          const ListTile(
            title: Text('Margherita Pizza'),
            subtitle: Text(
                'A classic Italian pizza topped with fresh tomatoes, mozzarella cheese, and basil leaves. '),
            trailing: Text("Rs : 700"),
          ),
          const ListTile(
            title: Text('Chicken Alfredo Pasta'),
            subtitle: Text(
                'Creamy fettuccine pasta with grilled chicken breast, Parmesan cheese, and a rich Alfredo sauce.'),
            trailing: Text('Rs : 1000'),
          ),
          const ListTile(
            title: Text('Caesar Salad'),
            subtitle: Text(
                'Crisp romaine lettuce tossed with Caesar dressing, crunchy croutons, and freshly grated Parmesan cheese.'),
            trailing: Text('Rs : 800'),
          ),
          const ListTile(
            title: Text('Margherita Pizza'),
            subtitle: Text(
                'A classic Italian pizza topped with fresh tomatoes, mozzarella cheese, and basil leaves. '),
            trailing: Text("Rs : 700"),
          ),
          const ListTile(
            title: Text('Margherita Pizza'),
            subtitle: Text(
                'A classic Italian pizza topped with fresh tomatoes, mozzarella cheese, and basil leaves. '),
            trailing: Text("Rs : 700"),
          ),
          const ListTile(
            title: Text('Chicken Alfredo Pasta'),
            subtitle: Text(
                'Creamy fettuccine pasta with grilled chicken breast, Parmesan cheese, and a rich Alfredo sauce.'),
            trailing: Text('Rs : 1000'),
          ),
          const ListTile(
            title: Text('Caesar Salad'),
            subtitle: Text(
                'Crisp romaine lettuce tossed with Caesar dressing, crunchy croutons, and freshly grated Parmesan cheese.'),
            trailing: Text('Rs : 800'),
          ),
          const ListTile(
            title: Text('Margherita Pizza'),
            subtitle: Text(
                'A classic Italian pizza topped with fresh tomatoes, mozzarella cheese, and basil leaves. '),
            trailing: Text("Rs : 700"),
          ),
          const ListTile(
            title: Text('Margherita Pizza'),
            subtitle: Text(
                'A classic Italian pizza topped with fresh tomatoes, mozzarella cheese, and basil leaves. '),
            trailing: Text("Rs : 700"),
          ),
          const ListTile(
            title: Text('Chicken Alfredo Pasta'),
            subtitle: Text(
                'Creamy fettuccine pasta with grilled chicken breast, Parmesan cheese, and a rich Alfredo sauce.'),
            trailing: Text('Rs : 1000'),
          ),
          const ListTile(
            title: Text('Caesar Salad'),
            subtitle: Text(
                'Crisp romaine lettuce tossed with Caesar dressing, crunchy croutons, and freshly grated Parmesan cheese.'),
            trailing: Text('Rs : 800'),
          ),
          const ListTile(
            title: Text('Margherita Pizza'),
            subtitle: Text(
                'A classic Italian pizza topped with fresh tomatoes, mozzarella cheese, and basil leaves. '),
            trailing: Text("Rs : 700"),
          ),
          const ListTile(
            title: Text('Margherita Pizza'),
            subtitle: Text(
                'A classic Italian pizza topped with fresh tomatoes, mozzarella cheese, and basil leaves. '),
            trailing: Text("Rs : 700"),
          ),
          const ListTile(
            title: Text('Chicken Alfredo Pasta'),
            subtitle: Text(
                'Creamy fettuccine pasta with grilled chicken breast, Parmesan cheese, and a rich Alfredo sauce.'),
            trailing: Text('Rs : 1000'),
          ),
          const ListTile(
            title: Text('Caesar Salad'),
            subtitle: Text(
                'Crisp romaine lettuce tossed with Caesar dressing, crunchy croutons, and freshly grated Parmesan cheese.'),
            trailing: Text('Rs : 800'),
          ),
          const ListTile(
            title: Text('Margherita Pizza'),
            subtitle: Text(
                'A classic Italian pizza topped with fresh tomatoes, mozzarella cheese, and basil leaves. '),
            trailing: Text("Rs : 700"),
          ),
          const ListTile(
            title: Text('Chicken Alfredo Pasta'),
            subtitle: Text(
                'Creamy fettuccine pasta with grilled chicken breast, Parmesan cheese, and a rich Alfredo sauce.'),
            trailing: Text('Rs : 1000'),
          ),
          const ListTile(
            title: Text('Margherita Pizza'),
            subtitle: Text(
                'A classic Italian pizza topped with fresh tomatoes, mozzarella cheese, and basil leaves. '),
            trailing: Text("Rs : 700"),
          ),
          const ListTile(
            title: Text('Chicken Alfredo Pasta'),
            subtitle: Text(
                'Creamy fettuccine pasta with grilled chicken breast, Parmesan cheese, and a rich Alfredo sauce.'),
            trailing: Text('Rs : 1000'),
          ),
          const ListTile(
            title: Text('Caesar Salad'),
            subtitle: Text(
                'Crisp romaine lettuce tossed with Caesar dressing, crunchy croutons, and freshly grated Parmesan cheese.'),
            trailing: Text('Rs : 800'),
          ),
          const ListTile(
            title: Text('Margherita Pizza'),
            subtitle: Text(
                'A classic Italian pizza topped with fresh tomatoes, mozzarella cheese, and basil leaves. '),
            trailing: Text("Rs : 700"),
          ),
          const ListTile(
            title: Text('Margherita Pizza'),
            subtitle: Text(
                'A classic Italian pizza topped with fresh tomatoes, mozzarella cheese, and basil leaves. '),
            trailing: Text("Rs : 700"),
          ),
          const ListTile(
            title: Text('Chicken Alfredo Pasta'),
            subtitle: Text(
                'Creamy fettuccine pasta with grilled chicken breast, Parmesan cheese, and a rich Alfredo sauce.'),
            trailing: Text('Rs : 1000'),
          ),
          const ListTile(
            title: Text('Caesar Salad'),
            subtitle: Text(
                'Crisp romaine lettuce tossed with Caesar dressing, crunchy croutons, and freshly grated Parmesan cheese.'),
            trailing: Text('Rs : 800'),
          ),
          const ListTile(
            title: Text('Margherita Pizza'),
            subtitle: Text(
                'A classic Italian pizza topped with fresh tomatoes, mozzarella cheese, and basil leaves. '),
            trailing: Text("Rs : 700"),
          ),
          const ListTile(
            title: Text('Margherita Pizza'),
            subtitle: Text(
                'A classic Italian pizza topped with fresh tomatoes, mozzarella cheese, and basil leaves. '),
            trailing: Text("Rs : 700"),
          ),
          const ListTile(
            title: Text('Chicken Alfredo Pasta'),
            subtitle: Text(
                'Creamy fettuccine pasta with grilled chicken breast, Parmesan cheese, and a rich Alfredo sauce.'),
            trailing: Text('Rs : 1000'),
          ),
          const ListTile(
            title: Text('Caesar Salad'),
            subtitle: Text(
                'Crisp romaine lettuce tossed with Caesar dressing, crunchy croutons, and freshly grated Parmesan cheese.'),
            trailing: Text('Rs : 800'),
          ),
        ],
      )),
    );
  }
}
