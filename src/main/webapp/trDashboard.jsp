<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>C-connect | Instructor Dashboard</title>
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
                border-right: 3px solid #10ec18;
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
                    class="ml-4 px-2 py-0.5 bg-red-500/10 text-green-500 text-[10px] font-bold rounded uppercase tracking-wider">TR</span>
            </div>

            <nav class="mt-4">
                <ul class="space-y-2">
                    <li>
                        <a href="trDashboard.jsp"
                            class="flex items-center space-x-3 px-8 py-4 sidebar-active text-red-400 font-semibold transition-all">
                            <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-5 text-green-400" viewBox="0 0 24 24"
                                fill="none" stroke="currentColor" stroke-width="2">
                                <rect x="3" y="3" width="7" height="7"></rect>
                                <rect x="14" y="3" width="7" height="7"></rect>
                                <rect x="14" y="14" width="7" height="7"></rect>
                                <rect x="3" y="14" width="7" height="7"></rect>
                            </svg>
                            <span style="color: #10ec18">Overview</span>
                        </a>
                    </li>
                    <li>
                        <a href="logout"
                            class="flex items-center space-x-3 px-8 py-4 text-gray-400 hover:text-green-400 transition-all">
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
                <h2 class="text-xl font-bold">Instructor Panel</h2>

                <div class="flex items-center space-x-6">
                    <div
                        class="w-10 h-10 rounded-full bg-green-600 flex items-center justify-center text-white font-bold">
                        A</div>
                </div>
            </header>

            <!-- Dashboard Content -->
            <div class="p-10">
                <div class="mb-10 flex justify-between items-center">
                    <div>
                        <h1 class="text-3xl font-bold text-white mb-2">Platform Overview</h1>
                        <p class="text-gray-400">Manage works, and student performance.</p>
                    </div>
                    <button onclick="toggleModal('taskModal')"
                        class="px-6 py-2.5 bg-green-600 hover:bg-green-700 text-white font-bold rounded-xl transition-all shadow-lg shadow-green-500/20 flex items-center gap-2">
                        <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-5" fill="none" viewBox="0 0 24 24"
                            stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4v16m8-8H4" />
                        </svg>
                        Add Task
                    </button>
                </div>

                <!-- Stats Grid -->
                <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mb-12">
                    <div class="card-glass p-6 rounded-2xl">
                        <h4 class="text-gray-400 text-sm font-medium mb-1">Total Students</h4>
                        <span class="text-3xl font-bold text-white">1,284</span>
                    </div>
                    <div class="card-glass p-6 rounded-2xl">
                        <h4 class="text-gray-400 text-sm font-medium mb-1">Teachers</h4>
                        <span class="text-3xl font-bold text-blue-500">8,921</span>
                    </div>
                </div>

                <div class="card-glass rounded-2xl p-8">
                    <h3 class="text-xl font-bold mb-6">Recent works</h3>
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

        <!-- Task Modal -->
        <div id="taskModal" class="fixed inset-0 z-50 hidden overflow-y-auto">
            <div class="flex items-center justify-center min-h-screen px-4">
                <div class="fixed inset-0 bg-black/60 backdrop-blur-sm transition-opacity"
                    onclick="toggleModal('taskModal')"></div>
                <div class="card-glass relative w-full max-w-lg p-8 rounded-2xl shadow-2xl text-gray-200">
                    <div class="flex justify-between items-center mb-6">
                        <h2 class="text-2xl font-bold text-white">Add New Task</h2>
                        <button onclick="toggleModal('taskModal')"
                            class="text-gray-400 hover:text-white transition-colors">
                            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M6 18L18 6M6 6l12 12" />
                            </svg>
                        </button>
                    </div>
                    <form class="space-y-4">
                        <div>
                            <label class="block text-sm font-medium text-gray-400 mb-1">Task Title</label>
                            <input type="text"
                                class="w-full bg-gray-900/50 border border-gray-800 rounded-xl py-2 px-4 focus:outline-none focus:ring-2 focus:ring-green-500/30 text-white transition-all"
                                placeholder="Enter task title">
                        </div>
                        <div>
                            <label class="block text-sm font-medium text-gray-400 mb-1">Due Date</label>
                            <input type="date"
                                class="w-full bg-gray-900/50 border border-gray-800 rounded-xl py-2 px-4 focus:outline-none focus:ring-2 focus:ring-green-500/30 text-white transition-all">
                        </div>
                        <div>
                            <label class="block text-sm font-medium text-gray-400 mb-1">Task Description</label>
                            <textarea rows="4"
                                class="w-full bg-gray-900/50 border border-gray-800 rounded-xl py-2 px-4 focus:outline-none focus:ring-2 focus:ring-green-500/30 text-white transition-all"
                                placeholder="Give more details about the task"></textarea>
                        </div>
                        <div class="flex gap-4 pt-4">
                            <button type="button" onclick="toggleModal('taskModal')"
                                class="flex-1 py-2.5 bg-gray-800 hover:bg-gray-700 text-white font-bold rounded-xl transition-all">Cancel</button>
                            <button type="submit"
                                class="flex-1 py-2.5 bg-green-600 hover:bg-green-700 text-white font-bold rounded-xl transition-all shadow-lg shadow-green-500/20">Create
                                Task</button>
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
        </script>
    </body>

    </html>