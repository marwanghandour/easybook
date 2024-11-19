import '../../domain/entities/book_entity.dart';

class BookModel {
  final String title;
  final List<String> authorNames;
  final String key;
  final String coverEditionKey;
  final int ratingsCount;
  final double ratingsAverage;
  final List<String> subject;
  final String firstPublishYear;
  final List<String> publisher;
  final String isbn;
  final List<String> publishDate;

  BookModel({
    required this.title,
    required this.authorNames,
    required this.key,
    required this.coverEditionKey,
    required this.ratingsCount,
    required this.ratingsAverage,
    required this.subject,
    required this.firstPublishYear,
    required this.publisher,
    required this.isbn,
    required this.publishDate,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      title: json['title'] ?? '',
      authorNames: List<String>.from(json['author_name'] ?? []),
      key: json['key'] ?? '',
      coverEditionKey: json['cover_edition_key'] ?? '',
      ratingsCount: json['ratings_count'] ?? 0,
      ratingsAverage: (json['ratings_average'] ?? 0).toDouble(),
      subject: List<String>.from(json['subject'] ?? []),
      firstPublishYear: json['first_publish_year']?.toString() ?? '',
      publisher: List<String>.from(json['publisher'] ?? []),
      isbn: (json['isbn'] ?? [])[0] ?? '',
      publishDate: List<String>.from(json['publish_date'] ?? []),
    );
  }

  BookEntity toEntity() {
    return BookEntity(
      title: title,
      authorNames: authorNames,
      key: key,
      coverEditionKey: coverEditionKey,
      ratingsCount: ratingsCount,
      ratingsAverage: ratingsAverage,
      subject: subject,
      firstPublishYear: firstPublishYear,
      publisher: publisher,
      isbn: isbn,
      publishDate: publishDate,
    );
  }
}
