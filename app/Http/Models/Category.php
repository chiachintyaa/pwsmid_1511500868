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

class Category extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'name',
    ];

    protected $guarded = ['id'];

    public function category(){
        return $this->hasMany('App\Http\Models\Book','id');
    }
}