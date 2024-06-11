<?php

namespace App\Http\Controllers;

use App\Http\Requests\ShoppingCartRequest;
use App\Http\Resources\ShoppingCartResource;
use App\Models\ShoppingCart;
use Illuminate\Http\Request;

class ShoppingCartController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return ShoppingCartResource::collection(ShoppingCart::all());
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $shoppingCart = ShoppingCart::create($request->all());
        return new ShoppingCartResource($shoppingCart);
    }

    /**
     * Display the specified resource.
     */
    public function show(ShoppingCart $shoppingCart)
    {
        return new ShoppingCartResource($shoppingCart);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, ShoppingCart $shoppingCart)
    {
        $shoppingCart->update($request->all());
        return new ShoppingCartResource($shoppingCart);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(ShoppingCart $shoppingCart)
    {
        //
    }
}
