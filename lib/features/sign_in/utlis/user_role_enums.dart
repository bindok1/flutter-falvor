enum UserRole {
  admin('admin', 3),
  manager('manager', 2), 
  user('user', 1);

  const UserRole(this.name, this.level);
  
  final String name;
  final int level;

  factory UserRole.fromJson(String? role) {
    switch (role?.toLowerCase()) {
      case "admin":
        return UserRole.admin;
      case "manager": 
        return UserRole.manager;
      default:
        return UserRole.user;
    }
  }

  Map<String, dynamic> toJson() => {
    'name': name,
    'level': level,
  };

  String getMessage() => name;
}