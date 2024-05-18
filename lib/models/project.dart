import 'package:flutter_riverpod/flutter_riverpod.dart';

class Project {
  final String title;
  final String description;
  final String? detailedDescription;
  final String? imageUrl;
  final String? url;
  final double? progress;

  Project({
    required this.title,
    required this.description,
    required this.detailedDescription,
    required this.imageUrl,
    required this.url,
    required this.progress,
  });
}

final projectsProvider = Provider<List<Project>>((ref) => [
      Project(
        title: 'Fish car (세상에서 가장 못생긴 물고기 자동차 로봇)',
        description: """세상에서 가장 못생긴 물고기, 블롭피쉬를 아시나요?\
블롭피쉬는 물고기 중에서도 가장 못생긴 물고기로 유명합니다.\
이 블롭피쉬를 모티브로 한 자동차 로봇을 만들어보았습니다.
""",
        detailedDescription: """이제 블롭피쉬는 바퀴를 달아 움직임이 자유로워졌습니다.\
못생겼다고 놀린 당신에게 찾아갈 수도 있으니 주의하시길 바랍니다.""",
        imageUrl: "assets/images/projects/fish_car.png",
        url: "https://github.com/hi-jin/fish_car_ros_gazebo",
        progress: 1.0,
      ),
      Project(
        title: "wsprompt",
        description: """ChatGPT를 사용할 때, 프로젝트 디렉토리의 파일을 하나하나 복사해서 붙여넣기 하는 것이 귀찮으셨나요?\
wsprompt는 프로젝트 디렉토리를 스캔하여 파일 내용을 자동으로 클립보드에 복사하는 도구입니다.\
.wspromptignore 또는 .gitignore와 같은 설정을 통해 필터를 설정할 수 있습니다.""",
        detailedDescription: """아래 링크에서 wsprompt를 다운로드 받아 사용해보세요.""",
        imageUrl: "assets/images/projects/wsprompt.png",
        url: "https://github.com/hi-jin/wsprompt",
        progress: 1.0,
      ),
    ]);
