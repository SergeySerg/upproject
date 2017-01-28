<?php namespace App\Http\Controllers\Backend;
use Redirect;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Backend;
//use Illuminate\Contracts\Routing\ResponseFactory;
use Illuminate\Http\Request;
//use Illuminate\Routing\Controller;
//use Illuminate\Support\Facades\Redirect;
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
use Validator;


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
	public function store(Request $request)
	{
		$langs = Lang::all();
		foreach($langs as $lang){
			$this->validate($request, [
				'title_'.$lang['lang'] => 'required|max:255',
				'link' => "required|max:15"
			]);
		}
		$all = $request->all();
		$all = $this->prepareArticleData($all);
		Category::create($all);
		return response()->json([
			"status" => 'success',
			"message" => 'Успішно збережено',
			"redirect" => URL::to('/adminSha4')
		]);
		//return back()->with('message', 'Успішно змінено');
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
			'action_method' => 'put',
			'attributes_fields' => $attributes_fields
		]);
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update(Request $request, $type)
	{
		$langs = Lang::all();
		foreach($langs as $lang){
			$this->validate($request, [
				'title_'.$lang['lang'] => 'required|max:255',
				'link' => "required|max:15"
			]);
		}
		$all = $request->all();
		$all = $this->prepareArticleData($all);
		$category = Category::where('link',$type)->first();
		$category->update($all);
		$category->save();

		return response()->json([
			"status" => 'success',
			"message" => 'Успішно збережено',
			"redirect" => URL::to('/adminSha4/articles/'.$type)
		]);
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
	//Функция формирования массива типа (ua|ru|en)
	private function prepareArticleData($all){
		$langs = Lang::all();
		$all['title'] = '';
		$all['short_description'] = '';
		$all['description'] = '';
		$all['meta_title'] = '';
		$all['meta_description'] = '';
		$all['meta_keywords'] ='';
		if (isset($all['date']))
			$all['date'] = date('Y-m-d H:i:s',strtotime($all['date']));
		// Удаление пробелов в начале и в конце каждого поля
		foreach($all as $key => $value){
			$all[$key] = trim($value);
		}
		//Формирование массива типа (ua|ru|en)
		foreach($langs as $lang){
			$all['title'] .= $all["title_{$lang['lang']}"] .'@|;';
			$all['short_description'] .= (isset($all["short_description_{$lang['lang']}"]) ? $all["short_description_{$lang['lang']}"] : '') .'@|;';
			$all['description'] .= (isset($all["description_{$lang['lang']}"]) ? $all["description_{$lang['lang']}"] : '') .'@|;';
			$all['meta_title'] .= (isset($all["meta_title_{$lang['lang']}"]) ? $all["meta_title_{$lang['lang']}"] : '') .'@|;';
			$all['meta_description'] .= (isset($all["meta_description_{$lang['lang']}"]) ? $all["meta_description_{$lang['lang']}"] : '') .'@|;';
			$all['meta_keywords'] .= (isset($all["meta_keywords_{$lang['lang']}"]) ? $all["meta_keywords_{$lang['lang']}"] : '') .'@|;';
			//Удаление переменных типа title_ua,title_ru,title_en и т. д.
			unset($all["title_{$lang['lang']}"]);
			unset($all["short_description_{$lang['lang']}"]);
			unset($all["description_{$lang['lang']}"]);
			unset($all["meta_title_{$lang['lang']}"]);
			unset($all["meta_description_{$lang['lang']}"]);
			unset($all["meta_keywords_{$lang['lang']}"]);
		}
		return $all;
	}

}
