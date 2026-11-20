<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/versions', function () {
    return response()->json([
        'versions' => app()->version(),
    ]);
});
