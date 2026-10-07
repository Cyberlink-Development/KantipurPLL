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
    <!--------------------------- downloads section start ------------------------------------->
    <section class="uk-section">
        <div class="uk-container uk-container-large">
            <div uk-scrollspy="cls: uk-animation-slide-bottom-small; target: .download-item; delay: 100; repeat: false;">
                @foreach ($posts as $post)
                    @if ($post->icon)
                        <div class="download-item uk-bg-light uk-padding-small border-rounded">
                            <div class="uk-flex uk-flex-between uk-flex-middle uk-flex-wrap download-content"
                                style="gap:15px;">
                                <!--------------------------- title ------------------------------------->
                                <div class="uk-flex uk-flex-middle uk-width-expand download-title" style="gap:15px;">
                                    <div class="uk-flex uk-flex-middle uk-flex-center uk-text-secondary download-icon">
                                        <i class="fa-solid fa-file-pdf"></i>
                                    </div>
                                    <div>
                                        <h4 class="uk-margin-remove uk-text-bold uk-text-primary">
                                            {{ $post->post_title }}
                                        </h4>
                                        <span class="uk-text-small uk-text-muted">
                                            PDF Document
                                        </span>
                                    </div>
                                </div>
                                <!--------------------------- buttons ------------------------------------->
                                <div class="uk-flex uk-flex-wrap download-actions" style="gap:10px;">
                                    <a href="{{ asset('uploads/original/' . $post->icon) }}" target="_blank"
                                        rel="noopener noreferrer" class="uk-button uk-primary-btn uk-border-pill">
                                        <div class="uk-flex uk-flex-middle uk-flex-center" style="gap:8px;">
                                            <span class="uk-btn-text">OPEN PDF</span>
                                            <span class="uk-btn-icon">
                                                <i class="fa-solid fa-file-pdf"></i>
                                            </span>
                                        </div>
                                    </a>
                                    <a href="{{ asset('uploads/original/' . $post->icon) }}" download
                                        class="uk-button uk-secondary-btn uk-border-pill">
                                        <div class="uk-flex uk-flex-middle uk-flex-center" style="gap:8px;">
                                            <span class="uk-btn-text">DOWNLOAD</span>
                                            <span class="uk-btn-icon">
                                                <i class="fa-solid fa-download"></i>
                                            </span>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    @endif
                @endforeach
            </div>
            <!--------------------------- pagination start ------------------------------------->
            <div class="uk-margin-large-top">
                {!! $posts->links('themes.default.common.pagination') !!}
            </div>
            <!--------------------------- pagination end ------------------------------------->
        </div>
    </section>
    <!--------------------------- downloads section end ------------------------------------->
@endsection
