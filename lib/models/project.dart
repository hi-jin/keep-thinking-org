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
      Project(
        title: "Upciety",
        description: """프리랜서 앱 개발자로 활동하며 개발에 참여한 Flutter 앱입니다.\
플라스틱을 제출하면 현금과 비슷하게 사용할 수 있는 포인트를 적립받을 수 있습니다.\
수거된 플라스틱은 새로운 제품으로 재탄생합니다.""",
        detailedDescription:
            """(주)제4의공간에서 개발한 앱으로, 저는 Flutter를 이용한 앱 전반 및 Firebase Functions를 활용한 백엔드 로직 개발을 진행했습니다.""",
        imageUrl: "assets/images/projects/upciety.png",
        url: "https://www.4thplace.io/",
        progress: 0.5,
      ),
      Project(
        title: "Omok-RL",
        description: """강화학습을 이용한 오목 AI입니다.\
파이썬으로 구현한 오목 게임을 스스로 플레이하며 학습합니다.""",
        detailedDescription: null,
        imageUrl: "assets/images/projects/omok.png",
        url: "https://github.com/hi-jin/Omok-RL",
        progress: 0.2,
      ),
      Project(
        title: "jeju-translator",
        description: """LLM을 파인튜닝하여 만든 제주방언 번역기입니다.\
표준어를 제주방언으로 번역해주는 서비스입니다.\
pko-t5모델을 사용하여 제주방언 데이터셋을 학습시켰습니다.""",
        detailedDescription: "AI Hub에서 제공한 AI데이터를 이용한 한국지능정보사회진흥원의 사업결과입니다.",
        imageUrl: "assets/images/projects/jeju_translator.png",
        url: "https://github.com/hi-jin/jeju-translator",
        progress: 0.8,
      ),
    ]);
