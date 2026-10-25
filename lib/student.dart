/// Замініть ці значення на власні або передайте --dart-define.
const studentName = String.fromEnvironment(
  'STUDENT_NAME',
  defaultValue: 'Oleksandr',
);
const studentGroup = String.fromEnvironment(
  'STUDENT_GROUP',
  defaultValue: '32-IST',
);
const firstAppTitle = "$studentGroup: $studentName's first Flutter App";
const lastAppTitle = "$studentGroup: $studentName's last Flutter App";
