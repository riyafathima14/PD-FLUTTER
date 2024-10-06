import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/files/course.dart';

class Widgetcoursecontainer {
  static Widget courseContainer(
      Course course, int selectedCourseIndex, int index, BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromARGB(255, 181, 180, 180),
          width: 1,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(7.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                
                Image.asset(
                  course.imageUrl,
                  width: 70,
                  height: 70, 
                  fit: BoxFit.cover, 
                ),
                const SizedBox(width: 10), 
                Expanded(
                
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Container(
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(106, 179, 178, 178),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          course.category,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.nunito(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF414ECA),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                    
                      Text(
                        course.title,
                        style: GoogleFonts.nunito(
                          color: const Color(0xFF414ECA),
                          fontSize:
                              MediaQuery.of(context).size.width > 600 ? 16 : 14,
                          fontWeight: FontWeight.w700,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Row(
                        children: [
                          Text(
                            "${course.rate}",
                            style: GoogleFonts.nunito(
                              color: const Color(0xFF414ECA),
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            "${course.rate}",
                            style: GoogleFonts.nunito(
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                              color: const Color.fromARGB(136, 135, 134, 134),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Icon(
                            Icons.star_half,
                            color: Color(0xffE6C100),
                            size: 16,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            '${course.rating}',
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(136, 135, 134, 134),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            "${course.enrolledAspirants}",
                            style: GoogleFonts.nunito(
                              color: const Color.fromARGB(136, 135, 134, 134),
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            " Aspirants",
                            style: GoogleFonts.nunito(
                              color: const Color.fromARGB(136, 135, 134, 134),
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        
          const Positioned(
            right: 0,
            top: 0,
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: Icon(
                Icons.bookmarks_outlined,
                color: Color(0xffd9d9d9),
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Widget listCourseContainer(String courseName, int selectedCourseIndex,
      int index, BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

   
    double containerWidth =
        screenWidth > 600 ? screenWidth * 0.13 : screenWidth * 0.30;

    double bottomPadding = screenWidth > 600 ? 16.0 : 8.0;

    return Padding(
      padding: EdgeInsets.only(bottom: bottomPadding, right: 10.0),
      child: Container(
        width: containerWidth,
        decoration: BoxDecoration(
          color: selectedCourseIndex == index
              ? const Color(0xFF414ECA)
              : Colors.white,
          border: Border.all(
            color: const Color(0xFF414ECA),
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: Center(
          child: Text(
            courseName,
            style: GoogleFonts.nunito(
              fontSize: screenWidth > 600 ? 16 : 14,
              fontWeight: FontWeight.w600,
              color: selectedCourseIndex == index
                  ? Colors.white
                  : const Color(0xFF414ECA),
            ),
          ),
        ),
      ),
    );
  }
}
