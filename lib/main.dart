import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary, fontWeight: FontWeight.bold);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () => print('avatar'),
                        icon: const CircleAvatar(
                          radius: 15,
                          backgroundImage: NetworkImage(
                              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                        )),
                    IconButton(
                      icon: const Icon(Icons.notifications_none_outlined),
                      onPressed: () => print('notifications'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Busca tu libro',
                      style: style,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: SearchBar(
                        hintStyle: MaterialStateProperty.all(const TextStyle(
                          fontSize: 12,
                        )),
                        hintText: 'El principito',
                        trailing: const [
                          Icon(
                            Icons.search,
                            size: 15,
                          )
                        ],
                        shape: MaterialStateProperty.all(
                            const ContinuousRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        )),
                        constraints: const BoxConstraints(
                          maxHeight: 32,
                        ),
                        shadowColor:
                            MaterialStateProperty.all(Colors.transparent),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '487 Resultados',
                      style: TextStyle(fontSize: 12),
                    ),
                    InkWell(
                      onTap: () => print('filter'),
                      child: const Text(
                        'Filtrar >',
                        style: TextStyle(fontSize: 12),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children: [
                      ListTile(
                        contentPadding: const EdgeInsets.all(0),
                        title: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      width: 1, color: Colors.grey.shade300))),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () => print('item'),
                                child: const Image(
                                  height: 50,
                                  image: NetworkImage(
                                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      onTap: () => print('item'),
                                      child: const Text(
                                        'El principito blablabalbalab...',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '10€',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.yellow[700],
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Card(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                  horizontal: 5,
                                                  vertical: 2,
                                                ),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      size: 12,
                                                      color: Colors.yellow[700],
                                                    ),
                                                    const SizedBox(
                                                      width: 3,
                                                    ),
                                                    const Text(
                                                      'Destacado',
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.grey),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        IconButton(
                                            splashColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            onPressed: () => print('favorite'),
                                            icon: const Icon(
                                              Icons.favorite_border,
                                              size: 15,
                                            ))
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.all(0),
                        title: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      width: 1, color: Colors.grey.shade300))),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () => print('item'),
                                child: const Image(
                                  height: 50,
                                  image: NetworkImage(
                                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      onTap: () => print('item'),
                                      child: const Text(
                                        'El principito blablabalbalab...',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  '10€',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.blue,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  '15€',
                                                  style: TextStyle(
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      fontSize: 18,
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                            Text(
                                              '10% OFF',
                                              style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 11,
                                              ),
                                            ),
                                          ],
                                        ),
                                        IconButton(
                                            splashColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            onPressed: () => print('favorite'),
                                            icon: const Icon(
                                              Icons.favorite_border,
                                              size: 15,
                                            ))
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.all(0),
                        title: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      width: 1, color: Colors.grey.shade300))),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () => print('item'),
                                child: const Image(
                                  height: 50,
                                  image: NetworkImage(
                                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      onTap: () => print('item'),
                                      child: const Text(
                                        'El principito blablabalbalab...',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  '10€',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.blue,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  '15€',
                                                  style: TextStyle(
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      fontSize: 18,
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                            Text(
                                              '10% OFF',
                                              style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 11,
                                              ),
                                            ),
                                          ],
                                        ),
                                        IconButton(
                                            splashColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            onPressed: () => print('favorite'),
                                            icon: const Icon(
                                              Icons.favorite_border,
                                              size: 15,
                                            ))
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.all(0),
                        title: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      width: 1, color: Colors.grey.shade300))),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () => print('item'),
                                child: const Image(
                                  height: 50,
                                  image: NetworkImage(
                                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      onTap: () => print('item'),
                                      child: const Text(
                                        'El principito blablabalbalab...',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  '10€',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.blue,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  '15€',
                                                  style: TextStyle(
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      fontSize: 18,
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                            Text(
                                              '10% OFF',
                                              style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 11,
                                              ),
                                            ),
                                          ],
                                        ),
                                        IconButton(
                                            splashColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            onPressed: () => print('favorite'),
                                            icon: const Icon(
                                              Icons.favorite_border,
                                              size: 15,
                                            ))
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.all(0),
                        title: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      width: 1, color: Colors.grey.shade300))),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () => print('item'),
                                child: const Image(
                                  height: 50,
                                  image: NetworkImage(
                                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      onTap: () => print('item'),
                                      child: const Text(
                                        'El principito blablabalbalab...',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  '10€',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.blue,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  '15€',
                                                  style: TextStyle(
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      fontSize: 18,
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                            Text(
                                              '10% OFF',
                                              style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 11,
                                              ),
                                            ),
                                          ],
                                        ),
                                        IconButton(
                                            splashColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            onPressed: () => print('favorite'),
                                            icon: const Icon(
                                              Icons.favorite_border,
                                              size: 15,
                                            ))
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.all(0),
                        title: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      width: 1, color: Colors.grey.shade300))),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () => print('item'),
                                child: const Image(
                                  height: 50,
                                  image: NetworkImage(
                                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      onTap: () => print('item'),
                                      child: const Text(
                                        'El principito blablabalbalab...',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  '10€',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.blue,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  '15€',
                                                  style: TextStyle(
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      fontSize: 18,
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                            Text(
                                              '10% OFF',
                                              style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 11,
                                              ),
                                            ),
                                          ],
                                        ),
                                        IconButton(
                                            splashColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            onPressed: () => print('favorite'),
                                            icon: const Icon(
                                              Icons.favorite_border,
                                              size: 15,
                                            ))
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.all(0),
                        title: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      width: 1, color: Colors.grey.shade300))),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () => print('item'),
                                child: const Image(
                                  height: 50,
                                  image: NetworkImage(
                                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      onTap: () => print('item'),
                                      child: const Text(
                                        'El principito blablabalbalab...',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  '10€',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.blue,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  '15€',
                                                  style: TextStyle(
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      fontSize: 18,
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                            Text(
                                              '10% OFF',
                                              style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 11,
                                              ),
                                            ),
                                          ],
                                        ),
                                        IconButton(
                                            splashColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            onPressed: () => print('favorite'),
                                            icon: const Icon(
                                              Icons.favorite_border,
                                              size: 15,
                                            ))
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.all(0),
                        title: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      width: 1, color: Colors.grey.shade300))),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () => print('item'),
                                child: const Image(
                                  height: 50,
                                  image: NetworkImage(
                                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      onTap: () => print('item'),
                                      child: const Text(
                                        'El principito blablabalbalab...',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  '10€',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.blue,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  '15€',
                                                  style: TextStyle(
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      fontSize: 18,
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                            Text(
                                              '10% OFF',
                                              style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 11,
                                              ),
                                            ),
                                          ],
                                        ),
                                        IconButton(
                                            splashColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            onPressed: () => print('favorite'),
                                            icon: const Icon(
                                              Icons.favorite_border,
                                              size: 15,
                                            ))
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.all(0),
                        title: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      width: 1, color: Colors.grey.shade300))),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () => print('item'),
                                child: const Image(
                                  height: 50,
                                  image: NetworkImage(
                                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      onTap: () => print('item'),
                                      child: const Text(
                                        'El principito blablabalbalab...',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  '10€',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.blue,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  '15€',
                                                  style: TextStyle(
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      fontSize: 18,
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                            Text(
                                              '10% OFF',
                                              style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 11,
                                              ),
                                            ),
                                          ],
                                        ),
                                        IconButton(
                                            splashColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            onPressed: () => print('favorite'),
                                            icon: const Icon(
                                              Icons.favorite_border,
                                              size: 15,
                                            ))
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.all(0),
                        title: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      width: 1, color: Colors.grey.shade300))),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () => print('item'),
                                child: const Image(
                                  height: 50,
                                  image: NetworkImage(
                                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      onTap: () => print('item'),
                                      child: const Text(
                                        'El principito blablabalbalab...',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  '10€',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.blue,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  '15€',
                                                  style: TextStyle(
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      fontSize: 18,
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                            Text(
                                              '10% OFF',
                                              style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 11,
                                              ),
                                            ),
                                          ],
                                        ),
                                        IconButton(
                                            splashColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            onPressed: () => print('favorite'),
                                            icon: const Icon(
                                              Icons.favorite_border,
                                              size: 15,
                                            ))
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.all(0),
                        title: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      width: 1, color: Colors.grey.shade300))),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () => print('item'),
                                child: const Image(
                                  height: 50,
                                  image: NetworkImage(
                                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      onTap: () => print('item'),
                                      child: const Text(
                                        'El principito blablabalbalab...',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  '10€',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.blue,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  '15€',
                                                  style: TextStyle(
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      fontSize: 18,
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                            Text(
                                              '10% OFF',
                                              style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 11,
                                              ),
                                            ),
                                          ],
                                        ),
                                        IconButton(
                                            splashColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            onPressed: () => print('favorite'),
                                            icon: const Icon(
                                              Icons.favorite_border,
                                              size: 15,
                                            ))
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.all(0),
                        title: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      width: 1, color: Colors.grey.shade300))),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () => print('item'),
                                child: const Image(
                                  height: 50,
                                  image: NetworkImage(
                                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      onTap: () => print('item'),
                                      child: const Text(
                                        'El principito blablabalbalab...',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  '10€',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.blue,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  '15€',
                                                  style: TextStyle(
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      fontSize: 18,
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                            Text(
                                              '10% OFF',
                                              style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 11,
                                              ),
                                            ),
                                          ],
                                        ),
                                        IconButton(
                                            splashColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            onPressed: () => print('favorite'),
                                            icon: const Icon(
                                              Icons.favorite_border,
                                              size: 15,
                                            ))
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.all(0),
                        title: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      width: 1, color: Colors.grey.shade300))),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () => print('item'),
                                child: const Image(
                                  height: 50,
                                  image: NetworkImage(
                                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      onTap: () => print('item'),
                                      child: const Text(
                                        'El principito blablabalbalab...',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  '10€',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.blue,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  '15€',
                                                  style: TextStyle(
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      fontSize: 18,
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                            Text(
                                              '10% OFF',
                                              style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 11,
                                              ),
                                            ),
                                          ],
                                        ),
                                        IconButton(
                                            splashColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            onPressed: () => print('favorite'),
                                            icon: const Icon(
                                              Icons.favorite_border,
                                              size: 15,
                                            ))
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
