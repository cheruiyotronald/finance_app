class Contacts{
  String name;
  String imageLink;

  Contacts(this.name, this.imageLink);
}

List<Contacts> contacts(){
  return[
    Contacts("Ronald", "assets/images/image6.webp"),
    Contacts("James", "assets/images/image7.webp"),
    Contacts("Kate", "assets/images/image2.webp"),
    Contacts("Eve", "assets/images/image1.jpg"),
    Contacts("Mark", "assets/images/image5.webp"),
    Contacts("Scarlet", "assets/images/image8.webp"),
    Contacts("Gary", "assets/images/image9.webp"),
  ];
}