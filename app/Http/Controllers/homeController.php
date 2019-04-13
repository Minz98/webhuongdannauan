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
        $congthucgiamcan='App\Congthuc'::where('loai_id','loaict_giamcan')->limit(4)->get();
        $congthucdiplehoi='App\Congthuc'::where('loai_id','loaict_halloween')->limit(4)->get();
        return view('page.home')->with('dataslide',$slide)->with('datactnoibat',$congthucnoibat)->with('dataanvat',$congthucanvat)->with('datagiamcan',$congthucgiamcan)->with('datadiplehoi',$congthucdiplehoi)->with('datactmoi',$congthucmoi);
    }
    public function congThuc($unsigned_name){
        $Congthuc='App\Congthuc'::where('congthuc_id',$unsigned_name)->get();
        $nguyenlieu=explode(";",$Congthuc[0]['nguyenlieu']);
        $cachlam=explode("//",$Congthuc[0]['cachlam']);
        $anhcachlam=explode(";",$Congthuc[0]['anhcachlam']);
        $loaiid=$Congthuc[0]['loai_id'];
        $monlienquan='App\Congthuc'::where('loai_id',$loaiid)->limit(4)->get();
        return view('page.detail')->with('datacongthuc',$Congthuc)->with('datanguyenlieu',$nguyenlieu)->with('datacachlam',$cachlam)->With('dataanhcachlam',$anhcachlam)->with('datamonlienquan',$monlienquan);
    }
    
}
