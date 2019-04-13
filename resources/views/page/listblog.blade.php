@extends('master')
@section('tieudetrang')
Blog
@endsection
@section('content')
<div class="blog-area section-padding-80">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-8">
                    <div class="blog-posts-area">

                        <!-- Single Blog Area -->
                        @foreach ($datablog as $item)
                        <div class="single-blog-area mb-80">
                                <!-- Thumbnail -->
                                <div class="blog-thumbnail">
                                <img src="public/img/blog-img/{{ $item['anhmota'] }}" alt="">
                                    <!-- Post Date -->
                                    <div class="post-date">
                                        <a href="#"><span>01</span> Tháng 4 <br> 2019</a>
                                    </div>
                                </div>
                                <!-- Content -->
                                <div class="blog-content">
                                    <a href="#" class="post-title">{{ $item['tieudeblog'] }}</a>
                                    <div class="meta-data">bởi <a href="#">{{ $item['user_id'] }}</a></div>
                                    <p>{{ $item['mota'] }}</p>


                                    <a href="blog/{{ $item['blog_id'] }}" class="btn delicious-btn mt-30">Chi tiết</a>
                                </div>
                            </div>
                        @endforeach




                </div>
                </div>

                <div class="col-12 col-lg-4">
                    <div class="blog-sidebar-area">

                        <!-- Widget -->


                        <!-- Widget -->
                        <div class="single-widget mb-80">
                            <h6>Chủ đề</h6>
                            <ul class="list">
                                @foreach ($dataloaiblog as $item)
                            <li><a href="#">{{ $item['tenloaiblog'] }}</a></li>
                                @endforeach

                            </ul>
                        </div>

                        <!-- Widget -->


                        <!-- Widget -->
                        <div class="single-widget mb-80">
                            <div class="quote-area text-center">
                                <span>"</span>
                                <h4> Trông tôi có vẻ đang suy nghĩ đấy, nhưng đến 90% suy nghĩ trong bộ não tôi là nên ăn gì tiếp theo.</h4>
                                <p>Mỹ Hạnh</p>

                            </div>
                        </div>
                        <div class="single-widget mb-80">
                                <img src="public/img/blog-img/b1.jpg" alt="">
                            </div>
                            <div class="single-widget mb-80">
                                    <img src="public/img/blog-img/b2.jpg" alt="">
                                </div>
                                <div class="single-widget mb-80">
                                        <img src="public/img/blog-img/b3.jpg" alt="">
                                    </div>
                                    <div class="single-widget mb-80">
                                            <img src="public/img/blog-img/b4.jpg" alt="">
                                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
