@extends('themes.default.common.master')
@section('meta_keyword', $data->meta_keyword)
@section('meta_description', $data->meta_description)
@section('content')
    <!--------------------------- banner section start ------------------------------------->
    <div class="uk-inline uk-inner-banner">
        <img src="{{ $data->banner ? asset('uploads/medium/' . $data->banner) : asset('themes-assets/img/company.jpg') }}"
            loading="lazy" alt="{{ $data->post_type }}">
        <div class="uk-overlay uk-overlay-primary uk-position-cover uk-banner-overlay uk-flex uk-flex-column uk-flex-center">
            <div class="uk-width-1-1 uk-text-center"
                uk-scrollspy="cls: uk-animation-slide-bottom-small; target: h3,h1; delay: 400; repeat: false;">
                <h3 class="uk-margin-remove">
                    <a href="{{ url('/') }}">HOME</a> / {{ $data->post_type }}
                </h3>
                <h1 class="uk-margin-small-top">{{ $data->uid }}</h1>
            </div>
        </div>
    </div>
    <!--------------------------- banner section end ------------------------------------->
    <!--------------------------- gallery section start ------------------------------------->
    <section class="uk-section">
        <div class="uk-container uk-container-large">
            <div class="uk-child-width-1-2@s
uk-child-width-1-3@m" uk-grid
                uk-scrollspy="cls: uk-animation-slide-bottom-small; target: .gallery-item; delay: 100; repeat: false;">
                @foreach ($posts as $post)
                    @foreach ($post->images as $row)
                        <div class="gallery-item">
                            <a href="javascript:void(0);"
                                onclick="openGalleryImage('{{ asset('uploads/medium/' . $row->file_name) }}', '{{ $row->title }}')"
                                class="uk-inline-clip uk-transition-toggle uk-display-block border-rounded gallery-card">
                                <img src="{{ asset('uploads/medium/' . $row->file_name) }}" loading="lazy"
                                    alt="{{ $row->title }}"
                                    class="gallery-image uk-transition-scale-up uk-transition-opaque">
                                <span class="gallery-title">
                                    {{ $row->title }}
                                </span>
                            </a>
                        </div>
                    @endforeach
                @endforeach
            </div>
            <div class="uk-margin-large-top">
                {!! $posts->links('themes.default.common.pagination') !!}
            </div>
        </div>
    </section>
    <!--------------------------- gallery section end ------------------------------------->
    <!--------------------------- gallery image modal ------------------------------------->
    <div id="gallery-image-modal" class="gallery-image-modal" onclick="closeGalleryImage()">
        <button type="button" class="gallery-modal-close" onclick="closeGalleryImage(event)">
            <i class="fa-solid fa-xmark"></i>
        </button>
        <div class="gallery-modal-content" onclick="event.stopPropagation();">
            <img id="gallery-modal-image" src="" alt="Gallery Image">
            <div id="gallery-modal-title" class="gallery-modal-title"></div>
        </div>
    </div>
    <script>
        function openGalleryImage(image, title) {
            document.getElementById('gallery-modal-image').src = image;
            document.getElementById('gallery-modal-title').textContent = title;
            document.getElementById('gallery-image-modal').classList.add('active');
            document.body.style.overflow = 'hidden';
        }

        function closeGalleryImage(event) {
            if (event) {
                event.stopPropagation();
            }
            document.getElementById('gallery-image-modal').classList.remove('active');
            document.getElementById('gallery-modal-image').src = '';
            document.getElementById('gallery-modal-title').textContent = '';
            document.body.style.overflow = '';
        }
        document.addEventListener('keydown', function(event) {
            if (event.key === 'Escape') {
                closeGalleryImage();
            }
        });
    </script>
@endsection
