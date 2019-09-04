<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Constant extends Model
{
    public function setStatusPub()
    {
        $status = Constant::where('name', 'cache')->first();
        $status->status = 1;
        $status->save();
    }

    public function setStatusDis()
    {
        $status = Constant::where('name', 'cache')->first();
        $status->status = 0;
        $status->save();
    }

}