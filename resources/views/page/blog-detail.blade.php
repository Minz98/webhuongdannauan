@extends('master')
@section('tieudetrang')

@endsection
@section('content')
<div class="blog-area section-padding-80">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-8">
                    <div class="blog-posts-area">

                        <!-- Single Blog Area -->
                        <div class="single-blog-area mb-80">
                            <!-- Thumbnail -->

                            <!-- Content -->
                            <div class="blog-content">
                            <a href="#" class="post-title">{{ $datablog[0]['tieudeblog'] }}</a>
                                <div class="meta-data">bởi <a href="#">{{ $datablog[0]['user_id'] }}</a></div>

                                <div class="blog-thumbnail">
                                        <img src="../public/img/blog-img/{{ $datablog[0]['anhmota'] }}" alt="">
                                        <!-- Post Date -->

                                    </div>
                                   <div class="detail-blog">

                                        {!! $datablog[0]['chitiet'] !!}
                                   </div>

                            </div>
                        </div>





                    </div>


                </div>

                <div class="col-12 col-lg-4">
                    <div class="blog-sidebar-area">

                        <!-- Widget -->
                        <h6>Bài viết liên quan</h6>

                        <!-- Widget -->
                        @foreach ($databloglq as $item)
                        <div class="single-widget mb-80">

                                <div class="single-blog-area mb-80">
                                        <!-- Thumbnail -->
                                        <div class="blog-thumbnail">
                                        <img src="../public/img/blog-img/{{ $item['anhmota'] }}" alt="">
                                            <!-- Post Date -->
                                            <div class="post-date">
                                                <a href="#"><span>{{ date_format($item['created_at'],'d')}}</span>Tháng {{ date_format($item['created_at'],'m')}} <br>20{{ date_format($item['created_at'],'y')}}</a>
                                            </div>
                                        </div>
                                        <!-- Content -->
                                        <div class="blog-content">

                                            <a href="blog/{{ $item['blog_id'] }}" class="post-title">{{ $item['tieudeblog'] }}</a>
                                            <div class="meta-data">bởi <a href="#">{{ $item['user_id'] }}</a></div>
                                        </div>
                                    </div>
                            </div>
                        @endforeach


                        <!-- Widget -->


                        <!-- Widget -->


                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
