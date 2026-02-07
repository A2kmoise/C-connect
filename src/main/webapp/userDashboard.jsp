<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>C-connect | User Dashboard</title>
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
        border-right: 3px solid #3b82f6;
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
      </div>

      <nav class="mt-4">
        <ul class="space-y-2">
          <li>
            <a href="userDashboard.jsp"
              class="flex items-center space-x-3 px-8 py-4 sidebar-active text-blue-400 font-semibold transition-all">
              <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-5" viewBox="0 0 24 24" fill="none"
                stroke="currentColor" stroke-width="2">
                <path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path>
                <polyline points="9 22 9 12 15 12 15 22"></polyline>
              </svg>
              <span>Home</span>
            </a>
          </li>
          <li>
            <a href="logout"
              class="flex items-center space-x-3 px-8 py-4 text-gray-400 hover:text-red-400 hover:bg-red-500/5 transition-all">
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
        <div class="relative w-96">
          <span class="absolute inset-y-0 left-0 flex items-center pl-3">
            <svg class="w-5 h-5 text-gray-500" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path>
            </svg>
          </span>
          <input type="text" placeholder="Search connections, jobs, events..."
            class="w-full bg-gray-900/50 border border-gray-800 rounded-xl py-2 pl-10 pr-4 focus:outline-none focus:ring-2 focus:ring-blue-500/30 text-sm transition-all">
        </div>

        <div class="flex items-center space-x-6">
          <button class="text-gray-400 hover:text-blue-500 transition-colors">
            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path
                d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9">
              </path>
            </svg>
          </button>
          <div
            class="w-10 h-10 rounded-full bg-gradient-to-tr from-blue-600 to-purple-600 flex items-center justify-center text-white font-bold cursor-pointer hover:ring-4 ring-blue-500/20 transition-all">
            M
          </div>
        </div>
      </header>

      <!-- Dashboard Content -->
      <div class="p-10">
        <div class="mb-10 flex justify-between items-center">
          <div>
            <h1 class="text-4xl font-bold text-white mb-2">Welcome back, Moise!</h1>
            <p class="text-gray-400">Here's what's happening with your <span
                class="text-blue-400 font-semibold text-transparent bg-clip-text bg-gradient-to-r from-blue-400 to-indigo-500 italic">School</span>.
            </p>
          </div>
          <button onclick="toggleModal('complaintModal')"
            class="px-6 py-2.5 bg-blue-600 hover:bg-blue-700 text-white font-bold rounded-xl transition-all shadow-lg shadow-blue-500/20 flex items-center gap-2">
            <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-5" fill="none" viewBox="0 0 24 24"
              stroke="currentColor">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4v16m8-8H4" />
            </svg>
            Add Complaint
          </button>
        </div>

        <!-- Stats Grid -->
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 mb-12">
          <div class="card-glass p-6 rounded-2xl hover:bg-gray-800/60 transition-all group">
            <h4 class="text-gray-400 text-sm font-medium mb-1">Fellow students</h4>
            <div class="flex items-end justify-between">
              <span class="text-3xl font-bold text-white">24</span>
            </div>
            <p class="text-xs text-gray-500 mt-4 leading-relaxed">All students in your campus.</p>
          </div>

          <div class="card-glass p-6 rounded-2xl hover:bg-gray-800/60 transition-all group">
            <h4 class="text-gray-400 text-sm font-medium mb-1">Campus teachers</h4>
            <div class="flex items-end justify-between">
              <span class="text-3xl font-bold text-white">186</span>
            </div>
            <p class="text-xs text-gray-500 mt-4 leading-relaxed">All campus teachers</p>
          </div>

          <div class="card-glass p-6 rounded-2xl hover:bg-gray-800/60 transition-all group">
            <h4 class="text-gray-400 text-sm font-medium mb-1">Principle messages</h4>
            <div class="flex items-end justify-between">
              <span class="text-3xl font-bold text-white">04</span>
              <span class="text-blue-500 text-xs font-bold mb-1">New</span>
            </div>
            <p class="text-xs text-gray-500 mt-4 leading-relaxed">Some messages from principle</p>
            <button
              class="mt-6 w-full py-2 bg-blue-600/10 group-hover:bg-blue-600 text-blue-400 group-hover:text-white rounded-lg text-xs font-bold transition-all">View</button>
          </div>

          <div class="card-glass p-6 rounded-2xl hover:bg-gray-800/60 transition-all group">
            <h4 class="text-gray-400 text-sm font-medium mb-1">Assignments</h4>
            <div class="flex items-end justify-between">
              <span class="text-3xl font-bold text-white">02</span>
              <span class="text-purple-500 text-xs font-bold mb-1">new</span>
            </div>
            <p class="text-xs text-gray-500 mt-4 leading-relaxed">Teacher's assignment.</p>
            <button
              class="mt-6 w-full py-2 bg-blue-600/10 group-hover:bg-blue-600 text-blue-400 group-hover:text-white rounded-lg text-xs font-bold transition-all">Get
              Details</button>
          </div>
        </div>

        <!-- Accordion Section -->
        <div class="max-w-4xl">
          <h2 class="text-2xl font-bold text-white mb-6 flex items-center">
            <svg class="w-6 h-6 mr-2 text-blue-500" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                d="M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
            </svg>
            Software help
          </h2>

          <div class="space-y-4">
            <div class="card-glass rounded-xl overflow-hidden">
              <button onclick="toggleAccordion('item1')"
                class="w-full flex items-center justify-between px-8 py-5 text-left hover:bg-white/5 transition-all">
                <span class="font-semibold text-lg">What's new on C-connect?</span>
                <svg id="icon-item1" class="w-5 h-5 text-gray-500 transition-transform duration-300" fill="none"
                  stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path>
                </svg>
              </button>
              <div id="item1"
                class="px-8 py-5 hidden border-t border-white/5 text-gray-400 leading-relaxed bg-gray-900/20">
                C-connect has opened a new headquarters in Kigali, Rwanda to enhance local outreach and ensure smooth
                service delivery for our growing African developer community.
              </div>
            </div>

            <div class="card-glass rounded-xl overflow-hidden">
              <button onclick="toggleAccordion('item2')"
                class="w-full flex items-center justify-between px-8 py-5 text-left hover:bg-white/5 transition-all">
                <span class="font-semibold text-lg">The Mission of C-connect</span>
                <svg id="icon-item2" class="w-5 h-5 text-gray-500 transition-transform duration-300" fill="none"
                  stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path>
                </svg>
              </button>
              <div id="item2"
                class="px-8 py-5 hidden border-t border-white/5 text-gray-400 leading-relaxed bg-gray-900/20">
                For over a decade, we have been dedicated to linking junior and senior developers with meaningful career
                opportunities and peer collaborations across the Rwandan tech ecosystem.
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>

    <!-- Complaint Modal -->
    <div id="complaintModal" class="fixed inset-0 z-50 hidden overflow-y-auto">
      <div class="flex items-center justify-center min-h-screen px-4">
        <div class="fixed inset-0 bg-black/60 backdrop-blur-sm transition-opacity"
          onclick="toggleModal('complaintModal')"></div>
        <div class="card-glass relative w-full max-w-lg p-8 rounded-2xl shadow-2xl">
          <div class="flex justify-between items-center mb-6">
            <h2 class="text-2xl font-bold text-white">Add New Complaint</h2>
            <button onclick="toggleModal('complaintModal')" class="text-gray-400 hover:text-white transition-colors">
              <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
              </svg>
            </button>
          </div>
          <form class="space-y-4">
            <div>
              <label class="block text-sm font-medium text-gray-400 mb-1">Subject</label>
              <input type="text"
                class="w-full bg-gray-900/50 border border-gray-800 rounded-xl py-2 px-4 focus:outline-none focus:ring-2 focus:ring-blue-500/30 text-white transition-all"
                placeholder="Enter complaint subject">
            </div>
            <div>
              <label class="block text-sm font-medium text-gray-400 mb-1">Description</label>
              <textarea rows="4"
                class="w-full bg-gray-900/50 border border-gray-800 rounded-xl py-2 px-4 focus:outline-none focus:ring-2 focus:ring-blue-500/30 text-white transition-all"
                placeholder="Describe your complaint"></textarea>
            </div>
            <div class="flex gap-4 pt-4">
              <button type="button" onclick="toggleModal('complaintModal')"
                class="flex-1 py-2.5 bg-gray-800 hover:bg-gray-700 text-white font-bold rounded-xl transition-all">Cancel</button>
              <button type="submit"
                class="flex-1 py-2.5 bg-blue-600 hover:bg-blue-700 text-white font-bold rounded-xl transition-all shadow-lg shadow-blue-500/20">Submit
                Complaint</button>
            </div>
          </form>
        </div>
      </div>
    </div>

    <script>
      function toggleModal(id) {
        const modal = document.getElementById(id);
        modal.classList.toggle('hidden');
      }

      function toggleAccordion(id) {
        const content = document.getElementById(id);
        const icon = document.getElementById('icon-' + id);
        const isHidden = content.classList.contains('hidden');

        // Close all others (optional)
        // document.querySelectorAll('[id^="item"]').forEach(el => el.classList.add('hidden'));
        // document.querySelectorAll('[id^="icon-item"]').forEach(el => el.classList.remove('rotate-180'));

        if (isHidden) {
          content.classList.remove('hidden');
          icon.classList.add('rotate-180');
        } else {
          content.classList.add('hidden');
          icon.classList.remove('rotate-180');
        }
      }
    </script>
  </body>

  </html>