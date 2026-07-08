import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'case_input_state.dart';

part 'case_input_view_model.g.dart';

@riverpod
class CaseInputViewModel extends _$CaseInputViewModel {
  static const List<String> popularTopics = [
    'สัญญาเช่า',
    'มรดก',
    'กฎหมายแรงงาน',
    'คดีครอบครัว',
    'หนี้สิน',
    'ธุรกิจ',
  ];

  static const Map<String, String> topicExamples = {
    'สัญญาเช่า':
        'ฉันต้องการปรึกษาเรื่องสัญญาเช่าบ้านที่ไม่ได้รับความเป็นธรรม...',
    'มรดก': 'ต้องการแบ่งมรดกที่ดินแต่ตกลงกับญาติพี่น้องไม่ได้...',
    'กฎหมายแรงงาน':
        'ถูกเลิกจ้างอย่างไม่เป็นธรรม และไม่ได้รับเงินชดเชยตามกฎหมาย...',
    'คดีครอบครัว': 'ต้องการปรึกษาเรื่องการหย่าร้างและสิทธิในการเลี้ยงดูบุตร...',
    'หนี้สิน': 'มีปัญหาเรื่องการทวงถามหนี้บัตรเครดิตที่ผิดกฎหมาย...',
    'ธุรกิจ': 'ต้องการร่างสัญญาหุ้นส่วนธุรกิจเพื่อป้องกันความขัดแย้ง...',
  };

  @override
  CaseInputState build() {
    return const CaseInputState();
  }

  void updateDetails(String text) {
    state = state.copyWith(details: text);
  }

  void toggleTopic(String topic) {
    if (state.selectedTopic == topic) {
      state = state.copyWith(selectedTopic: null);
    } else {
      state = state.copyWith(selectedTopic: topic);
    }
  }

  String getUpdatedTextForTopicToggle(
    String topic,
    String currentText,
    bool isCurrentlySelected,
  ) {
    String text = currentText.trim();

    for (final ex in topicExamples.values) {
      text = text.replaceAll(ex, '').trim();
    }

    if (!isCurrentlySelected) {
      final example = topicExamples[topic] ?? '';
      if (example.isNotEmpty) {
        if (text.isEmpty) {
          text = example;
        } else {
          text = '$text\n$example';
        }
      }
    }

    return text;
  }
}
