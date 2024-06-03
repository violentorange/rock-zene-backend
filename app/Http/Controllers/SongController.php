<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreSongRequest;
use App\Http\Requests\UpdateSongRequest;
use App\Http\Resources\SongResource;
use App\Models\Song;
use Illuminate\Http\Request;

class SongController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return SongResource::collection(Song::all());
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreSongRequest $request)
    {

        {
            if ($request->hasFile('image')) {
                $image_url = $request->file('image')->store('images', 'public');
                $request->merge(['image_url' => $image_url]);
            }

            $song = Song::create($request->all());

            return response()->json([
               'message' => 'Song created successfully',
                'data' => $song,
            ], 201);
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(Song $song)
    {
        return new SongResource($song);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateSongRequest $request, Song $song)
    {
        $song->update($request->all());
        return new SongResource($song);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Song $song)
    {
        $song->delete();
        return response()->noContent();
    }
}
