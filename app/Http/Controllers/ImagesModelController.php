<?php

namespace App\Http\Controllers;

use App\Models\ImagesModel;
use Illuminate\Http\Request;

class ImagesModelController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return ImagesModel::all();
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(ImagesModel $imagesModel)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, ImagesModel $imagesModel)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(ImagesModel $imagesModel)
    {
        //
    }
}
