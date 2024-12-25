import 'package:flutter/material.dart';

class WorkExperience extends StatefulWidget {
  const WorkExperience({super.key});

  @override
  State<WorkExperience> createState() => _WorkExperienceState();
}

class _WorkExperienceState extends State<WorkExperience> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 125, 230, 191),
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Work Experience',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'roboto',
            ),
          ),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Young Dev',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'roboto',
                ),
              ),
              Text(
                'Lahore, Pakistan',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'roboto',
                ),
              ),
              Text(
                '07/2024-10/2024',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'roboto',
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Responsibilities:',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'roboto',
                ),
              ),
              SizedBox(height: 10),
              Text(
                '''Design and Development: Assist in designing and developing user-friendly, responsive web interfaces using HTML, CSS, and JavaScript.

Code Maintenance: Maintain and update existing codebases, ensuring clean, efficient, and modular code structure.

Collaboration: Work closely with UX/UI designers, back-end developers, and other team members to create seamless and intuitive user experiences.

Bug Fixing: Identify, troubleshoot, and resolve bugs promptly, ensuring smooth functionality across various browsers and devices.

Testing: Conduct comprehensive testing of web applications to ensure they meet quality, performance, and security standards.

Learning and Development: Stay up-to-date with the latest front-end technologies, frameworks, and best practices, continuously improving technical skills.

Documentation: Write clear, concise, and comprehensive documentation for code, processes, and systems to ensure knowledge sharing within the team.

Feedback Integration: Incorporate feedback from senior developers and stakeholders to enhance and refine web projects.

Version Control: Utilize version control systems like Git to manage code and collaborate effectively with team members.

Optimization: Optimize web applications for maximum performance, speed, and scalability to improve user experience.
                ''',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontFamily: 'Roboto',
                ),
              ),
              SizedBox(height: 20), // Add space between experiences
              Text(
                'Social Media Manager',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'roboto',
                ),
              ),
              Text(
                'Lahore, Pakistan',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'roboto',
                ),
              ),
              Text(
                '2020-2022',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'roboto',
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Responsibilities:',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'roboto',
                ),
              ),
              SizedBox(height: 10),
              Text(
                '''Content Creation: Develop and design creative and engaging content, including posts, graphics, videos, and stories for various social media platforms.

Content Scheduling & Posting: Plan, schedule, and post content across multiple platforms such as Instagram, Facebook, Twitter, LinkedIn, and others.

Community Engagement: Interact with followers, respond to comments and messages, and foster relationships with the online community.

Brand Consistency: Ensure all content aligns with the brand’s voice, values, and marketing goals.

Trend Monitoring: Stay updated with the latest social media trends, tools, and best practices to ensure content is relevant and timely.

Analytics and Reporting: Track, measure, and analyze key metrics (likes, shares, comments, reach) to assess the effectiveness of social media campaigns.

Campaign Management: Plan, execute, and manage social media campaigns to promote products, services, or events.

Audience Research: Identify and research target audiences to tailor content based on their preferences and needs.

Collaboration: Work closely with marketing teams, designers, and other departments to align social media efforts with business objectives.

Influencer Partnerships: Identify and collaborate with influencers to expand brand reach and engagement.

Social Media Advertising: Manage and optimize paid social media ads to boost brand visibility and engagement.

Crisis Management: Handle negative comments or social media crises professionally to protect the brand’s reputation.

Brand Promotion: Use social media to increase brand awareness, promote new products or services, and drive sales.

Competitor Analysis: Monitor competitors' social media strategies and adjust campaigns based on industry trends.''',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontFamily: 'Roboto',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
