<?php

namespace App\Http\Controllers;


use App\Constant;
use App\Kurse;
use Illuminate\Support\Facades\Cache;

class HomeController
{
    public function index()
    {
        $toogle = Constant::where('name', 'cache')->value('status');
        if ($toogle){
            $kurse = Kurse::all()->sortBy('name');
        }else{
            $kurse = Cache::get('index');
            if (!$kurse){
                $kurse = Kurse::all()->sortBy('name');
                Cache::put('index', $kurse, 60);
            }

        }
        return view('pages.index', compact('kurse', 'toogle'));
    }

    public function cli()
    {
        $xml = simplexml_load_file("http://nbrb.by/Services/XmlExRates.aspx");
        $get_kurse = new Kurse();
        $get_kurse->getKurse($xml);
        return view('pages.cli');
    }

    public function api()
    {
        $toogle = Constant::where('name', 'cache')->value('status');
        if ($toogle){
            $kurse = Kurse::select('num_code', 'char_code', 'rate', 'name')->get();
        }else{
            $kurse = Cache::get('api');
            if (!$kurse){
                $kurse = Kurse::select('num_code', 'char_code', 'rate', 'name')->get();
                Cache::put('api', $kurse, 60);
            }

        }
        return response()->json($kurse,200,['Content-type'=>'application/json;charset=utf-8'],JSON_UNESCAPED_UNICODE);
    }

    public function toogle()
    {
        $status = new Constant();
        $toogle = Constant::where('name', 'cache')->value('status');
        if ($toogle){
            $status->setStatusDis();
        }else{
            $status->setStatusPub();
        }
        return redirect('/');
    }
}