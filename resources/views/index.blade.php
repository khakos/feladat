@include('inc.header')
    <div id="app">
        <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
            <div class="container">
                <a class="navbar-brand" href="{{ url('/') }}">
                    {{ config('app.name', 'Feladat') }}
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav me-auto">
                    
                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="{{ url('/') }}/xmlupload">XMl feldolgozás</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ url('/') }}/persons">Személyek</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ url('/') }}/logs">Logok</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ url('/') }}/kapcsolat">Kapcsolat</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <main class="py-4">
            @yield('content')
        </main>
    </div>


@include('inc.footer')