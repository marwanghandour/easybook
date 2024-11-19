class BookEntity {
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

  BookEntity({
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
}
