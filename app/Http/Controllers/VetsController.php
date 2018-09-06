<?php

namespace App\Http\Controllers;

use App\Trending;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Storage;

class VetsController extends Controller
{
    public function postTrending(Request $request){
    $title=$request->input('title');
    $description=$request->input('description');
    $image=$request->input('image');
    $vet_id=$request->input('vet_id');

     $lastId=DB::table('trendings')
         ->orderby('id','desc')
         ->first();
     $id=$lastId->id;
      //$id=0;

    $idd=$id+1;

    $imageName="trending$idd.PNG";

    $base64 = base64_decode($image);
    Storage::disk('trending')->put($imageName, $base64);

    // $today = Carbon::today();
    // $until=$today->addDays($duration);
    // $untilDate= $until->toDateString();

    $trending=new Trending();
    $trending->title=$title;
    $trending->description=$description;
    $trending->image=$imageName;
    $trending->vet_id=$vet_id;
    $trending->save();



    return Response::json($trending);

}

//get trending
public function getTrending(){
    try {

        $trending=DB::table('trendings')
            ->get();



        return Response::json($trending);

    }catch (Exception $e){
        return Response::json($e);
    }
}

}
