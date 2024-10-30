<div class="instagram-feed">
    @foreach($posts as $post)
        <div class="instagram-post">
            <img src="{{ $post['media_url'] }}" alt="Instagram Post">
            <p>{{ $post['caption'] }}</p>
        </div>
    @endforeach
</div>
