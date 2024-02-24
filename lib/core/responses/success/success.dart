class SuccessMessage {
  final String title;
  final String message;
  final String labelButton;
  final String? secondaryLabelButton;
  final String successImageUrl;
  final void Function() onContinue;

  SuccessMessage({
    this.secondaryLabelButton,
    required this.title,
    required this.message,
    required this.successImageUrl,
    required this.labelButton,
    required this.onContinue,
  });
}
