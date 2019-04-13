<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class listrecipeController extends Controller
{
    public function category($unsigned_name){
        $Congthuc='App\Congthuc'::where('loai_id',$unsigned_name)->get();
        return view('page.listrecipe')->with('datacongthuc',$Congthuc);
    }
}
