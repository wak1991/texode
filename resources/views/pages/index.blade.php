@extends('layout')

@section('content')
    <section class="main-content">

        <div class="container">
            <h1>Курсы валют</h1>
            <h4>Кэширование:
                @if($toogle)
                    <a href="{{route('toogle')}}">выключено</a>
                @else
                    <a href="{{route('toogle')}}">включено</a>
                @endif
            </h4>
            <div class="row">
                @if(!$kurse->isEmpty())
                <table class="table table-bordered table-striped">
                    <thead>
                    <tr>
                        <th>Код валюты</th>
                        <th>Название валюты</th>
                        <th>Курс</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($kurse as $n)
                        <tr>
                            <td>{{$n->char_code}}</td>
                            <td>{{$n->name}}</td>
                            <td>{{$n->rate}}</td>
                        </tr>
                    @endforeach
                    </tfoot>
                </table>
                @else
                    <p>В базе данных нет курсов валют! Для получения курсов валют перейдите по <a href="{{route('cli')}}">ссылке</a></p>
                @endif
            </div>
        </div>
    </section>
@endsection