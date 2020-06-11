import 'package:kt_dart/collection.dart';
import 'package:ualet_ddd/domain/splash/parameter_app.dart';

extension KtListX on KtList {
  ParameterApp getParameterAppByTitle(String q) {
    assert(this is KtList<ParameterApp>);

    return this.asList().firstWhere((i) => i.title == q, orElse: () => null);
  }
}
