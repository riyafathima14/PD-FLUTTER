import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/files/alllearners.dart';
import 'package:pd/screens/home_page.dart';
import '../files/learner.dart';

class ToplearnersScreen extends StatefulWidget {
  const ToplearnersScreen({super.key});

  @override
  State<ToplearnersScreen> createState() => _ToplearnersScreenState();
}

class _ToplearnersScreenState extends State<ToplearnersScreen> {
  List<Learner> filteredLearners = allLearners;
  int? selectedCourseIndex = 0;
  @override
  Widget build(BuildContext context) {
    
    List<String> courseNames = [
      'All',
      'Data Science',
      'Designs',
      'Development',
      'Graphics',
      'Marketing',
      'Buisness'
    ];

    void filterLearners(int? index) {
      setState(() {
        if (index == 0) {
          filteredLearners = allLearners;
        } else {
          filteredLearners = allLearners
              .where((learner) => learner.category == courseNames[index!])
              .toList();
        }
      });
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            },
            icon: const Icon(Icons.arrow_back)),
        actions: [
          const SizedBox(
            width: 50,
          ),
          Text(
            'Top Learners',
            style: GoogleFonts.nunito(
                color: const Color(0xFF260446),
                fontSize: 15,
                fontWeight: FontWeight.w700),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {},
            child: Image.asset('assets/images/social_leaderboard.png'),
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 45,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: courseNames.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedCourseIndex = index;
                            filterLearners(index);
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: selectedCourseIndex == index
                                ? const Color(
                                    0xFF414ECA) 
                                : Colors.white,
                            border: Border.all(
                              color: const Color(0xFF414ECA),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 10.0),
                          child: Center(
                            child: Text(
                              courseNames[index],
                              style: GoogleFonts.nunito(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: selectedCourseIndex == index
                                    ? Colors.white // Blue for selected course
                                    : const Color(0xFF414ECA),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 800,
                child: ListView.builder(
                  itemCount: filteredLearners.length,
                  itemBuilder: (context, index) {
                    final learner = filteredLearners[index];
                    int rank = int.parse(learner.rank);

                    return Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "${index + 1}",
                              style: GoogleFonts.nunito(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFF000000),
                              ),
                            ),
                            const SizedBox(width: 10),
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage(learner.imageUrl),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  learner.name,
                                  style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xFF414ECA),
                                  ),
                                ),
                                Text(
                                  learner.category,
                                  style: GoogleFonts.nunito(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Text(
                              learner.rank,
                              style: GoogleFonts.nunito(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: rank <= 3
                                    ? Colors.yellow
                                    : (rank >= 4 ? Colors.red : Colors.green),
                              ),
                            ),
                            Icon(
                              rank == 4
                                  ? Icons.arrow_drop_up
                                  : Icons.arrow_drop_down,
                              color: rank <= 3
                                  ? Colors.yellow
                                  : (rank >= 4 ? Colors.red : Colors.green),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
