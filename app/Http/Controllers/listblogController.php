<?php

namespace App\Http\Controllers;

use App\congthuc;
use Illuminate\Http\Request;

class listblogController extends Controller
{
    public function listblog(){
        $blog='App\Blog'::get();
        $loaiblog='App\Loaiblog'::get();
        return view('page.listblog')->with('datablog',$blog)->with('dataloaiblog',$loaiblog);
    }
}
