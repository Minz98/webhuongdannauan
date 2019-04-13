<?php

namespace App\Http\Controllers;

use App\congthuc;
use Illuminate\Http\Request;

class CongthucController extends Controller
{
    public function congThuc($unsigned_name){
        $Congthuc='App\Congthuc'::where('congthuc_id',$unsigned_name)->get();
        $nguyenlieu=explode(";",$Congthuc[0]['nguyenlieu']);
        $cachlam=explode("//",$Congthuc[0]['cachlam']);
        $anhcachlam=explode(";",$Congthuc[0]['anhcachlam']);
        $loaiid=$Congthuc[0]['loai_id'];
        $monlienquan='App\Congthuc'::where('loai_id',$loaiid)->limit(4)->get();
        return view('page.detail')->with('datacongthuc',$Congthuc)->with('datanguyenlieu',$nguyenlieu)->with('datacachlam',$cachlam)->With('dataanhcachlam',$anhcachlam)->with('datamonlienquan',$monlienquan)->with('dataloai',$loaiid);
    }
}
