<?php

namespace App\Http\Controllers;

use App\Http\Models\Category;
use App\Http\Transformers\CategoryTransformer;
use Illuminate\Http\Request;
use Mockery\Exception;
use Dingo\Api\Routing\Helpers;

class CategoryController extends Controller
{
    use Helpers;

    public function index(){
        $category = Category::all();

        if($category){
            return $this->response->collection($category,new CategoryTransformer);
        }else{
            $this->response->errorNotFound('data tidak ditemukan');
        }

    }
    public function show($id){
        try{
            $category = Category::find($id);
        }catch (Exception $e){
            $this->response->error($e,500);
        }

        if($category){
            return $this->response->item($category,new CategoryTransformer);
        }else{
            $this->response->errorNotFound('data tidak ditemukan');
        }

    }
    public function store(Request $request){
        $data = $request->only([
            'namakategori'
        ]);

        $category = new Category([
            'name' => $data['namakategori']
        ]);

        try{
            $category->save();
        }catch (Exception $e){
            $this->response->error($e,500);
        }

        $this->response->created();


        return json_encode("berhasil");
    }
    public function update($id,Request $request){
        try{
            $category = Category::find($id);
        }catch (Exception $e){
            $this->response->error($e,500);
        }

        $data = $request->only([
            'namakategori'
        ]);

        $category->fill([
            'name' => $data['namakategori'],
        ]);

        try{
            $category->update();
        }catch (Exception $e){
            $this->response->error($e,500);
        }
        $this->response->error('data berhasil diubah',200);

    }
    public function destroy($id){
        try{
            $category = Category::find($id);
        }catch (Exception $e){
            $this->response->error($e,500);
        }

        try{
            $category->delete();
        }catch (Exception $e){
            $this->response->error($e,500);
        }
        $this->response->noContent();
    }
}
