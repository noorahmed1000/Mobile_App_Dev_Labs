import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AdminPanel extends StatefulWidget {
  const AdminPanel({super.key});

  @override
  State<AdminPanel> createState() => _AdminPanelState();
}

class _AdminPanelState extends State<AdminPanel> {
  List<dynamic> users = [];
  bool _isLoading = true;

  // Your tokens here
  String accessToken = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzM3NjYyMTA2LCJpYXQiOjE3Mzc2NjE4MDYsImp0aSI6ImY0YWI5NWI0ZWNkYTRjMDY5NGE1MDFmMDg0YWUwYmZiIiwidXNlcl9pZCI6Mn0.BvFDq-D9vMVcktEP9u6Vv4b3FJPqxI4dYUdTcHM8wYY';
  String refreshToken = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczNzc0ODIwNiwiaWF0IjoxNzM3NjYxODA2LCJqdGkiOiJhN2Y5ZWU0NjI4ZGI0YzRkYTU1Y2E1NTNjNTYzODg0MiIsInVzZXJfaWQiOjJ9.34COpJ4LkP3OPQopY6BlKuM0u6CrtLRUxbK888roDKM';

  @override
  void initState() {
    super.initState();
    _fetchUsers();
  }

  Future<void> _fetchUsers() async {
    const String apiUrl = 'http://127.0.0.1:8000/api/list/';

    try {
      final response = await http.get(
        Uri.parse(apiUrl),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $accessToken',
        },
      );

      if (response.statusCode == 401) {
        await _refreshToken(); // Refresh the token if needed
        return _fetchUsers(); // Retry fetching users
      }

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        setState(() {
          users = responseData is List ? responseData : responseData['users'];
          _isLoading = false;
        });
      } else {
        throw Exception('Failed to load users: ${response.statusCode}');
      }
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      _showError('Error: ${e.toString()}');
    }
  }

  Future<void> _refreshToken() async {
    const String refreshUrl = 'http://127.0.0.1:8000/api/token/refresh/';
    try {
      final response = await http.post(
        Uri.parse(refreshUrl),
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode({'refresh': refreshToken}),
      );

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        setState(() {
          accessToken = responseData['access'];
        });
      } else {
        throw Exception('Failed to refresh token: ${response.body}');
      }
    } catch (e) {
      _showError('Error: ${e.toString()}');
    }
  }

Future<void> _addUser(String username, String password) async {
  const String apiUrl = 'http://127.0.0.1:8000/api/create/';

  try {
    final response = await http.post(
      Uri.parse(apiUrl),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
      body: json.encode({
        'username': username,
        'password': password,
      }),
    );

    if (response.statusCode == 201) {
      _fetchUsers();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('User added successfully!')),
      );
    } else {
      throw Exception('Failed to add user: ${response.body}');
    }
  } catch (e) {
    _showError('Error: ${e.toString()}');
  }
}
Future<void> _removeUser(int userId) async {
  final String apiUrl = 'http://127.0.0.1:8000/api/delete/$userId/';

  try {
    final response = await http.delete(
      Uri.parse(apiUrl),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
    );

    if (response.statusCode == 204) {
      _fetchUsers();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('User removed successfully!')),
      );
    } else {
      throw Exception('Failed to remove user: ${response.body}');
    }
  } catch (e) {
    _showError('Error: ${e.toString()}');
  }
}


  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  void _showAddUserDialog() {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text('Add User'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: usernameController,
            decoration: const InputDecoration(
              labelText: 'Username',
              hintText: 'Enter username',
            ),
          ),
          const SizedBox(height: 16.0),
          TextField(
            controller: passwordController,
            decoration: const InputDecoration(
              labelText: 'Password',
              hintText: 'Enter password',
            ),
            obscureText: true, // Hide password text
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            final username = usernameController.text.trim();
            final password = passwordController.text.trim();

            if (username.isNotEmpty && password.isNotEmpty) {
              Navigator.of(context).pop();
              _addUser(username, password);
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Please fill out all fields.')),
              );
            }
          },
          child: const Text('Add'),
        ),
      ],
    ),
  );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Panel'),
        backgroundColor: const Color(0xFF92b423),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _isLoading
            ? const Center(child: CircularProgressIndicator())
            : users.isEmpty
                ? const Center(child: Text('No users found'))
                : ListView.builder(
                    itemCount: users.length,
                    itemBuilder: (context, index) {
                      final user = users[index];
                      return ListTile(
                        title: Text(user['username'] ?? 'No username'),
                        subtitle: Text(user['is_active'] == true ? 'Active' : 'Inactive'),
                        leading: Icon(
                          user['is_active'] == true ? Icons.check_circle : Icons.remove_circle,
                          color: user['is_active'] == true ? Colors.green : Colors.red,
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () => _removeUser(user['id']),
                        ),
                      );
                    },
                  ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showAddUserDialog,
        backgroundColor: const Color(0xFF92b423),
        child: const Icon(Icons.add),
      ),
    );
  }
}
