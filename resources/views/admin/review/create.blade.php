@extends('admin.layouts.app')

@section('content')

    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Review / Create</h1>
                </div>
                <!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ route('admin.dashboard') }}">Home</a></li>
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
                    <form action="{{ route('reviews.create') }}" method="post" name="createReviewForm" id="createReviewForm">
                        @csrf
                        <div class="card">
                            <div class="card-header">
                                <a href="{{ route('reviewList') }}" class="btn btn-primary">Back</a>
                            </div>
                            <div class="card-body">

                                <!-- Other Form Fields -->
                                <div class="form-group">
                                    <label for="name">Name</label>
                                    <input type="text" name="name" id="name" class="form-control">
                                    <p class="error name-error"></p>
                                </div>


                                <div class="form-group">
                                    <label for="description">Description</label>
                                    <textarea name="description" id="description" class="summernote"></textarea>
                                </div>

                                <div class="form-group">
                                    <label for="rating" class="form-label">Rating (out of 5)</label>
                                    <select class="form-control" id="rating" name="rating">
                                        <option value="" disabled selected>Select rating</option>
                                        <option value="5">5 - Excellent</option>
                                        <option value="4">4 - Very Good</option>
                                        <option value="3">3 - Good</option>
                                        <option value="2">2 - Fair</option>
                                        <option value="1">1 - Poor</option>
                                    </select>
                                    <p class="error rating-error"></p>
                                </div>

                                <div class="form-group">
                                        <input type="hidden" name="image_id" id="image_id" value="">
                                        <label for="Image">Upload Your Image</label>
                                        <div id="image" class="dropzone dz-clickable">
                                            <div class="dz-message needsclick">
                                                <br>Drop files here or click to upload.<br><br>
                                            </div>
                                        </div>
                                </div>

                                <div class="form-group">
                                    <label for="date" class="form-label">Review Date</label>
                                    <input type="date" class="form-control" id="date" name="date">
                                </div>

                                <div class="form-group mt-4">
                                    <label for="status">Status</label>
                                    <select name="status" id="status" class="form-control">
                                        <option value="1">Active</option>
                                        <option value="0">Block</option>
                                    </select>
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
        url: "{{ route('tempUpload') }}",
        maxFiles: 1,
        addRemoveLinks: true,
        acceptedFiles: "image/jpeg,image/png,image/gif",
        headers: {
            'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
        },
        success: function(file, response){
            $("#image_id").val(response.id);
        }
    });

    $("#createReviewForm").submit(function(event){
        event.preventDefault();
        $("button[type='submit']").prop('disabled', true);

        $.ajax({
            url: '{{ route("reviews.create") }}',
            type: 'POST',
            dataType: 'json',
            data: $("#createReviewForm").serialize(),
            success: function(response){
                $("button[type='submit']").prop('disabled', false);

                if(response.status == 200) {
                    window.location.href = '{{ route("reviewList") }}';
                } else {
                    $('.name-error').html(response.errors.name);
                }
            }
        });
    });

</script>

@endsection
