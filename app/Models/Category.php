<?php namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;
class Category extends Translate {

    public function articles(){
        return $this->hasMany('App\Models\Article');
    }
    protected $fillable = [
        'name',
        'link',
        'description',
        'short_description',
        'imgs',
        'fields',
        'date',
        'active',
        'meta_title',
        'meta_description',
        'meta_keywords',
        'priority'
    ];

    /*function for checked fields in article edit file*/
    public function hasField($field_name){
        $fields = json_decode($this->fields);
        foreach($fields->base as $field){
            if($field == $field_name){
                return true;
            }
        }
        return false;
    }
    /*Change format of date*/
    public function getDateAttribute($date){
        return Carbon::createFromFormat('Y-m-d H:i:s',$date)->toDateString();
    }
}

