<?php


namespace App;

use Illuminate\Auth\Authenticatable;

use Illuminate\Database\Eloquent\Model;
// use Illuminate\Database\Eloquent\SoftDeletes;
use Zizaco\Entrust\Traits\EntrustUserTrait;

class Ask_a_certification extends Model implements Model
{
    

    protected $table = 'ask_a_certifications';
	
	/**
     * The attributes that are mass assignable.
     *
     * @var array
     */
	protected $fillable = [
		'status', 'user', 'certification', 'sub_category', 'category'
	];
	
    
     protected $dates = ['deleted_at'];

}
