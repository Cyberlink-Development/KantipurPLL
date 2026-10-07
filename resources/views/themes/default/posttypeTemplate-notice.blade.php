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
    <!--------------------------- notice section start ------------------------------------->
    <section class="uk-section">
        <div class="uk-container uk-container-large">
            <div class="uk-child-width-1-1 uk-child-width-1-2@s uk-child-width-1-3@l" uk-grid
                uk-height-match=".notice-card"
                uk-scrollspy="cls: uk-animation-slide-bottom-small; target: .block; delay: 150; repeat: false;">
			    @foreach($posts as $post)
                    <div class="block">
                        <div class="notice-card uk-bg-light uk-border-bottom">
                            <!--------------------------- notice image ------------------------------------->
                            <a href="javascript:void(0);"
                                onclick="openNoticeImage('{{ $post->page_thumbnail ? asset('uploads/original/'.$post->page_thumbnail) : asset('themes-assets/img/company.jpg') }}', '{{ $post->post_title }}')"
                                class="notice-image-wrapper uk-inline-clip uk-transition-toggle uk-display-block">
                                <img src="{{ $post->page_thumbnail ? asset('uploads/original/'.$post->page_thumbnail) : asset('themes-assets/img/company.jpg') }}"
                                    class="notice-image uk-transition-scale-up uk-transition-opaque" loading="lazy"
                                    alt="{{ $post->post_title }}">
                            </a>
                            <!--------------------------- notice content ------------------------------------->
                            <div class="uk-padding-small">
                                <div class="uk-text-uppercase uk-text-muted uk-margin-small-bottom notice-date">
                                    <i class="fa-solid fa-calendar uk-text-secondary uk-margin-small-right"></i>
                                    {{ $post->post_excerpt }}
                                </div>
                                <h2 class="f-20 uk-margin-remove notice-title">
                                    {{ $post->post_title }}
                                </h2>
                                @if($post->icon)
                                    <div class="uk-margin-top">
                                        <a href="{{ asset('uploads/original/'.$post->icon) }}" target="_blank"
                                            rel="noopener noreferrer"
                                            class="uk-button uk-primary-btn uk-border-pill notice-pdf-btn">
                                            <div class="uk-flex uk-flex-middle uk-flex-center" style="gap:10px;">
                                                <span class="uk-btn-text">OPEN PDF</span>
                                                <span class="uk-btn-icon">
                                                    <i class="fa-solid fa-file-pdf"></i>
                                                </span>
                                            </div>
                                        </a>
                                    </div>
                                @endif
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
            <!--------------------------- pagination ------------------------------------->
            <div class="uk-margin-large-top">
                {!! $posts->links('themes.default.common.pagination') !!}
            </div>
        </div>
    </section>
    <!--------------------------- notice section end ------------------------------------->
    <!--------------------------- notice image modal ------------------------------------->
    <div id="notice-image-modal" class="notice-image-modal" onclick="closeNoticeImage()">
        <button type="button" class="notice-modal-close" onclick="closeNoticeImage(event)">
            <i class="fa-solid fa-xmark"></i>
        </button>
        <div class="notice-modal-content" onclick="event.stopPropagation();">
            <img id="notice-modal-image" src="" alt="Notice Image">
            <div id="notice-modal-title" class="notice-modal-title"></div>
        </div>
    </div>
    <script>
        function openNoticeImage(image, title) {
            document.getElementById('notice-modal-image').src = image;
            document.getElementById('notice-modal-title').textContent = title;
            document.getElementById('notice-image-modal').classList.add('active');
            document.body.style.overflow = 'hidden';
        }

        function closeNoticeImage(event) {
            if (event) {
                event.stopPropagation();
            }
            document.getElementById('notice-image-modal').classList.remove('active');
            document.getElementById('notice-modal-image').src = '';
            document.getElementById('notice-modal-title').textContent = '';
            document.body.style.overflow = '';
        }
        document.addEventListener('keydown', function(event) {
            if (event.key === 'Escape') {
                closeNoticeImage();
            }
        });
    </script>
@endsection
