// Q4

class NotificationService {
  void sendNotification() {
    print('Sending general notification...');
  }
}

class EmailNotification extends NotificationService {
  @override
  void sendNotification() {
    print('Sending Email notification.');
  }
}

class SmsNotification extends NotificationService {
  @override
  void sendNotification() {
    print('Sending SMS notification.');
  }
}

class PushNotification extends NotificationService {
  @override
  void sendNotification() {
    print('Sending Push notification.');
  }
}

void main() {
  List<NotificationService> notifications = [
    EmailNotification(),
    SmsNotification(),
    PushNotification(),
  ];

  for (var notification in notifications) {
    notification.sendNotification();
  }
}
