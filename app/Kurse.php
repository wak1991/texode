<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Kurse extends Model
{
    public function getKurse($xml)
    {
        foreach ($xml as $n){
            $id = Kurse::where('cur_id', '=', $n['Id'])->first();
            if ($id){
                $id->rate = $n->Rate;
                $id->save();
            }else{
                $kurse = new Kurse();
                $kurse->cur_id = $n['Id'];
                $kurse->num_code = $n->NumCode;
                $kurse->char_code = $n->CharCode;
                $kurse->name = $n->Name;
                $kurse->rate = $n->Rate;
                $kurse->save();
            }
        }
    }

}