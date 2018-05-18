<?php

namespace App\Http\Models;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Created by PhpStorm.
 * User: Chia
 * Date: 17/05/2018
 * Time: 18:44
 */

class Book extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'bookname','bookcategory','bookgenre','bookwriter','bookpages','bookrating','publishdate'
    ];

    protected $guarded = ['id'];

    public function book(){
        return $this->belongsTo('App\Http\Models\Category','bookcategory');
    }
}