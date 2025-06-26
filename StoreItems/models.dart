class Items {
  final String img;
  final String name;
  final String time;
  final String ticket;
  final String buyticket;
  final int percentage;
  Items({required this.img, required this.name ,required this.time, required this.ticket, required this.buyticket,required this.percentage});
}

Items i1 = Items(img: "images/siyah_araba.png", name: "Maserati GranTurismo", time: "1 Day", ticket: "100.000", buyticket: "Buy Ticket",percentage: 4);
Items i2 = Items(img: "images/motorum.png", name: "Aprilia Tuareg 660", time: "2 Days", ticket: "1.000", buyticket: "Buy Ticket",percentage: 16);
Items i3 = Items(img: "images/saat.png", name: "Apple Watch Ultra", time: "2 Days", ticket: "500", buyticket: "Buy Ticket",percentage: 20);
Items i4 = Items(img: "images/gri_araba.png", name: "Maserati Ghibli", time: "12 Days", ticket: "50.000", buyticket: "Buy Ticket",percentage: 54);
Items i5 = Items(img: "images/kamera.png", name: "GoPro Hero 11 Black", time: "26 Days", ticket: "500", buyticket: "Buy Ticket",percentage: 80);
Items i6 = Items(img: "images/motorum2.png", name: "Aprilia RSV4", time: "29 Days", ticket: "5.000", buyticket: "Buy Ticket",percentage: 80);

List<Items> itemList = [i1,i2,i3,i4,i5,i6];