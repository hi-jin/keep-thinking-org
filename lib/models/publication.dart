import 'package:flutter_riverpod/flutter_riverpod.dart';

class Publication {
  final String title;
  final String abs;
  final String authors;
  final String? imageUrl;
  final String? url;
  final String journal;
  final String year;

  Publication({
    required this.title,
    required this.abs,
    required this.authors,
    required this.imageUrl,
    required this.url,
    required this.journal,
    required this.year,
  });
}

final publicationsProvider = Provider<List<Publication>>((ref) => [
      Publication(
        title: "BitNet 양자화 기술 및 가중치 복사를 적용한 한국어 BERT 모델의 경량화 및 성능 분석", // TODO
        abs:
            "Under review...", // TODO "최근 다양한 분야에서 대규모 데이터로 사전학습을 한 뒤, 해당 모델을 파인튜닝하여 사용하는 방식이 뛰어난 성능을 보이며 널리 이용되고 있다. 하지만 이러한 대규모 모델은 추론시 상당한 컴퓨팅 자원이 필요하다. 이에 따라 최근에는 양자화 기법을 통해 모델을 경량화하여 추론 비용을 줄이는 방법이 연구되고 있다. 본 연구에서는 추론 비용을 크게 절약하는 것으로 소개된 BitNet 아키텍처를 활용하여 한국어 BERT 모델을 경량화할 때, 사전학습된 가중치를 활용하는 방법을 탐구하였다. 간단한 가중치 복사만으로도 양자화된 모델의 성능 유지에 도움이 될 수 있다는 사실을 확인함으로써, 한국어 BERT 모델에 대한 BitNet 아키텍처의 적용 가능성을 보였다.",
        authors: "", // TODO "안형진, 황태욱, 정상근",
        imageUrl: null, // TODO "assets/images/publications/kcc2024.png",
        url: null, // TODO
        journal: "KIISE - Korea Computer Congress",
        year: "2024",
      ),
      Publication(
        title: "거대 언어 모델 기반 분류문제에서 유사도 활용 Few-shot 예제 기법 성능분석",
        abs:
            "거대 언어 모델(Large Language Model, LLM)과 Few-shot 프롬프트를 활용하여 LLM의 자연어 처리 태스크 성능을 향상시키는 연구가 활발히 수행되고 있다. 본 연구에서는 다중 클래스 분류 태스크에서 유사도 기반 예제를 사용한 Few-shot 프롬프트가 성능에 미치는 영향을 확인하였다. 유사도 기반의 Few-shot 프롬프트가 랜덤하게 선택한 Few-shot 프롬프트보다 성능이 떨어졌다. 단순한 유사도 기반의 접근 방식이 성능에 오히려 악영향을 미친다는 것을 확인하였다.",
        authors: "안형진, 황태욱, 정상근",
        imageUrl: "assets/images/publications/hclt2023.png",
        url: "https://www.dbpia.co.kr/journal/articleDetail?nodeId=NODE11705596",
        journal: "KIISE - Korea Software Congress",
        year: "2023",
      ),
      Publication(
        title: "거대 언어 모델(LLM)을 이용한 비훈련 이진 감정 분류",
        abs:
            "ChatGPT가 등장한 이후 다양한 거대 언어 모델(Large Language Model, LLM)이 등장하였고, 이러한 LLM을 목적에 맞게 파인튜닝하여 사용할 수 있게 되었다. 하지만 LLM을 새로 학습하는 것은 물론이고, 단순 튜닝만 하더라도 일반인은 시도하기 어려울 정도의 많은 컴퓨팅 자원이 필요하다. 본 연구에서는 공개된 LLM을 별도의 학습 없이 사용하여 zero-shot 프롬프팅으로 이진 분류 태스크에 대한 성능을 확인하고자 했다. 학습이나 추가적인 튜닝 없이도 기존 선학습 언어 모델들에 준하는 이진 분류 성능을 확인할 수 있었고, 성능이 좋은 LLM의 경우 분류 실패율이 낮고 일관적인 성능을 보여 상당히 높은 활용성을 확인하였다.",
        authors: "안형진, 황태욱, 정상근",
        imageUrl: "assets/images/publications/ksc2023.png",
        url:
            "https://ocean.kisti.re.kr/IS_mvpopo213L.do?ResultTotalCNT=128&pageNo=2&pageSize=10&method=view&acnCn1=&poid=sighlt&kojic=OOGHAK&sVnc=y2023m10a&id=1&setId=&iTableId=&iDocId=&sFree=&pQuery=%28kojic%3AOOGHAK%29+AND+%28voliss_ctrl_no%3Ay2023m10a%29",
        journal: "KIISE - Human & Cognitive Language Technology",
        year: "2023",
      ),
    ]);
