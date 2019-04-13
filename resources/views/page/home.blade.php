@extends('master')
@section('tieudetrang')
Trang chủ
@endsection
@section('content')
@include('layout.slide')
    <!-- ##### Top Catagory Area Start ##### -->
    <section class="top-catagory-area section-padding-80-0">
        <div class="container">
                <div class="row">
                        <div class="col-12">
                            <div class="section-heading">
                                <h3>MÓN ĂN MỚI</h3>
                            </div>
                        </div>
                    </div>
            <div class="row">
                <!-- Top Catagory Area -->
                @foreach ($datactmoi as $item)

                <div class="col-12 col-lg-6">
                        <div class="single-top-catagory">
                            <img src="public/img/{{ $item['anhgioithieu']}}" alt="">
                            <!-- Content -->
                            <div class="top-cta-content">
                                <h3>{{ $item['tieude']}}</h3>
                                <p><i class="fa fa-clock-o" aria-hidden="true"></i> {{ $item['thoigianthuchien']}} <i class="fa fa-bolt" aria-hidden="true"></i> {{ $item['capdo']}} <i class="fa fa-eye" aria-hidden="true"></i> {{ $item['songuoixem']}} lượt xem </p>
                                <a href="cong-thuc/{{ $item['congthuc_id']}}" class="btn delicious-btn">Xem chi tiết</a>
                            </div>
                        </div>
                    </div>
                @endforeach

                <!-- Top Catagory Area -->

        </div>
    </section>
    <!-- ##### Top Catagory Area End ##### -->

    <!-- ##### Best Receipe Area Start ##### -->
    <section class="best-receipe-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading">
                        <h3>NHỮNG MÓN ĂN NỔI BẬT</h3>
                    </div>
                </div>
            </div>

            <div class="row">
                <!-- Single Best Receipe Area -->
                @foreach ($datactnoibat as $item)
                <div class="col-12 col-sm-6 col-lg-4">

                    <div class="single-best-receipe-area mb-30">
                        <div class="recipe-image">
                                <img src="public/img/{{ $item['anhgioithieu'] }}" alt="">
                                <div class="middle">
                                        <a href="cong-thuc/{{ $item['congthuc_id']}}" class="btn delicious-btn">Xem chi tiết</a>
                                      </div>
                        </div>

                        <div class="receipe-content">
                            <a href="cong-thuc/{{ $item['congthuc_id']}}">
                                <h5>{{ $item['tieude'] }}</h5>
                            </a>
                            <p><i class="fa fa-clock-o" aria-hidden="true"></i> {{ $item['thoigianthuchien'] }} <i class="fa fa-bolt" aria-hidden="true"></i> {{ $item['capdo'] }} <i class="fa fa-eye" aria-hidden="true"></i> {{ $item['songuoixem'] }} lượt xem </p>
                        </div>
                    </div>

                </div>
                @endforeach

        </div>
    </section>
    <!-- ##### Best Receipe Area End ##### -->

    <!-- ##### CTA Area Start ##### -->
    <section class="cta-area bg-img bg-overlay" style="background-image: url(public/img/bg-img/bg4.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <!-- Cta Content -->
                    <div class="cta-content text-center">
                        <h2>Muốn ăn ngon thì lăn vào bếp!</h2>
                        <p>Muốn nấu ăn ngon thì các bạn phải biết ăn ngon. Có những người nấu rất đẹp nhưng ăn không hợp khẩu vị. Cái đó là cái đẹp không đủ</p>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### CTA Area End ##### -->

    <!-- ##### Small Receipe Area Start ##### -->
    <section class="best-receipe-area">
            <div class="container">
                <div class="row">

                    <div class="col-12">
                        <div class="section-heading1 text-left">
                            <h3>NHỮNG MÓN ĂN VẶT<span><a href="loai/{{ $dataloaianvat }}">Xem thêm</a> </span></h3>
                        </div>

                    </div>
                </div>

                <div class="row">
                        @foreach ($dataanvat as $item)
                    <!-- Single Best Receipe Area -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="single-best-receipe-area mb-30">
                            <div class="recipe-image">
                                    <img src="public/img/{{$item['anhgioithieu']}}" alt="">
                                    <div class="middle">
                                            <a href="cong-thuc/{{ $item['congthuc_id']}}" class="btn delicious-btn">Xem chi tiết</a>
                                          </div>
                            </div>

                            <div class="receipe-content">
                                <a href="cong-thuc/{{ $item['congthuc_id']}}">
                                    <h5>{{$item['tieude']}}</h5>
                                </a>
                                <p><i class="fa fa-clock-o" aria-hidden="true"></i> {{$item['thoigianthuchien']}} <i class="fa fa-bolt" aria-hidden="true"></i> {{$item['capdo']}} <i class="fa fa-eye" aria-hidden="true"></i>{{$item['songuoixem']}} lượt xem </p>
                            </div>
                        </div>
                    </div>
                    @endforeach

            </div>
        </section>
        <section class="best-receipe-area">
                <div class="container">
                    <div class="row">

                        <div class="col-12">
                            <div class="section-heading1 text-left">
                                <h3>NHỮNG MÓN ĂN VÀO DỊP LỄ HỘI<span><a href="loai/{{ $dataloaidiplehoi }}">Xem thêm</a></span></h3>
                            </div>

                        </div>
                    </div>

                    <div class="row">
                        <!-- Single Best Receipe Area -->
                        @foreach ($datadiplehoi as $item)
                        <div class="col-12 col-sm-6 col-lg-3">
                            <div class="single-best-receipe-area mb-30">
                                <div class="recipe-image">
                                        <img src="public/img/{{$item['anhgioithieu']}}" alt="">
                                        <div class="middle">
                                                <a href="cong-thuc/{{ $item['congthuc_id']}}" class="btn delicious-btn">Xem chi tiết</a>
                                              </div>
                                </div>

                                <div class="receipe-content">
                                    <a href="cong-thuc/{{ $item['congthuc_id']}}">
                                        <h5>{{$item['tieude']}}</h5>
                                    </a>
                                    <p><i class="fa fa-clock-o" aria-hidden="true"></i> {{$item['thoigianthuchien']}} <i class="fa fa-bolt" aria-hidden="true"></i> {{$item['capdo']}} <i class="fa fa-eye" aria-hidden="true"></i> {{$item['songuoixem']}} lượt xem </p>
                                </div>
                            </div>
                        </div>
                       @endforeach
                </div>
            </section>
            <section class="best-receipe-area">
                    <div class="container">
                        <div class="row">

                            <div class="col-12">
                                <div class="section-heading1 text-left">
                                    <h3>NHỮNG MÓN ĂN GIẢM CÂN<span><a href="loai/{{ $dataloaigiamcan }}">Xem thêm</a></span></h3>
                                </div>

                            </div>
                        </div>

                        <div class="row">
                            <!-- Single Best Receipe Area -->
                            @foreach ($datagiamcan as $item)
                            <div class="col-12 col-sm-6 col-lg-3">
                                <div class="single-best-receipe-area mb-30">
                                    <div class="recipe-image">
                                            <img src="public/img/{{$item['anhgioithieu']}}" alt="">
                                            <div class="middle">
                                                    <a href="cong-thuc/{{ $item['congthuc_id']}}" class="btn delicious-btn">Xem chi tiết</a>
                                                  </div>
                                    </div>

                                    <div class="receipe-content">
                                        <a href="cong-thuc/{{ $item['congthuc_id']}}">
                                            <h5>{{$item['tieude']}}</h5>
                                        </a>
                                        <p><i class="fa fa-clock-o" aria-hidden="true"></i> {{$item['thoigianthuchien']}} <i class="fa fa-bolt" aria-hidden="true"></i> {{$item['capdo']}} <i class="fa fa-eye" aria-hidden="true"></i> {{$item['songuoixem']}} lượt xem </p>
                                    </div>
                                </div>
                            </div>
                            @endforeach
                        </div>
                </section>

    <!-- ##### Small Receipe Area End ##### -->

    <!-- ##### Quote Subscribe Area Start ##### -->
    <section class="quote-subscribe-adds">
        <div class="container">
            <div class="row align-items-end">
                <!-- Quote -->
                <div class="col-12 col-lg-4">
                    <div class="quote-area text-center">
                        <span>"</span>
                        <h4>Đồ ăn chính là biểu tượng của tình yêu khi ta không tìm ra từ ngữ nào để diễn tả</h4>
                        <p>Mỹ Hạnh</p>

                    </div>
                </div>

                <!-- Newsletter -->
                <div class="col-12 col-lg-4">
                    <div class="newsletter-area text-center">
                        <h4>Đăng ký thành viên mới</h4>
                        <!-- Form -->
                        <div class="newsletter-form bg-img bg-overlay" style="background-image: url(public/img/bg-img/bg1.jpg);">
                            <form action="#" method="post">
                                <input type="email" name="email" placeholder="Đăng ký thành viên mới">
                                <button type="submit" class="btn delicious-btn w-100">Đăng ký</button>
                            </form>
                            <p>Hãy đăng ký để trở thành một thành viên mới.Để nhận được nhiều thông tin về những món ăn ngon.</p>
                        </div>
                    </div>
                </div>

                <!-- Adds -->
                <div class="col-12 col-lg-4">
                    <div class="delicious-add">
                        <img src="public/img/bg-img/add.png" alt="">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Quote Subscribe Area End ##### -->

    <section class="best-receipe-area">
            <div class="container">
                <div class="row">

                    <div class="col-12">
                        <div class="section-heading1 text-left">
                            <h3>BÀI VIẾT NỔI BẬT</h3>
                        </div>

                    </div>
                </div>

                <div class="row">
                    <!-- Single Best Receipe Area -->
                    @foreach ($datablog as $item)
                    <div class="col-12 col-sm-6 col-lg-3">
                            <div class="single-best-receipe-area mb-30">
                                <div class="recipe-image">
                                <img src="public/img/blog-img/{{ $item['anhmota'] }}" alt="">
                                        <div class="middle">
                                                <a href="blog/{{ $item['blog_id'] }}" class="btn delicious-btn">Xem chi tiết</a>
                                              </div>
                                </div>

                                <div class="receipe-content">
                                    <a href="blog/{{ $item['blog_id'] }}">
                                        <h5 class="text-left "> {{ $item['tieudeblog'] }} </h5>
                                    </a>

                                </div>
                            </div>
                        </div>
                    @endforeach





            </div>
        </section>
    <!-- ##### Follow Us Instagram Area Start ##### -->
@endsection

