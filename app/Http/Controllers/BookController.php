<?php

namespace App\Http\Controllers;

use App\Http\Models\Book;
use App\Http\Models\Category;
use App\Http\Transformers\BookTransformer;
use Illuminate\Http\Request;
use Mockery\Exception;
use Dingo\Api\Routing\Helpers;

class BookController extends Controller
{
    use Helpers;

    public function index(){
        $book = Book::all();

        if($book){
            return $this->response->collection($book,new BookTransformer);
        }else{
            $this->response->errorNotFound('data tidak ditemukan');
        }


    }
    public function show($id){
        try{
            $book = Book::find($id);
        }catch (Exception $e){
            $this->response->error($e,500);
        }

        if($book){
            return $this->response->item($book,new BookTransformer);
        }else{
            $this->response->errorNotFound('data tidak ditemukan');
        }


    }
    public function store(Request $request){
        $databook = $request->only([
            'namabuku','kategori','genre','penulis','jmlhlm','rate','tglrilis'
        ]);

        $getIDKategori = Category::find($databook['kategori']);

        if($getIDKategori){
            $category = new Book([
                'bookname' => $databook['namabuku'],
                'bookcategory' => $databook['kategori'],
                'bookgenre' => $databook['genre'],
                'bookwriter' => $databook['penulis'],
                'bookpages' => $databook['jmlhlm'],
                'bookrating' => $databook['rate'],
                'publishdate' => $databook['tglrilis']
            ]);

            try{
                $category->save();
            }catch (Exception $e){
                $this->response->error($e,500);
            }

            $this->response->created();
            $this->response->error('data berhasil ditambah',200);
        }else{
            $this->response->errorNotFound('data kategori tidak ditemukan');
        }


    }
    public function update($id,Request $request){
        try{
            $book = Book::find($id);
        }catch (Exception $e){
            $this->response->error($e,500);
        }

        if($book){
            $databook = $request->only([
                'namabuku','kategori','genre','penulis','jmlhlm','rate','tglrilis'
            ]);

            $getIDKategori = Category::find($databook['kategori']);

            if($getIDKategori){
                $book->fill([
                    'bookname' => $databook['namabuku'],
                    'bookcategory' => $databook['kategori'],
                    'bookgenre' => $databook['genre'],
                    'bookwriter' => $databook['penulis'],
                    'bookpages' => $databook['jmlhlm'],
                    'bookrating' => $databook['rate'],
                    'publishdate' => $databook['tglrilis']
                ]);

                try{
                    $book->update();
                }catch (Exception $e){
                    $this->response->error($e,500);
                }
                $this->response->error('data berhasil diubah',200);
            }else{
                $this->response->errorNotFound('data kategori tidak ditemukan');
            }
        }
        else{
            $this->response->errorNotFound('data tidak ditemukan');
        }

    }
    public function destroy($id){
        try{
            $book = Book::find($id);
        }catch (Exception $e){
            $this->response->error($e,500);
        }

        try{
            $book->delete();
        }catch (Exception $e){
            $this->response->error($e,500);
        }
        $this->response->noContent();
    }
}
