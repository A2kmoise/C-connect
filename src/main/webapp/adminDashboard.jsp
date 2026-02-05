<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>C-connect | Admin Dashboard</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;600;700&display=swap" rel="stylesheet">
    <style>
      body {
        font-family: 'Outfit', sans-serif;
      }

      .card-glass {
        background: rgba(31, 41, 55, 0.4);
        backdrop-filter: blur(8px);
        border: 1px solid rgba(255, 255, 255, 0.05);
      }

      .sidebar-active {
        background: rgba(59, 130, 246, 0.1);
        border-right: 3px solid #ef4444;
      }
    </style>
  </head>

  <body class="bg-[#0b0f1a] flex min-h-screen text-gray-200">

    <!-- Sidebar -->
    <aside class="fixed top-0 left-0 bg-[#0f172a] w-64 min-h-screen border-r border-white/5 z-20">
      <div class="flex items-center py-8 px-8 mb-4">
        <h1 class="text-white text-2xl font-extrabold tracking-tight">
          C-<span class="text-blue-500">connect</span>
        </h1>
        <span
          class="ml-2 px-2 py-0.5 bg-red-500/10 text-red-500 text-[10px] font-bold rounded uppercase tracking-wider">Admin</span>
      </div>

      <nav class="mt-4">
        <ul class="space-y-2">
          <li>
            <a href="adminDashboard.jsp"
              class="flex items-center space-x-3 px-8 py-4 sidebar-active text-red-400 font-semibold transition-all">
              <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-5" viewBox="0 0 24 24" fill="none"
                stroke="currentColor" stroke-width="2">
                <rect x="3" y="3" width="7" height="7"></rect>
                <rect x="14" y="3" width="7" height="7"></rect>
                <rect x="14" y="14" width="7" height="7"></rect>
                <rect x="3" y="14" width="7" height="7"></rect>
              </svg>
              <span>Overview</span>
            </a>
          </li>
          <li>
            <a href="logout"
              class="flex items-center space-x-3 px-8 py-4 text-gray-400 hover:text-red-400 transition-all">
              <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-5" viewBox="0 0 24 24" fill="none"
                stroke="currentColor" stroke-width="2">
                <path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path>
                <polyline points="16 17 21 12 16 7"></polyline>
                <line x1="21" y1="12" x2="9" y2="12"></line>
              </svg>
              <span>Logout</span>
            </a>
          </li>
        </ul>
      </nav>
    </aside>

    <!-- Main Content -->
    <main class="ml-64 flex flex-col flex-grow">
      <!-- Top Header -->
      <header
        class="h-20 flex justify-between items-center px-10 border-b border-white/5 bg-[#0b0f1a]/80 backdrop-blur-md sticky top-0 z-10">
        <h2 class="text-xl font-bold">Admin Panel</h2>

        <div class="flex items-center space-x-6">
          <div class="w-10 h-10 rounded-full bg-red-600 flex items-center justify-center text-white font-bold">A</div>
        </div>
      </header>

      <!-- Dashboard Content -->
      <div class="p-10">
        <div class="mb-10">
          <h1 class="text-3xl font-bold text-white mb-2">Platform Overview</h1>
          <p class="text-gray-400">Manage users, connections, and system performance.</p>
        </div>

        <!-- Stats Grid -->
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mb-12">
          <div class="card-glass p-6 rounded-2xl">
            <h4 class="text-gray-400 text-sm font-medium mb-1">Total Users</h4>
            <span class="text-3xl font-bold text-white">1,284</span>
          </div>
          <div class="card-glass p-6 rounded-2xl">
            <h4 class="text-gray-400 text-sm font-medium mb-1">New Signups (24h)</h4>
            <span class="text-3xl font-bold text-emerald-500">42</span>
          </div>
          <div class="card-glass p-6 rounded-2xl">
            <h4 class="text-gray-400 text-sm font-medium mb-1">Active Connections</h4>
            <span class="text-3xl font-bold text-blue-500">8,921</span>
          </div>
        </div>

        <div class="card-glass rounded-2xl p-8">
          <h3 class="text-xl font-bold mb-6">Recent Activity</h3>
          <div class="space-y-4">
            <div class="flex items-center justify-between py-3 border-b border-white/5">
              <span class="text-sm text-gray-300">New user "albert_k" joined from Kigali</span>
              <span class="text-xs text-gray-500">2 mins ago</span>
            </div>
            <div class="flex items-center justify-between py-3 border-b border-white/5">
              <span class="text-sm text-gray-300">New job posted: "Senior Java Dev"</span>
              <span class="text-xs text-gray-500">1 hour ago</span>
            </div>
            <div class="flex items-center justify-between py-3">
              <span class="text-sm text-gray-300">System backup completed successfully</span>
              <span class="text-xs text-gray-500">3 hours ago</span>
            </div>
          </div>
        </div>
      </div>
    </main>
  </body>

  </html>