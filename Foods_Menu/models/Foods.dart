class Foods {
  final String names;
  final String imageUrl;
  final String price;
  final String desc;

  Foods({required this.names, required this.price, required this.imageUrl ,required this.desc});
}
final String images = "images";
Foods food1 = Foods(names: "Burger", price: "500₺", imageUrl: "$images/burger.jpg", desc: "A classic beef burger stacked with fresh lettuce, tomatoes, cheese, and a special house sauce.");
Foods food2 = Foods(names: "Cucumber & Rice", price: "350₺", imageUrl: "$images/cucumberrice.jpg", desc: "Light and refreshing cucumber slices served with seasoned rice for a healthy meal.");
Foods food3 = Foods(names: "Fruit Bowl", price: "600₺", imageUrl: "$images/fruitbowl.jpg", desc: "A colorful mix of fresh, juicy fruits – perfect for a vitamin-packed snack or breakfast.");
Foods food4 = Foods(names: "Fruits", price: "300₺", imageUrl: "$images/fruits.jpg", desc: "A natural assortment of seasonal fruits bursting with flavor and nutrition.");
Foods food5 = Foods(names: "Macarons", price: "250₺", imageUrl: "$images/macarons.jpg", desc: "Delicate French macarons with crisp shells and creamy fillings in assorted flavors.");
Foods food6 = Foods(names: "Pancakes", price: "400₺", imageUrl: "$images/pancakes.jpg", desc: "Fluffy golden pancakes stacked high, served with syrup and fresh fruits.");
Foods food7 = Foods(names: "Sandwich", price: "375₺", imageUrl: "$images/sandwich.jpg", desc: "A hearty sandwich layered with meats, cheese, and veggies on artisan bread.");
Foods food8 = Foods(names: "Spaghetti", price: "700₺", imageUrl: "$images/spaghetti.jpg", desc: "Classic Italian spaghetti tossed in a rich tomato sauce with herbs and parmesan.");
Foods food9 = Foods(names: "Steaks", price: "1200₺", imageUrl: "$images/steaks.jpg", desc: "Tender, juicy steaks grilled to perfection and seasoned with gourmet spices.");
Foods food10 = Foods(names: "Tomatoes", price: "100₺", imageUrl: "$images/tomatoes.jpg", desc: "Fresh, ripe tomatoes packed with flavor – perfect for salads, sauces, or snacking.");
List<Foods> foodList = [food1,food2,food3,food4,food5,food6,food7,food8,food9,food10];