<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreSongRequest extends FormRequest
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
            'TITLE' => ['required','string','max:1024'],
            'ARTIST_ID' => ['required','string','max:1024'],
            'TIME' => ['required','string','max:1024'],
            'YEAR' => ['required','integer'],
            'BPM' => ['required','integer'],
            'GENRE' => ['required','string','max:1024'],
            'IMAGEURL' => ['image', 'mimes:jpeg,png,jpg,gif,svg', 'max:2048' ],
        ];
    }
}
