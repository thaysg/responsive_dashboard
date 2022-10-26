import 'package:get/get.dart';
import './credit_card_controller.dart';

class CreditCardBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(CreditCardController());
    }
}