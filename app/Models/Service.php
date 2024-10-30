<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    use HasFactory;
    protected $table = 'services';
    protected $casts = [
        'additional_videos_links' => 'array',
    ];

    public function service_images() {
        return $this->hasMany(ServiceGalleryImage::class);
    }
}
