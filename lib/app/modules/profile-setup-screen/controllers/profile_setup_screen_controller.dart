import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mealmetrics/app/routes/app_pages.dart';

class ProfileSetupScreenController extends GetxController {
  // Controller do PageView
  final PageController pageController = PageController();
  
  // Página atual
  final currentPage = 0.obs;
  
  // Dados do formulário
  final name = ''.obs;
  final goal = ''.obs;
  final hasRestrictions = ''.obs;
  final currentWeight = ''.obs;
  final height = ''.obs;
  final targetWeight = ''.obs;
  
  // Controllers dos campos
  final nameController = TextEditingController();
  final currentWeightController = TextEditingController();
  final heightController = TextEditingController();
  final targetWeightController = TextEditingController();

  // Calcular total de páginas baseado no objetivo
  int get totalPages {
    if (goal.value == "lose" || goal.value == "gain") {
      return 6; // 0,1,2,3,4,5
    }
    return 5; // 0,1,2,3,4
  }

  // Ir para próxima página
  void nextPage() {
    if (currentPage.value < totalPages - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      // Última página - finalizar
      _saveData();
      Get.toNamed(Routes.HOME);
    }
  }

  // Voltar página anterior
  void previousPage() {
    if (currentPage.value > 0) {
      pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  // Atualizar página atual quando o PageView muda
  void onPageChanged(int page) {
    currentPage.value = page;
  }

  // Verificar se a página atual é válida
  bool isCurrentPageValid() {
    switch (currentPage.value) {
      case 0:
        return name.value.trim().isNotEmpty;
      case 1:
        return goal.value.isNotEmpty;
      case 2:
        return hasRestrictions.value.isNotEmpty;
      case 3:
        return currentWeight.value.trim().isNotEmpty && 
               double.tryParse(currentWeight.value) != null &&
               double.parse(currentWeight.value) > 0;
      case 4:
        return height.value.trim().isNotEmpty && 
               double.tryParse(height.value) != null &&
               double.parse(height.value) > 0;
      case 5:
        return targetWeight.value.trim().isNotEmpty && 
               double.tryParse(targetWeight.value) != null &&
               double.parse(targetWeight.value) > 0;
      default:
        return false;
    }
  }

  // Atualizar campos
  void updateName(String value) {
    name.value = value;
  }

  void updateGoal(String value) {
    goal.value = value;
  }

  void updateHasRestrictions(String value) {
    hasRestrictions.value = value;
  }

  void updateCurrentWeight(String value) {
    currentWeight.value = value;
  }

  void updateHeight(String value) {
    height.value = value;
  }

  void updateTargetWeight(String value) {
    targetWeight.value = value;
  }

  // Texto do botão baseado na página atual e objetivo
  String get buttonText {
    final isLastPage = (currentPage.value == 4 && (goal.value != "lose" && goal.value != "gain")) ||
                       currentPage.value == 5;
    return isLastPage ? 'Finalizar' : 'Próximo';
  }

  // Salvar dados
  void _saveData() {
    print('Nome: ${name.value}');
    print('Objetivo: ${goal.value}');
    print('Tem restrições: ${hasRestrictions.value}');
    print('Peso atual: ${currentWeight.value}');
    print('Altura: ${height.value}');
    if (goal.value == "lose" || goal.value == "gain") {
      print('Peso alvo: ${targetWeight.value}');
    }
  }

  @override
  void onClose() {
    pageController.dispose();
    nameController.dispose();
    currentWeightController.dispose();
    heightController.dispose();
    targetWeightController.dispose();
    super.onClose();
  }
}
