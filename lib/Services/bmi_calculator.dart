class BmiCalculator {
  double height;
  double weight;

  BmiCalculator(this.height, this.weight);

  double calculateBmiValue() {
    final heightInMeters = height / 100;
    return weight / (heightInMeters * heightInMeters);
  }

  String getCategory(double bmiValue) {
    if (bmiValue < 18.5) return 'underweighted';
    if (bmiValue <= 24.9) return 'normal';
    if (bmiValue <= 29.9) return 'overweighted';
    if (bmiValue < 35) return 'obese';
    return 'Extreme';
  }
}
