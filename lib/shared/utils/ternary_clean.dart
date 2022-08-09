T ternaryClean<T>({
  required bool? condition,
  required T caseTrue,
  required T caseFalse,
}) {
  if (condition != null) {
    if (condition) {
      return caseTrue;
    } else {
      return caseFalse;
    }
  } else {
    return caseFalse;
  }
}
