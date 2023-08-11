const packageName = "com.alquds.elevators";

const applicationName = "Al-Quds Elevators and Escalators";
const arabicApplicationName = "شركة القدس للمصاعد";

enum UserType {
  customer,
  maintenanceTechnician, // maintenance technician
  maintenanceManager, // maintenance supervisor
  qualityTechnician, // quality technician
  qualityManager, // quality supervisor
  // installationAdminstrator, // TODO: we don't need this for now
  installationTechnician, // installation technician
  installationManager, // installation supervisor
}

const int lookupsBackgroundJobDelay = 6; // in hours
const int tasksJobDelay = 1; // in hours

enum Gender { male, female }

enum MaintenanceTaskOrOrderStatus {
  // maintenance task or order status >> task from the technician, technician manager perspective and order from the customer perspective
  all,
  newRequest,
  inMaintenance,
  partiallyClosed,
  closed,
}

enum MaintenanceTaskOrOrderOfferStatus {
  all,
  pending, // open
  accepted,
  rejected,
}

enum InstallationProjectStatus {
  newProject,
  inProgress,
  completed,
}

enum QualityTaskStatus {
  newProject,
  inProgress,
  completed,
}

enum InstallationProjectActivityStatus {
  all,
  open,
  achieved,
}

enum InstallationProjectStage {
  all,
  a,
  b,
  c,
}

enum FilterPeriod {
  daily,
  weekly,
  monthly,
}

enum MaintenanceTechnicianTaskFilterStatus {
  all,
  ongoing,
  completed,
}

enum MaintenanceTechnicianTaskAssignmentStatus {
  all,
  assigned,
  unassigned,
}

enum InstallationTaskType {
  internalInspection,
  internalOperation,
  authorityInspection,
  normalOperation
}

enum InstallationTechnicianTaskStatus {
  open,
  closed,
}

enum QualityTechnicianTaskStatus {
  open,
  closed,
}

enum InstallationTechnicianSuccessTaskStatus {
  succeded,
  failed,
}

enum PaymentTransactionStatus { all, paid, unpaid }

enum MaintenanceTaskOrOrderType {
  all,
  periodic,
  emergency,
  authority,
}

enum MaintenanceContractStatus {
  active,
  inActive,
  expired, // the maintenance contract has been expired
  cancelled, // the maintenance contract has been cancelled before its natural expiration date
  lost, // maintenance contract has been lost or invalidated due to some reason,
  requestTakeOff, // a request has been made to take off or remove the maintenance contract
  takenOff, // the maintenance contract has been taken off or removed. It's no longer active or valid.
  freezed, // temporarily suspended
  requestFreezed, // a request has been made to freeze the maintenance contract
}

const dummyHtmlContent = """
  <p>
      <span style="font-size: 15px; color: #000000;">هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق. إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل فى كثير من الأحيان أن يطلع على صورة حقيقية لتصميم الموقع.
</span>
  </p>


""";
