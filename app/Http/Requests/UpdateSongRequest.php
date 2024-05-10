<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdateSongRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'TITLE' => ['string','max:1024'],
            'ARTIST_ID' => ['string','max:1024'],
            'TIME' => ['string','max:1024'],
            'YEAR' => ['integer'],
            'BPM' => ['integer'],
            'GENRE' => ['string','max:1024'],
        ];
    }
}
