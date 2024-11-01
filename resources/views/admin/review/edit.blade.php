@extends('admin.layouts.app')

@section('content')
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Services / Edit</h1>
                </div>
                <!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Edit</li>
                    </ol>
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
    <!-- Main content -->
    <section class="content h-100">
        <div class="container-fluid h-100">
            <!-- Small boxes (Stat box) -->
            <div class="row">
                <div class="col-md-12">
                    <form action="" method="post" name="editReviewForm" id="editReviewForm">
                        <div class="card">
                            <div class="card-header">
                                <a href="{{ route('reviewList') }}" class="btn btn-primary">Back</a>
                            </div>
                            <div class="card-body">
                                @csrf
                                <div class="form-group">
                                    <label for="name">Name</label>
                                    <input type="text" value="{{ $review->name }}" name="name" id="name" class="form-control">
                                    <p class="error name-error"></p>
                                </div>

                                <div class="form-group">
                                    <label for="description">Description</label>
                                    <textarea name="description" id="description" class="summernote">{{ $review->review_text }}</textarea>
                                </div>

                                <div class="form-group">
                                    <label for="rating" class="form-label">Rating (out of 5)</label>
                                    <select class="form-control" id="rating" name="rating">
                                        <option value="" disabled selected>Select rating</option>
                                        <option value="5" {{ old('rating', $review->rating) == 5 ? 'selected' : '' }}>5 - Excellent</option>
                                        <option value="4" {{ old('rating', $review->rating) == 4 ? 'selected' : '' }}>4 - Very Good</option>
                                        <option value="3" {{ old('rating', $review->rating) == 3 ? 'selected' : '' }}>3 - Good</option>
                                        <option value="2" {{ old('rating', $review->rating) == 2 ? 'selected' : '' }}>2 - Fair</option>
                                        <option value="1" {{ old('rating', $review->rating) == 1 ? 'selected' : '' }}>1 - Poor</option>
                                    </select>
                                    <p class="error rating-error"></p>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <input type="hidden" name="image_id" id="image_id" value="">
                                        <label for="image">Image</label>
                                        <div id="image" class="dropzone dz-clickable">
                                            <div class="dz-message needsclick">
                                                <br>Drop files here or click to upload.<br><br>
                                            </div>
                                        </div>

                                        @if(!empty($review->image))
                                        <img class="img-thumbnail my-4" src="{{ asset('uploads/review/thumb/small/'.$review->image) }}" width="300">
                                        <button type="button" class="btn btn-danger btn-sm remove-image" data-image="{{ $review->image }}">Remove</button>
                                        @endif
                                    </div>
                                </div>

                                <div class="form-group mt-4">
                                    <label for="status">Status</label>
                                    <select name="status" id="status" class="form-control">
                                        <option value="1" {{ ($review->status == 1) ? 'selected' : '' }}>Active</option>
                                        <option value="0" {{ ($review->status == 0) ? 'selected' : '' }}>Block</option>
                                    </select>
                                </div>

                                <div class="form-group mt-4">
                                    <label for="date" class="form-label">Review Date</label>
                                    <input type="date" value="{{ old('review_date', $review->review_date) }}" class="form-control" id="date" name="review_date">
                                </div>

                                <button type="submit" name="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <!-- /.row -->
            <!-- /.row (main row) -->
        </div>
        <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
@endsection

@section('extraJs')
<script type="text/javascript">
    Dropzone.autoDiscover = false;

    const dropzone = $("#image").dropzone({
        init: function() {
            this.on('addedfile', function(file) {
                if (this.files.length > 1) {
                    this.removeFile(this.files[0]);
                }
            });
        },
        url:  "{{ route('tempUpload') }}",
        maxFiles: 1,
        addRemoveLinks: true,
        acceptedFiles: "image/jpeg,image/png,image/webp,gif",
        headers: {
            'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
        },
        success: function(file, response){
            $("#image_id").val(response.id);
        }
    });

    $(document).on('click', '.remove-image', function() {
    let imageName = $(this).data('image');
    $('#image_id').val(''); // Clear the image_id field

    // Remove image preview and button from the DOM
    $(this).prev('img').remove();
    $(this).remove();

    // AJAX call to remove the main image from the server and database
    $.ajax({
        url: "{{ route('reviews.remove.image', $review->id) }}",
        type: 'POST',
        data: { image: imageName, _token: $('meta[name="_token"]').attr('content') },
        success: function(response) {
            if (response.status === 200) {
                console.log('Main image removed successfully');
            } else {
                console.log('Error removing main image: ' + response.message);
            }
        },
        error: function(jqXHR, textStatus, errorThrown) {
            console.log('AJAX Error: ' + textStatus);
        }
    });
    });


</script>
@endsection
