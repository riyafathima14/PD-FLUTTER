import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetReviews {
  static List<int> rating = [5, 4, 2, 3, 1, 0];
  static int selectedRatingIndex = 0;

  static Widget buildReviewsSection(double screenWidth, BuildContext context) {
    // Adjust font sizes based on screen width
    double titleFontSize =
        screenWidth > 600 ? 14 : 12; // Larger font for wider screens
    double subtitleFontSize = screenWidth > 600 ? 13 : 11;
    bool isFavorite;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth / 20),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start, // Align children to the start
        children: [
          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween, // Space between elements
            children: [
              Text(
                "4.8 (1564 reviews)",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: titleFontSize,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF000000)),
              ),
              Text(
                "See All",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF414ECA)),
              ),
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 20,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: rating.length + 1,
              itemBuilder: (context, index) {
                bool isSelected = selectedRatingIndex == index;
                return Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: GestureDetector(
                    onTap: () {
                      selectedRatingIndex = index;
                      (context as Element).markNeedsBuild();
                    },
                    child: Container(
                      height: 20,
                      width: 49,
                      decoration: BoxDecoration(
                        color:
                            isSelected ? const Color(0xFF414ECA) : Colors.white,
                        border: Border.all(
                          color: const Color(0xFF414ECA),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: isSelected
                                ? Colors.white
                                : const Color(0xFF414ECA),
                            size: 10,
                          ),
                          Text(
                            index == 0 ? "All" : "${rating[index - 1]}",
                            style: GoogleFonts.nunito(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: isSelected
                                  ? Colors.white
                                  : const Color(0xFF414ECA),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 10),
          // Review Item Builder
          _buildReviewItem(
            screenWidth,
            'assets/images/profile2.png',
            'Vivaan Malhotra',
            '5',
            'ShareInfo Design: Clear communication & user-friendly design for GreenTech\'s website.',
            '124',
            '10 Days ago',
            isFavorite = true,
          ),
          _buildReviewItem(
            screenWidth,
            'assets/images/profile3.png',
            'Priya Krishnamurthy',
            '4',
            'ShareInfo Design: Clear communication & user-friendly design for GreenTech\'s website.',
            '123',
            '20 Days ago',
            isFavorite = false,
          ),
          _buildReviewItem(
            screenWidth,
            'assets/images/profile4.png',
            'Arjun Krishna',
            '4',
            'ShareInfo Design: Clear communication & user-friendly design for GreenTech\'s website.',
            '15',
            '20 Days ago',
            isFavorite = false,
          ),
          _buildReviewItem(
            screenWidth,
            'assets/images/profile5.png',
            'Saiba Raghavan',
            '4',
            'ShareInfo Design: Clear communication & user-friendly design for GreenTech\'s website.',
            '52',
            '20 Days ago',
            isFavorite = false,
          ),
        ],
      ),
    );
  }

  static Widget _buildReviewItem(
      double screenWidth,
      String imagePath,
      String name,
      String rating,
      String reviewText,
      String likes,
      String timeAgo,
      bool isFavorite) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start, // Align children to the start
      children: [
        Row(
          children: [
            Image.asset(imagePath,
                width: 40, height: 40), // Set size of profile image
            const SizedBox(width: 8),
            Expanded(
              // Allow name to take available space
              child: Text(
                name,
                style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF000000)),
              ),
            ),
            Container(
              height: 20,
              width: 49,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xFF414ECA),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.star,
                    color: Color(0xFF414ECA),
                    size: 10,
                  ),
                  Text(
                    rating,
                    style: GoogleFonts.nunito(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF414ECA),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          reviewText,
          style: GoogleFonts.nunito(
              fontSize: 13,
              fontWeight: FontWeight.w700,
              color: const Color(0xFF8B8B8B)),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            isFavorite
                ? const Icon(
                    Icons.favorite_rounded,
                    color: Colors.redAccent,
                  )
                : const Icon(Icons.favorite_border_outlined),
            const SizedBox(width: 5),
            Text(
              likes,
              style: GoogleFonts.nunito(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF474545)),
            ),
            const SizedBox(width: 20),
            Text(
              timeAgo,
              textAlign: TextAlign.center,
              style: GoogleFonts.nunito(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF8B8B8B)),
            ),
          ],
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
