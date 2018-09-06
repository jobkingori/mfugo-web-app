<?php

namespace App\Http\Controllers;

use App\Book;
use App\Cows;
use App\MilkRecord;
use App\Person;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Storage;

class ApiController extends Controller
{
    public function login(Request $request){

        $username=$request->input('number');
        $password=$request->input('password');

        $users=Person::where('phonenumber','=',$username)->where('password','=', $password)->first();

        if(empty($users)){
            $result=array();
            $result['id']=0;
            return Response::json($result);
        }
        else
        {
            return Response::json($users);
        }

    }

    public function register(Request $request){
        try {
            $reg = new Person();
            $reg->fullname = $request->input('fullname');
            $reg->phonenumber = $request->input('phonenumber');
            $reg->password = $request->input('password');
            $reg->location = "nyeri";
            $reg->role = "1";
            $reg->save();

            return Response::json($reg);

        }catch (Exception $e){
            return Response::json($e);
        }

    }


    public function addcow(Request $request,$id){

        try {
            $add = new Cows();
            $add->farmer_id=$id;
            $add->tag = $request->input('tag');
            $add->dob = $request->input('dob');
            $add->gender = "male";
            $add->save();

            return Response::json($add);

        }catch (Exception $e){
            return Response::json($e);
        }


    }

    public function viewvet(Request $request){
        try{
            $vets=DB::table('people')
                ->where('role','=',2)
                ->get();

            return Response::json($vets);
        }catch (Exception $e){
            return Response::json($e);
        }


    }

    public function bookvet(Request $request,$id){
        try {
            $image=$request->input('image');

            $lastId=DB::table('books')
                ->orderby('id','desc')
                ->first();
            $id1=$lastId->id;
           // $id1=0;
            $idd=$id1+1;

            $imageName="booking$idd.PNG";

            $add = new Book();
            $add->vet_id = $request->input('vet_id');
           // $add-> farmer_id = $request->input('farmer_id');
            $add-> farmer_id =$id;
            $add-> description = $request->input('description');
            $add->datebooked = $request->input('daterequired');
            $add->image =$imageName;
            $add->status = 0;
            $add->save();

            $base64 = base64_decode($image);
            Storage::disk('booking')->put($imageName, $base64);

            return Response::json($add);
        }catch (Exception $e){
            return Response::json($e);
        }
    }

    public function viewBookings(Request $request,$id){
        try {

            $bookings=DB::table('books')
                ->join('people','books.farmer_id','=','people.id')
                ->where([['books.vet_id','=',$id],['people.role','=',1],['books.status','=',0]])
                ->select(DB::raw('books.*,people.phonenumber,people.fullname,people.location,people.lat,people.longi'))
                ->get();

            return Response::json($bookings);

        }catch (Exception $e){
            return Response::json($e);
        }
    }


 public function treated(Request $request,$id){
        try {

            $treated=Book::find($id);
            $treated->status=1;
            $treated->save();

            return Response::json($treated);

        }catch (Exception $e){
            return Response::json($e);
        }
    }


}
