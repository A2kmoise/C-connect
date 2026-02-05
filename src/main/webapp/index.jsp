<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>C-connect | Expand Your Professional Network</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;600;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Outfit', sans-serif;
            background: linear-gradient(135deg, #0f172a 0%, #1e1b4b 100%);
        }
        .glass {
            background: rgba(255, 255, 255, 0.03);
            backdrop-filter: blur(12px);
            border: 1px solid rgba(255, 255, 255, 0.05);
        }
        .glow {
            box-shadow: 0 0 20px rgba(59, 130, 246, 0.3);
        }
    </style>
</head>
<body class="min-h-screen text-white overflow-x-hidden">
    <!-- Navigation -->
    <nav class="container mx-auto px-6 py-8 flex justify-between items-center relative z-10">
        <div class="text-3xl font-extrabold tracking-tight">
            C-<span class="text-blue-500">connect</span>
        </div>
        <div class="space-x-4">
            <a href="login.jsp" class="px-6 py-2 rounded-full font-medium hover:text-blue-400 transition-colors">Login</a>
            <a href="signup.jsp" class="px-6 py-2 bg-blue-600 hover:bg-blue-700 rounded-full font-semibold transition-all shadow-lg hover:shadow-blue-500/20">Get Started</a>
        </div>
    </nav>

    <!-- Hero Section -->
    <main class="container mx-auto px-6 pt-20 pb-32 flex flex-col items-center text-center relative">
        <div class="absolute -top-20 -left-20 w-96 h-96 bg-blue-600/10 rounded-full blur-[100px]"></div>
        <div class="absolute top-40 -right-20 w-80 h-80 bg-purple-600/10 rounded-full blur-[100px]"></div>

        <h1 class="text-5xl md:text-7xl font-bold mb-6 leading-tight">
            Build Bridges, <br>
            <span class="text-transparent bg-clip-text bg-gradient-to-r from-blue-400 to-indigo-500">Unlock Opportunities.</span>
        </h1>
        <p class="text-lg md:text-xl text-gray-400 max-w-2xl mb-12">
            The next generation professional networking platform designed to connect talent with industry leaders in Rwanda and beyond.
        </p>
        
        <div class="flex flex-col sm:flex-row gap-4 mb-20">
            <a href="signup.jsp" class="px-10 py-4 bg-blue-600 hover:bg-blue-700 rounded-xl font-bold text-lg transition-all transform hover:scale-105 shadow-xl shadow-blue-600/25">
                Join Now for Free
            </a>
            <a href="#features" class="px-10 py-4 glass hover:bg-white/5 rounded-xl font-bold text-lg transition-all border border-white/10">
                Learn More
            </a>
        </div>

        <!-- Dashboard Preview (Placeholder or stylized graphic) -->
        <div class="w-full max-w-5xl glass rounded-2xl p-4 glow animate-pulse-slow">
            <div class="bg-gray-900/50 rounded-xl h-[400px] flex items-center justify-center border border-white/5">
                <div class="flex flex-col items-center">
                    <svg class="w-20 h-20 text-blue-500/50 mb-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1" d="M9 19v-6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2a2 2 0 002-2zm0 0V9a2 2 0 012-2h2a2 2 0 012 2v10m-6 0a2 2 0 002 2h2a2 2 0 002-2m0 0V5a2 2 0 012-2h2a2 2 0 012 2v14a2 2 0 01-2 2h-2a2 2 0 01-2-2z"></path>
                    </svg>
                    <span class="text-gray-500 font-medium">Dashboard Analytics Preview</span>
                </div>
            </div>
        </div>
    </main>

    <!-- Features Section Hint -->
    <section id="features" class="container mx-auto px-6 py-20">
        <div class="grid md:grid-cols-3 gap-8">
            <div class="p-8 glass rounded-2xl hover:border-blue-500/50 transition-colors">
                <div class="w-12 h-12 bg-blue-600/20 rounded-lg flex items-center justify-center mb-6">
                    <svg class="w-6 h-6 text-blue-400" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path d="M12 4.354a4 4 0 110 5.292M15 21H3v-1a6 6 0 0112 0v1zm0 0h6v-1a6 6 0 00-9-5.197M13 7a4 4 0 11-8 0 4 4 0 018 0z"></path></svg>
                </div>
                <h3 class="text-xl font-bold mb-4">Network Growth</h3>
                <p class="text-gray-400">Connect with developers and founders in the growing tech hub of Kigali.</p>
            </div>
            <div class="p-8 glass rounded-2xl hover:border-blue-500/50 transition-colors">
                <div class="w-12 h-12 bg-purple-600/20 rounded-lg flex items-center justify-center mb-6">
                    <svg class="w-6 h-6 text-purple-400" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path d="M21 13.255A23.931 23.931 0 0112 15c-3.183 0-6.22-.62-9-1.745M16 6V4a2 2 0 00-2-2h-4a2 2 0 00-2 2v2m4 6h.01M5 20h14a2 2 0 002-2V8a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"></path></svg>
                </div>
                <h3 class="text-xl font-bold mb-4">Job Matching</h3>
                <p class="text-gray-400">AI-powered recommendations for software engineering opportunities abroad and locally.</p>
            </div>
            <div class="p-8 glass rounded-2xl hover:border-blue-500/50 transition-colors">
                <div class="w-12 h-12 bg-emerald-600/20 rounded-lg flex items-center justify-center mb-6">
                    <svg class="w-6 h-6 text-emerald-400" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"></path></svg>
                </div>
                <h3 class="text-xl font-bold mb-4">Local Events</h3>
                <p class="text-gray-400">Stay updated with blockchain summits, networking mixers, and tech seminars.</p>
            </div>
        </div>
    </section>

    <footer class="py-10 text-center text-gray-500 text-sm border-t border-white/5">
        &copy; 2026 C-connect. All rights reserved.
    </footer>
</body>
</html>