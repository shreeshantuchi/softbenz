import 'package:html/parser.dart' as html_parser;
import 'package:html/dom.dart';

extension HtmlDecoder on String {
  List<String> decodeHtmlWithBullets() {
    // Parse the HTML
    Document document = html_parser.parse(this);

    // Find all paragraph and header tags
    List<Element> paragraphs = document.querySelectorAll('p, h3');

    // Convert each paragraph or header to a bullet point or a title
    List<String> bulletPoints = [];
    for (Element element in paragraphs) {
      if (element.localName == 'h3') {
        // Treat headers differently (no bullets for headers)
        bulletPoints.add("${element.text.trim()}:");
      } else {
        // Add a bullet point for each paragraph
        bulletPoints.add("• ${element.text.trim()}");
      }
    }

    return bulletPoints;
  }
}
