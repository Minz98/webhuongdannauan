<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class homeController extends Controller
{
    //
    public function showHome(){
        $slide='App\Slide'::get();
        $congthucnoibat='App\Congthuc'::where('noibat',1)->get();
        $congthucmoi='App\Congthuc'::orderBy('created_at','asc')->limit(2)->get();
        $congthucanvat='App\Congthuc'::where('loai_id','loaict_anvat')->get();
        $congthucgiamcan='App\Congthuc'::where('loai_id','loaict_giamcan')->get();
        $congthucdiplehoi='App\Congthuc'::where('loai_id','loaict_halloween')->get();
        return view('page.home')->with('dataslide',$slide)->with('datactnoibat',$congthucnoibat)->with('dataanvat',$congthucanvat)->with('datagiamcan',$congthucgiamcan)->with('datadiplehoi',$congthucdiplehoi)->with('datactmoi',$congthucmoi);
    }
    
}
