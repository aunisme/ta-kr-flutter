class Question {
  final String testId;
  final String question;
  final String correctAnswer;
  final String option1;
  final String option2;
  final String option3;
  final String option4;
  final bool answered;

  Question(
      {this.question,
      this.testId,
      this.correctAnswer,
      this.option1,
      this.option2,
      this.option3,
      this.option4,
      this.answered});
}
