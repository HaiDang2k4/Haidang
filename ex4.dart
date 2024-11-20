// ● Xây dựng một ứng dụng để quản lý các nhân viên trong công ty, bao gồm nhân viên
// văn phòng và nhân viên kỹ thuật. Mỗi loại nhân viên có những đặc điểm và nhiệm vụ
// khác nhau.
// ● Tạo một abstract class Employee:
// ○ Các thuộc tính chung: id (mã nhân viên), name (tên nhân viên).
// ○ Các phương thức: printInfo() (in thông tin cơ bản về nhân viên), calculateSalary() (tính toán
// và trả về lương của nhân viên).
// ● Tạo một interface Workable:
// ○ Phương thức doWork() để mô tả công việc mà nhân viên đó phải làm.
// ● Tạo hai class OfficeWorker và TechWorker kế thừa từ Employee và thực hiện
// interface Workable:
// ○ OfficeWorker: có thêm thuộc tính department (phòng ban).
// ○ TechWorker: có thêm thuộc tính field (lĩnh vực kỹ thuật).
// ● Tạo class Company:
// ○ Quản lý danh sách các nhân viên, thuộc tính employees
// ○ Các phương thức addEmployee() để thêm nhân viên, printAllEmployees() in ra thông tin tất
// cả nhân viên, và getTotalSalary() tính tổng lương của công ty.

abstract class Employee {
  final id; //mã nv
  final name; // tên nv
  Employee(this.id, this.name);

  void printInfo(); // in ra thông tin nv
  double calculateSalary(); // tính lương nv
}

abstract class Workable {
  void doWork();
}

class OfficeWorker extends Employee implements Workable {
  String department; // phòng ban
  OfficeWorker(String id, String name, this.department) : super(id, name);
  @override
  void printInfo() {
    print('OfficeWorker Name $name, ID $id');
  }

  @override
  double calculateSalary() {
    return 50000;
  }

  @override
  void doWork() {
    print('Working in $department ');
  }
}

class TechWorker extends Employee implements Workable {
  String field;
  TechWorker(String id, String name, this.field) : super(id, name);

  @override
  void printInfo() {
    print('TechWorker Name $name, ID $id');
  }

  @override
  double calculateSalary() {
    return 100000; //lương của nv kĩ thuật
  }

  @override
  void doWork() {
    print('Working in $field '); // nv kĩ thuật làm ở field
  }
}

class Company {
  List<Employee> employees = [];
  void addEmployee(Employee employee) {
    employees.add(employee);
  }

  void printAllEmployees() {
    for (var employee in employees) {
      employee.printInfo();
      print("lương ${employee.calculateSalary()}");
    }
  }

  double getTotalSalary() {
    double totalSalary = 0;
    for (var employee in employees) {
      totalSalary += employee.calculateSalary();
    }
    return totalSalary;
  }
}

void main() {
  var company = Company();
  var officeWorker = OfficeWorker("2004", "Đăng", "Sinh viên");
  var techWorker = TechWorker("2233", "đạt", "nv kĩ thuật ");
  company.addEmployee(officeWorker);
  company.addEmployee(techWorker);

  //in nhân viên
  company.printAllEmployees();
  // nhân viên
  officeWorker.doWork();
  techWorker.doWork();
  // tổng lương
  print("tổng lương ${company.getTotalSalary()}");
}
