class Data {
  final List<Map<String, dynamic>> _data = [
    {
      "id": 1,
      "place": "Santorini",
      "country": "Greece",
      "rate": 5,
      "reviews": 21323,
      "title":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt",
      "overview":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "price": 543.50,
      "days": 2,
      "image":
          "https://imageio.forbes.com/specials-images/imageserve/627e31007be5959e6359a3ab/Oia--Santorini-Island--Cyclades--Greece--Twilight--Houses-and-churches-after-sunset/960x0.jpg?format=jpg&width=960"
    },
    {
      "id": 2,
      "place": "Barbados",
      "country": "Bridgetown",
      "rate": 5,
      "reviews": 31323,
      "title":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt",
      "overview":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "price": 243.50,
      "days": 1,
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Bridgetown2.jpg/800px-Bridgetown2.jpg?20051112135505"
    },
    {
      "id": 3,
      "place": "Galápados",
      "country": "Ecuador",
      "rate": 5,
      "reviews": 11823,
      "title":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt",
      "overview":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "price": 643.50,
      "days": 2,
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/Lobo_marino_%28Zalophus_californianus_wollebaeki%29%2C_Punta_Pitt%2C_isla_de_San_Crist%C3%B3bal%2C_islas_Gal%C3%A1pagos%2C_Ecuador%2C_2015-07-24%2C_DD_11.JPG/260px-Lobo_marino_%28Zalophus_californianus_wollebaeki%29%2C_Punta_Pitt%2C_isla_de_San_Crist%C3%B3bal%2C_islas_Gal%C3%A1pagos%2C_Ecuador%2C_2015-07-24%2C_DD_11.JPG"
    },
    {
      "id": 4,
      "place": "Pascua",
      "country": "Chile",
      "rate": 5,
      "reviews": 45678,
      "title":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt",
      "overview":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "price": 1043.50,
      "days": 4,
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/Amanecer_en_Tongariki%2C_Isla_de_Pascua_-_Flickr_-_Alanbritom.jpg/275px-Amanecer_en_Tongariki%2C_Isla_de_Pascua_-_Flickr_-_Alanbritom.jpg"
    },
  ];
  Future<List<Map<String, dynamic>>> fetchData() async {
    return Future.delayed(
      Duration(seconds: 4),
      () {
        return _data;
      },
    );
  }
}
