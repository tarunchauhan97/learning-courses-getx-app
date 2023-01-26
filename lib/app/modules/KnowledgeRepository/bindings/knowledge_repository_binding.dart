import 'package:get/get.dart';

import '../controllers/knowledge_repository_controller.dart';

class KnowledgeRepositoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KnowledgeRepositoryController>(
      () => KnowledgeRepositoryController(),
    );
  }
}
