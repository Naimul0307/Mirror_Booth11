<?php

namespace App\Http\Controllers;

use Phpfastcache\Helper\Psr16Adapter;

class GalleryController extends Controller
{
    /**
     * This function show the image from instagram.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $instagram = \InstagramScraper\Instagram::withCredentials(new \GuzzleHttp\Client(), 'your username', 'your password', new Psr16Adapter('Files'));
        $instagram->login(); // will use cached session if you want to force login $instagram->login(true)
        $instagram->saveSession();  //DO NOT forget this in order to save the session, otherwise have no sense
        $account = $instagram->getAccount('naimulalam_bd');
        $accountMedias = $account->getMedias();
        foreach ($accountMedias as $key  => $accountMedia) {
            $images[$key] = str_replace("&amp;","&", $accountMedia->getimageHighResolutionUrl());
            $path = $images[$key];
            $imageName = $key.'.png';
            $img = public_path('insta/images/') . $imageName;
            file_put_contents($img, file_get_contents($path));
        }
        return view('gallery', compact('images'));
    }
}
