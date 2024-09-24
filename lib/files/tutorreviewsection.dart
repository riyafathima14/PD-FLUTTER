import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetTutorReviews {
  static List<int> rating = [5, 4, 2, 3, 1, 0];
  static int selectedRatingIndex = 0;
  static Widget buildTutorReviewsSection(double screewidth) {
    return Padding(
      padding: const EdgeInsets.all(0.1),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "4.8(1564 reviews)",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF000000)),
              ),
              const Spacer(),
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
          const SizedBox(
            height: 10,
          ),
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
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset('assets/images/profile2.png'),
              const SizedBox(
                width: 8,
              ),
              Text(
                'Vivaan Malhotra',
                style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF000000)),
              ),
              const Spacer(),
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
                      "5",
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
          const SizedBox(
            height: 8,
          ),
          Text(
            "ShareInfo Design: Clear communication & user-friendly design for GreenTech's website.",
            style: GoogleFonts.nunito(
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF8B8B8B)),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Icon(
                Icons.favorite,
                color: Colors.redAccent,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                "124",
                style: GoogleFonts.nunito(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF474545)),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                "10 Days ago",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF8B8B8B)),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset('assets/images/profile2.png'),
              const SizedBox(
                width: 8,
              ),
              Text(
                'Vivaan Malhotra',
                style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF000000)),
              ),
              const Spacer(),
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
                      "5",
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
          const SizedBox(
            height: 8,
          ),
          Text(
            "ShareInfo Design: Clear communication & user-friendly design for GreenTech's website.",
            style: GoogleFonts.nunito(
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF8B8B8B)),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Icon(
                Icons.favorite,
                color: Colors.redAccent,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                "124",
                style: GoogleFonts.nunito(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF474545)),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                "10 Days ago",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF8B8B8B)),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset('assets/images/profile3.png'),
              const SizedBox(
                width: 8,
              ),
              Text(
                'Priya Krishnamurthy',
                style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF000000)),
              ),
              const Spacer(),
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
                      color:  Color(0xFF414ECA),
                      size: 10,
                    ),
                    Text(
                      "4",
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
          const SizedBox(
            height: 8,
          ),
          Text(
            "ShareInfo Design: Clear communication & user-friendly design for GreenTech's website.",
            style: GoogleFonts.nunito(
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF8B8B8B)),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Icon(Icons.favorite_border_outlined),
              const SizedBox(
                width: 5,
              ),
              Text(
                "123",
                style: GoogleFonts.nunito(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color:const  Color(0xFF474545)),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                "20 Days ago",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF8B8B8B)),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset('assets/images/profile3.png'),
              const SizedBox(
                width: 8,
              ),
              Text(
                'Priya Krishnamurthy',
                style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF000000)),
              ),
              const Spacer(),
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
                      color:  Color(0xFF414ECA),
                      size: 10,
                    ),
                    Text(
                      "4",
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
          const SizedBox(
            height: 8,
          ),
          Text(
            "ShareInfo Design: Clear communication & user-friendly design for GreenTech's website.",
            style: GoogleFonts.nunito(
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF8B8B8B)),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Icon(Icons.favorite_border_outlined),
              const SizedBox(
                width: 5,
              ),
              Text(
                "123",
                style: GoogleFonts.nunito(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color:const  Color(0xFF474545)),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                "20 Days ago",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF8B8B8B)),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset('assets/images/profile4.png'),
              const SizedBox(
                width: 8,
              ),
              Text(
                'Arjun Krishna',
                style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF000000)),
              ),
              const Spacer(),
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
                      color:  Color(0xFF414ECA),
                      size: 10,
                    ),
                    Text(
                      "4",
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
          const SizedBox(
            height: 8,
          ),
          Text(
            "ShareInfo Design: Clear communication & user-friendly design for GreenTech's website.",
            style: GoogleFonts.nunito(
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF8B8B8B)),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Icon(Icons.favorite_border_outlined),
              const SizedBox(
                width: 5,
              ),
              Text(
                "15",
                style: GoogleFonts.nunito(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF474545)),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                "20 Days ago",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF8B8B8B)),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset('assets/images/profile4.png'),
              const SizedBox(
                width: 8,
              ),
              Text(
                'Arjun Krishna',
                style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF000000)),
              ),
              const Spacer(),
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
                      color:  Color(0xFF414ECA),
                      size: 10,
                    ),
                    Text(
                      "4",
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
          const SizedBox(
            height: 8,
          ),
          Text(
            "ShareInfo Design: Clear communication & user-friendly design for GreenTech's website.",
            style: GoogleFonts.nunito(
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF8B8B8B)),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Icon(Icons.favorite_border_outlined),
              const SizedBox(
                width: 5,
              ),
              Text(
                "15",
                style: GoogleFonts.nunito(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF474545)),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                "20 Days ago",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF8B8B8B)),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset('assets/images/profile5.png'),
              const SizedBox(
                width: 8,
              ),
              Text(
                'Saiba Raghavan',
                style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF000000)),
              ),
              const Spacer(),
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
                      "4",
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
          const SizedBox(
            height: 8,
          ),
          Text(
            "ShareInfo Design: Clear communication & user-friendly design for GreenTech's website.",
            style: GoogleFonts.nunito(
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF8B8B8B)),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Icon(Icons.favorite_border_outlined),
              const SizedBox(
                width: 5,
              ),
              Text(
                "52",
                style: GoogleFonts.nunito(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color:const  Color(0xFF474545)),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                "20 Days ago",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF8B8B8B)),
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              Image.asset('assets/images/profile5.png'),
              const SizedBox(
                width: 8,
              ),
              Text(
                'Saiba Raghavan',
                style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF000000)),
              ),
              const Spacer(),
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
                      "4",
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
          const SizedBox(
            height: 8,
          ),
          Text(
            "ShareInfo Design: Clear communication & user-friendly design for GreenTech's website.",
            style: GoogleFonts.nunito(
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF8B8B8B)),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Icon(Icons.favorite_border_outlined),
              const SizedBox(
                width: 5,
              ),
              Text(
                "52",
                style: GoogleFonts.nunito(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color:const  Color(0xFF474545)),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                "20 Days ago",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF8B8B8B)),
              ),
            ],
          ),
          const SizedBox(height: 10,),
        ],
      ),
    );
  }
}
