import 'package:go_router/go_router.dart';

import '../../pages/chat.page.dart';
import '../../pages/home.page.dart';
import '../../pages/profile.page.dart';

import '../../pages/students.detail.page.dart';
import '../../pages/students.page.dart';
import '../../widgets/app.shell.widget.dart';
import '../../pages/subjects.page.dart';
import '../../pages/subject.detail.page.dart';
import '../../pages/subject.chat.page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/home',
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return AppShellWidget(child: child);
      },
      routes: [
        GoRoute(
          path: '/home',
          builder: (context, state) {
            return const HomePage();
          },
        ),
        GoRoute(
          path: '/students',
          builder: (context, state) {
            return const StudentsPage();
          },
        ),
        GoRoute(
          path: '/profile',
          builder: (context, state) {
            return const ProfilePage();
          },
        ),
        GoRoute(
          path: '/subjects',
          builder: (context, state) => const SubjectsPage(),
        ),
      ],
    ),

    /// ===================================
    /// RUTAS FULLSCREEN
    /// ===================================
    GoRoute(
      path: '/student/:id',
      builder: (context, state) {
        final id = state.pathParameters['id']!;

        return StudentDetailPage(id: id);
      },
    ),

    GoRoute(
      path: '/chat',
      builder: (context, state) {
        return const ChatPage();
      },
    ),
    GoRoute(
      path: '/subject/:id',
      builder: (context, state) {
        final id = state.pathParameters['id'] ?? '';

        return SubjectDetailPage(id: id);
      },
    ),

    GoRoute(
      path: '/subject-chat',
      builder: (context, state) => const SubjectChatPage(),
    ),
  ],
);
