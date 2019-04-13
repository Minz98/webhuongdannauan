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
        $congthucanvat='App\Congthuc'::where('loai_id','loaict_anvat')->limit(4)->get();
        $loaicongthucanvat=$congthucanvat[0]['loai_id'];
        $congthucgiamcan='App\Congthuc'::where('loai_id','loaict_giamcan')->limit(4)->get();
        $loaicongthucgiamcan=$congthucgiamcan[0]['loai_id'];
        $congthucdiplehoi='App\Congthuc'::where('loai_id','loaict_halloween')->limit(4)->get();
        $blog='App\Blog'::limit(4)->get();
        $loaicongthucdiplehoi=$congthucdiplehoi[0]['loai_id'];
        return view('page.home')->with('dataslide',$slide)->with('datactnoibat',$congthucnoibat)->with('dataanvat',$congthucanvat)->with('datagiamcan',$congthucgiamcan)->with('datadiplehoi',$congthucdiplehoi)->with('datactmoi',$congthucmoi)
        ->with('dataloaianvat',$loaicongthucanvat)->with('dataloaigiamcan',$loaicongthucgiamcan)->with('dataloaidiplehoi',$loaicongthucdiplehoi)->with('datablog',$blog);
    }


}
