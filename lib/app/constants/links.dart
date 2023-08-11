class Links {
  static const String baseLink = 'http://192.168.56.56:82/api/v1';
  static const String contactUs = '/messages';
  static const String register = '/register';
  static const String sendVerifyOTP = '/send-otp';
  static const String verifyMobileNumber = '/verify';
  static const String login = '/login';
  static const String profile = '/profile';
  static const String sendResetPasswordOTP = '/send-reset-otp';
  static const String verifyResetPasswordOTP = '/verify-reset-otp';
  static const String resetPassword = '/reset';
  static const String terminateAccount = '/delete';
  static const String logout = '/logout';
  static const String updateFCM = '/fcm';
  static const String getElevators = '/elevators';
  static const String getElevatorDetails = '/elevators/details';
  static const String getPayments = '/payments';
  static const String getPeriodicVisits = '/periodic-visits';
  static const String getMaintenanceTasksOrOrders = '/maintenance-orders';
  static const String createMaintenanceOrder = '/maintenance-orders';
  static const String getNotifications = '/notifications';
  static const String getSettings = '/settings';
  static const String unSeenCountNotifications = '/notifications/unseen_count';
  static const String getMaintenanceOffers = '/maintenance-offers';
  static const String getMaintenanceTechnicians = '/maintenance-technicians';
  static const String getInstallationTechnicians = '/installation-technicians';
  static const String getQualityTechnicians = '/quality-technicians';
  static const String getQualityTaskActivities = '/quality-task-activities';
  static const String getSpareParts = '/lookups/spare-parts';
  static const String getFailureTypes = '/lookups/failure-types';
  static const String getCheckListTasks = '/lookups/maintenance-tasks';
  static const String changePassword = '/change-password';
  static const String getInstallationProjects = '/installation-projects';
  static const String getQualityTasks = '/quality-tasks';
  static const String getInstallationTasks = '/installation-tasks';
  static const String getInstallationProjectActivities =
      '/installation-project-activities';
  static const String createNewRequestElevator = '/elevators';
  static const String updateMaintenanceOffer = '/maintenance-offers';
  static const String assignMaintenanceTechnician =
      '/maintenance-orders'; // for the maintenance manager
}
