import 'package:flutter/material.dart';

const String profileUrl =
    "https://images.unsplash.com/photo-1599834562135-b6fc90e642ca?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8bWFuJTIwcHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60";
const String readyToday =
    "https://images.unsplash.com/photo-1518378379207-3418372afea3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80";

const List tags = [
  {"label": "Education", "color": Color(0xFF7871aa)},
  {"label": "Self-development", "color": Color(0xFF7fb069)},
  {"label": "Psychology", "color": Color(0xFFcc7e85)}
];

const List storeTags = [
  {"label": "Education", "color": Color(0xFF7871aa)},
  {"label": "Self-development", "color": Color(0xFF7fb069)},
  {"label": "Psychology", "color": Color(0xFFcc7e85)},
  {"label": "Fantasy", "color": Color(0xFF76818e)},
  {"label": "Adventures", "color": Color(0xFFcf4d6f)},
  {"label": "Science-fiction", "color": Color(0xFFc86fc9)},
  {"label": "Detectives", "color": Color(0xFF8f8073)}
];

const List specialForYouJson = [
  {
    "img": "https://covers.openlibrary.org/b/id/12726999-L.jpg",
    "price": "5.00",
    "title": "Shatter me",
    "sub_title": "1st ed.",
    "author_name": "Tahereh Mafi",
    "rate": 4.3,
    "favourite": true,
    "page": "87"
  },
  {
    "img": "https://covers.openlibrary.org/b/id/10362743-L.jpg",
    "price": "8.99",
    "title": "A Court of Thorns and Roses",
    "sub_title": "A Court of Thorns and Roses",
    "author_name": "Sarah J. Maas",
    "rate": 4.1,
    "favourite": false,
    "page": "263"
  },
  {
    "img": "https://covers.openlibrary.org/b/id/8743774-L.jpg",
    "price": "3.40",
    "title": "Where the crawdads sing",
    "sub_title": "First large print edition.",
    "author_name": "Delia Owens",
    "rate": 3.2,
    "favourite": false,
    "page": "60"
  },
  {
    "img": "https://covers.openlibrary.org/b/id/10696993-L.jpg",
    "price": "5.99",
    "title": "The Seven Husbands of Evelyn Hugo",
    "sub_title": "A Novel",
    "author_name": "Taylor Jenkins Reid",
    "rate": 4.1,
    "favourite": true,
    "page": "872"
  },
  {
    "img": "https://covers.openlibrary.org/b/id/12567115-L.jpg",
    "price": "2.99",
    "title": "Reminders of Him",
    "sub_title": "A Novel",
    "author_name": "Colleen Hoover",
    "rate": 2.0,
    "favourite": false,
    "page": "76"
  }
];

List reviewsPeople = [
  {
    "img":
        "https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    "name": "Miranda",
    "rate": 3.0,
    "text": "For once I actually thought Colleen wasn’t going to make me cry."
  },
  {
    "img":
        "https://images.unsplash.com/photo-1523701911984-474f3d34537b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDZ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "name": "Selena",
    "rate": 4.5,
    "text":
        "I wanted to give this book 5 stars but just couldn’t. There are so many f-bombs I almost stopped reading it but I kept at it. Glad I did too. But I will never read it again or listen to it because I don’t need that word in my mind. Why oh why is it so necessary to the story?"
  }
];

const List similarBooksJson = [
  {
    "img": "https://covers.openlibrary.org/b/id/12860069-L.jpg",
    "price": "2.50",
    "title": "I'm Glad My Mom Died",
    "sub_title": "I'm Glad My Mom Died",
    "author_name": "Jennette McCurdy",
    "rate": 4.0,
    "favourite": false,
    "page": "200"
  },
  {
    "img": "https://covers.openlibrary.org/b/id/12905571-L.jpg",
    "price": "5.99",
    "title": "The Love Hypothesis",
    "sub_title": "The Love Hypothesis",
    "author_name": "Ali Hazelwood",
    "rate": 3.5,
    "favourite": false,
    "page": "150"
  },
  {
    "img": "https://covers.openlibrary.org/b/id/402210-L.jpg",
    "price": "2.20",
    "title": "The 48 Laws of Power",
    "sub_title": "The 48 Laws of Power",
    "author_name": "Robert Greene",
    "rate": 4.07,
    "favourite": false,
    "page": "60"
  },
];
