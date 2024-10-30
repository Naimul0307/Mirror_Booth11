<table>
    <thead>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Short_desc</th>
        <th>Description</th>
        <th>Status</th>
        <th>Image</th>
        <th>Additional_videos_links</th>
        <th>Videos_link</th>
        <th>Gallery_images</th>
        <th>Created_at</th>
        <th>Category Id</th>
    </tr>
    </thead>
    <tbody>
    @foreach($services as $service)
        <tr>
            <td>{{ $service->id }}</td>
            <td>{{ $service->name }}</td>
            <td>{{ $service->short_desc }}</td>
            <td>{{ $service->description }}</td>
            <td>{{ $service->status }}</td>
            <td>{{ $service->image }}</td>
            <td>
                @if(isset($service->additional_videos_links) && is_array($service->additional_videos_links))
                    @foreach($service->additional_videos_links as $video)
                        <a href="{{ $video }}" target="_blank">{{ $video }}</a><br>
                    @endforeach
                @else
                    No additional videos.
                @endif
            </td>
            <td>{{ $service->videos_link }}</td>
            <td>{{ $service->gallery_images }}</td>
            <td>{{ \Carbon\Carbon::parse($service->created_at)->format('d/m/Y') }}</td>
            <td>{{ $service->category_id }}</td>
        </tr>
    @endforeach
    </tbody>
</table>
