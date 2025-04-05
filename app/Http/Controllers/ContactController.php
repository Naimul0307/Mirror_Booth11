<?php

namespace App\Http\Controllers;

use App\Mail\ContactMail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Mail;

class ContactController extends Controller
{
    public function index() {
        $settings = getSettings();
        return view('contact', [
            'settings' => $settings,
            'meta_title' => 'CONTACT US | MIRROR BOOTH EVENT SERVICES L.L.C. - DUBAI,UAE',
            'meta_description' => 'GET IN TOUCH WITH MIRROR BOOTH EVENT SERVICES L.L.C FOR BOOKING OR INQUIRIES. CONTACT US TODAY TO MAKE YOUR EVENT UNFORGETTABLE WITH OUR PHOTO BOOTH SERVICES.',
            'meta_keywords' => 'CONTACT, MIRROR BOOTH, DUBAI, BOOKING,UAE, MIRROR BOOTH EVENt SERVICES L.L.C'
        ]);
    }

   public function sendEmail(Request $request){

        $validator = Validator::make($request->all(),[
            'name' => 'required',
            'email' => 'required|email',
            'message' => 'required'
        ]);

        $emailData = [];
        if ($validator->passes()) {
            $emailData['name'] = $request->name;
            $emailData['email'] = $request->email;
            $emailData['message'] = $request->message;

            Mail::to('support@dubai-photobooth.com')->send(new ContactMail($emailData));

            $request->session()->flash('success','Thanks for contacting us, we will contact you shortly.');

            return response()->json([
                'status' => 200,
            ]);

        } else {
           return response()->json([
            'status' => 0,
            'errors' => $validator->errors()
           ]);
        }

   }
}
