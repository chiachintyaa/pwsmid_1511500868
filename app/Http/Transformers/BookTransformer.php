<?php
/**
 * Created by PhpStorm.
 * User: Chia
 * Date: 17/05/2018
 * Time: 19:01
 */

namespace App\Http\Transformers;
use League\Fractal\TransformerAbstract;
use App\Http\Models\Book;

class BookTransformer extends TransformerAbstract
{
    public function transform(Book $field){
        return [
            'bookname' => $field->bookname,
            'bookcategory' => $field->bookcategory,
            'bookgenre' => $field->bookgenre,
            'bookwriter' => $field->bookwriter,
            'bookpages' => $field->bookpages,
            'bookrating' => $field->bookrating,
            'publishdate' => $field->publishdate
        ];
    }
}