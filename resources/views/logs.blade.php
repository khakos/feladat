@extends('index')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Logok</div>

                <div class="card-body">
                <table border = "0" cellpadding="3">
                <tr>
                <td><b>ID</b></td>
                <td><b>Dátum</b></td>
                <td><b>Esemény</b></td>
                </tr>
                @foreach ($logs as $log)
                <tr>
                <td><b>{{ $log->log_id }}</b></td>
                <td>{{ $log->datum }}</td>
                <td>{{ $log->esemeny }}</td>
                </tr>
                @endforeach
                </table>

                </div>
            </div>
        </div>
    </div>
</div>
@endsection
