<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('home', 'HomeController@index');//Для відображення результата після логування

Route::controllers([
	'auth' => 'Auth\AuthController',
	'password' => 'Auth\PasswordController',
]);


Route::get('/', 'Frontend\HomeController@index');
Route::post('/contact', ['uses' => 'Frontend\ArticleController@contact','as' => 'contact']);//Обработчик Обратной связи
Route::post('/callback', ['uses' => 'Frontend\ArticleController@callback','as' => 'contact']);//Обработчик Обратной связи
Route::group(['prefix'=>'adminSha4', 'middleware' => ['auth', 'backend.init']], function(){
	Route::get('/','Backend\AdminDashboardController@index');

	Route::get('/articles/fileoptimize/{id?}','Backend\AdminArticlesController@fileoptimize');
	Route::get('/articles/{type}',['uses' => 'Backend\AdminArticlesController@index','as' => 'admin_index']);//Вывод списка элементов
	Route::get('/articles/{type}/create',['uses' => 'Backend\AdminArticlesController@create','as' => 'admin_create']);//Вывод формы создания элемента
	Route::post('/articles/{type}/create',['uses' => 'Backend\AdminArticlesController@store','as' => 'admin_store']);//Сохранение элемента
	Route::get('/articles/{type}/{id}',['uses' => 'Backend\AdminArticlesController@edit','as' => 'admin_edit']);//Вывод формы редакторирование элемента
	Route::put('/articles/{type}/{id}',['uses' =>'Backend\AdminArticlesController@update','as' => 'admin_update']);//Сохранение элемента после редактирования
	Route::delete('/articles/{type}/{id}',['uses' => 'Backend\AdminArticlesController@destroy','as' => 'admin_delete']);//Удаление элемента

	Route::get('/texts',['uses' => 'Backend\AdminTextsController@index','as' => 'text_index']);//Вывод списка
	Route::get('/texts/create',['uses' => 'Backend\AdminTextsController@create','as' => 'text_create']);//Вывод формы создания элемента
	Route::post('/texts/create',['uses' =>'Backend\AdminTextsController@store','as' => 'text_store']);//Сохранение элемента
	Route::delete('/texts/{id}',['uses' =>'Backend\AdminTextsController@destroy','as' => 'text_delete']);//Удаление элемента
	Route::get('/texts/{id}',['uses' =>'Backend\AdminTextsController@edit','as' => 'text_edit']);//Вывод формы редакторирование
	Route::put('/texts/{id}',['uses' =>'Backend\AdminTextsController@update','as' => 'text_update']);//Сохранение после редактирования
	Route::get('/texts_recovery',['uses' => 'Backend\AdminTextsController@recovery','as' => 'text_recovery']);//Востановление записей после удаления
	Route::get('/texts_delete',['uses' => 'Backend\AdminTextsController@delete','as' => 'texts_delete']);

	Route::get('/orders', ['uses' => 'Backend\AdminOrdersController@index', 'as' => 'orders_index']);//Вывод списка заказов
	Route::delete('/orders/{id}', ['uses' => 'Backend\AdminOrdersController@destroy', 'as' => 'orders_delete']);//Вывод списка заказов

	Route::get('/resume',['uses' => 'Backend\AdminResumeController@index','as' => 'resume_index']);//Вывод списка..
	//Route::get('/comments/{article_id}/create','Backend\AdminResumeController@create');//Вывод формы создания элемента..
	//Route::post('/comments/{article_id}/create','Backend\AdminResumeController@store');//Сохранение элемента
	Route::delete('/resume/{id}',['uses' => 'Backend\AdminResumeController@destroy','as' => 'resume_delete']);//Удаление элемента
	Route::get('/resume/{id}',['uses'=> 'Backend\AdminResumeController@show','as' => 'resume_show']);//Вывод формы редакторирование..
	//Route::put('/comments/{article_id}/{id}','Backend\AdminResumeController@update');//Сохранение после редактирования..

});
Route::group(['middleware' => 'frontend.init'], function(){
	Route::get('/{lang}', ['uses' => 'Frontend\ArticleController@index','as' => 'article_index']);
});



