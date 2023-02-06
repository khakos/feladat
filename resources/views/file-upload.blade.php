@extends('index')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">XML adatfeldolgozás</div>

                <div class="card-body">
                <style>
                    .container {
                        /*max-width: 500px;*/
                    }
                    dl, ol, ul {
                        margin: 0;
                        padding: 0;
                        list-style: none;
                    }
                </style>

                <div class="container mt-5">
                        <form action="{{route('fileUpload')}}" method="post" enctype="multipart/form-data">
                        <h3 class="text-center mb-5">Fájl feltöltés</h3>
                        @csrf
                        @if ($message = Session::get('success'))
                            <div class="alert alert-success">
                                <strong>{{ $message }}</strong>
                            </div>
                        @endif
                        @if (count($errors) > 0)
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif
                            <div class="custom-file text-center">
                                <input type="file" name="file" class="custom-file-input" id="chooseFile">
                                <label class="custom-file-label" for="chooseFile">Válassz fájlt!</label>
                            </div>
                            <p class="text-center">
                            <button type="submit" name="submit" class="btn btn-primary btn-block mt-4 text-center">
                                Feltöltés
                            </button>
                            </p>
                           
                        </form>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
@endsection
