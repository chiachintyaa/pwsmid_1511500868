<?php
/**
 * Created by PhpStorm.
 * User: Chia
 * Date: 17/05/2018
 * Time: 19:01
 */

namespace App\Http\Transformers;
use League\Fractal\TransformerAbstract;
use App\Http\Models\Category;

class CategoryTransformer extends TransformerAbstract
{
    public function transform(Category $field){
        return [
            'id' => $field->id,
            'nama_kategori' => $field->name,
        ];
    }
}