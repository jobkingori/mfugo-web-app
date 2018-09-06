<?php

namespace App\Http\Controllers;

use App\Health;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Response;
use App\Cows;
use App\MilkRecord;

class RecordController extends Controller
{
    //milking cows
     public function milkingCows(Request $request,$id){
        try {

            $milkingCows=DB::table('cows')
                ->where('farmer_id','=',$id)
                ->select(DB::raw('cows.*'))
                ->get();

            return Response::json($milkingCows);

        }catch (Exception $e){
            return Response::json($e);
        }
    }

    //add milk record
    public function addMilkRecord(Request $request,$id){

        try {

            $mydate=Carbon::today();
            $date=$mydate->toDateString();

            $add = new MilkRecord();
            $add->cow_id =$id;
            $add->quantity = $request->input('quantity');
            $add->date_recorded = $date;
            $add->save();

            return Response::json($add);

        }catch (Exception $e){
            return Response::json($e);
        }


    }

    //show milk history
    public function milkHistory(Request $request,$id){

        try {

            $milkHistory=DB::table('milk_records')
                ->where('cow_id','=',$id)
                //->select(DB::raw('cows.*'))
                ->get();



            return Response::json($milkHistory);

        }catch (Exception $e){
            return Response::json($e);
        }


    }

    //add health record
    public function  addHealth(Request $request,$id){

        $mydate=Carbon::today();
        $date=$mydate->toDateString();

        $add = new Health();
        $add->cow_id =$id;
        $add->disease = $request->input('disease');
        $add->medicine = $request->input('medicine');
        $add->description = $request->input('description');
        $add->comment = $request->input('comment');
        $add->date_treated = $date;
        $add->save();

        return Response::json($add);
    }



    //show milk history
    public function healthHistory(Request $request,$id){

        try {

            $health=DB::table('healths')
                ->where('cow_id','=',$id)
                //->select(DB::raw('cows.*'))
                ->get();



            return Response::json($health);

        }catch (Exception $e){
            return Response::json($e);
        }


    }
}
