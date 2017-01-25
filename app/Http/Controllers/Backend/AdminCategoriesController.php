<?php namespace App\Http\Controllers\Backend;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Backend;
//use Illuminate\Contracts\Routing\ResponseFactory;
use Illuminate\Http\Request;
//use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\URL;
use App\Models\Article;
use App\Models\Category;
use App\Models\Lang;
use App\Models\Translate;
use App;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\MessageBag;
use Storage;
use Image;

class AdminCategoriesController extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		//
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		$langs = Lang::all();

		return view('backend.categories.edit',[
			'langs'=>$langs
		]);
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{
		dd('store');
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		dd('store');
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($type = null)
	{
		$langs = Lang::all();
		$admin_category = Category::where("link","=","$type")->first();
		$fields = json_decode($admin_category->fields);
		$attributes_fields = $fields->attributes;
		//dd($attributes_fields);
		return view('backend.categories.edit', [
			'admin_category' => $admin_category,
			'langs' => $langs,
			'type' => $type,
			'attributes_fields' => $attributes_fields
		]);
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($type)
	{
		dd('update');
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		//
	}

}
