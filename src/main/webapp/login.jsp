<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>C-connect | Login</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;600;700&display=swap" rel="stylesheet">
    <style>
      body {
        font-family: 'Outfit', sans-serif;
        background: linear-gradient(135deg, #0f172a 0%, #1e1b4b 100%);
      }

      .glass {
        background: rgba(255, 255, 255, 0.05);
        backdrop-filter: blur(12px);
        border: 1px solid rgba(255, 255, 255, 0.1);
      }
    </style>
  </head>

  <body class="flex items-center justify-center min-h-screen p-4">
    <div class="glass p-10 rounded-3xl w-full max-w-md mx-auto shadow-2xl relative overflow-hidden">
      <!-- Background decorative globes -->
      <div class="absolute -top-24 -left-24 w-48 h-48 bg-blue-600/20 rounded-full blur-[60px]"></div>
      <div class="absolute -bottom-24 -right-24 w-48 h-48 bg-purple-600/20 rounded-full blur-[60px]"></div>

      <div class="relative z-10">
        <h2 class="text-3xl font-bold mb-2 text-white text-center">
          C-<span class="text-blue-500">connect</span>
        </h2>
        <h3 class="text-xl font-semibold mb-2 text-white text-center">Welcome back</h3>
        <p class="text-sm text-gray-400 text-center mb-8">Login to your dashboard.</p>

        <form action="login" method="POST" class="space-y-5">
          <div>
            <label class="block text-sm font-medium text-gray-400 mb-1.5 ml-1">Email or Username</label>
            <input type="text" name="identifier" placeholder="john@example.com" required
              class="w-full px-4 py-3 rounded-xl bg-gray-900/50 border border-gray-700 text-white focus:outline-none focus:ring-2 focus:ring-blue-500/50 focus:border-blue-500 transition-all placeholder:text-gray-600" />
          </div>

          <div>
            <div class="flex justify-between mb-1.5 ml-1">
              <label class="block text-sm font-medium text-gray-400">Password</label>
            </div>
            <input type="password" name="password" placeholder="••••••••" required
              class="w-full px-4 py-3 rounded-xl bg-gray-900/50 border border-gray-700 text-white focus:outline-none focus:ring-2 focus:ring-blue-500/50 focus:border-blue-500 transition-all placeholder:text-gray-600" />
          </div>

          <div class="flex items-center space-x-2 ml-1">
            <input type="checkbox" id="remember"
              class="w-4 h-4 rounded border-gray-700 bg-gray-900/50 text-blue-600 focus:ring-blue-500/50">
            <label for="remember" class="text-sm text-gray-400">Remember me</label>
          </div>

          <div class="pt-2">
            <button type="submit"
              class="w-full bg-blue-600 hover:bg-blue-700 text-white font-bold py-3.5 rounded-xl transition-all transform hover:scale-[1.02] active:scale-[0.98] shadow-lg shadow-blue-600/20">
             <a href="adminDashboard.jsp">Login to C-connect</a>
            </button>
          </div>
        </form>

        <p class="mt-8 text-center text-sm text-gray-400">
          Don't have an account?
          <a href="signup.jsp" class="text-blue-500 hover:text-blue-400 font-semibold underline underline-offset-4">Sign
            up</a>
        </p>
      </div>
    </div>
  </body>

  </html>