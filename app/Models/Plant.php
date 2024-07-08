<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Plant extends Model
{
    use HasFactory;
    protected $fillable = [
        'plant_id',
        'project_id',
        'address',
        'installation_date',
        'zone',
        'plant_type',
        'latitude',
        'longitude',
    ];

    // Define the relationship with the Project model (if applicable)
    public function project()
    {
        return $this->belongsTo(Projects::class, 'project_id');
    }
}
