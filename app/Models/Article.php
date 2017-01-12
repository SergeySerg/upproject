<?php namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

class Article extends Translate {
    protected $fillable=[
        'category_id',
        'title',
        'specification',
        'code',
        'short_description',
        'description',
        'price',
        'imgs',
        'priority',
        'meta_description',
        'meta_keywords',
        'quantity',
        'meta_title',
        'public',
        'active',
        'date'
    ];

    public function category(){
        return $this->belongsTo('App\Models\Category');
    }
    public function getImages(){
        if (isset($this->imgs)){
            $imgs = json_decode($this->imgs, true);
            if(is_array($imgs)){
                foreach($imgs as $key => $img){
                    if(!is_array($img)){
                        $imgs[$key] = [
                            'min' => $img,
                            'full' => $img
                        ];
                    }
                }
            }
            return $imgs ?: [];
        }
        else{
            return [];
        }
    }
    public function scopeActiveArticles($query){
        $query->where ('active',1)
              ->orderBy('priority','desc');
    }
    public function scopeSortDateArticles($query){
        $query->latest('date')
            ->where ('active',1);
    }
    //Change format of date
    public function getDateAttribute($date){
        return Carbon::createFromFormat('Y-m-d H:i:s',$date)->toDateString();
    }
}
