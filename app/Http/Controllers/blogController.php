<?php

namespace App\Http\Controllers;

use App\congthuc;
use App\Blog;
use Illuminate\Http\Request;

class blogController extends Controller
{
    public function blog($unsigned_name){
        $blog='App\Blog'::where('blog_id',$unsigned_name)->get();
        $bloglq='App\Blog'::where('nhomblog_id',$blog[0]['nhomblog_id'])->get();
        return view('page.blog-detail')->with('datablog',$blog)->with('databloglq',$bloglq);
    }
}
