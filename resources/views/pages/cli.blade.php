@extends('layout')

@section('content')
    <section class="main-content">

        <div class="container">
            <h1>Получение курсов валют</h1>
            <div class="row">
                <p>Курсы получены! Вернуться на страницу <a href="{{route('index')}}">курсов</a></p>
            </div>
        </div>
    </section>
@endsection