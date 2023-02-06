<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class PersonController extends Controller 
{
    public function index(){
        $persons = DB::select('select * from persons');
        return view('persons',['persons'=>$persons]);
    }
}