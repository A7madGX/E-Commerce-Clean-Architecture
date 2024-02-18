class SuccessMessage {
  final String title;
  final String message;
  final String textBtn;
  final String successImageUrl;
  final void Function() onBtnPressed;

  SuccessMessage({
    required this.title,
    required this.message,
    required this.successImageUrl,
    required this.textBtn,
    required this.onBtnPressed,
  });
}
