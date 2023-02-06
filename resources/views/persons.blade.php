@extends('index')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Személyek</div>

                <div class="card-body">
                <table border = "0" cellpadding="3">
                <tr>
                <td><b>ID</b></td>
                <td><b>Teljes név</b></td>
                <td><b>Email</b></td>
                <td><b>Adóazonostó jel</b></td>
                <td><b>Azonosító</b></td>
                <td><b>Egyéb_id</b></td>
                <td><b>Belépés</b></td>
                <td><b>Kilépés</b></td>
            </tr>
                @foreach ($persons as $person)
                <tr>
                <td><b>{{ $person->person_id }}</b></td>
                <td>{{ $person->teljesnev }}</td>
                <td>{{ $person->email }}</td>
                <td>{{ $person->adoazonositojel }}</td>
                <td>{{ $person->azonosito }}</td>
                <td>{{ $person->egyeb_id }}</td>
                <td>{{ $person->belepes }}</td>
                <td>{{ $person->kilepes }}</td>
                </tr>
                @endforeach
                </table>

                </div>
            </div>
        </div>
    </div>
</div>
@endsection
