@extends('master')
@section('tieudetrang')
    Cách làm món ăn
@endsection
@section('content')
<div class="breadcumb-area bg-img bg-overlay" style="background-image: url(../public/img/bg-img/recipe.jpg);">
    <div class="container h-100">
        <div class="row h-100 align-items-center">
            <div class="col-12">
                <div class="breadcumb-text text-center">
                    <h2> <span style="color:green"></span> Những món ăn </h2>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ##### Breadcumb Area End ##### -->

<div class="receipe-post-area section-padding-80">

    <!-- Receipe Post Search -->
    <div class="receipe-post-search mb-80">
        <div class="container">
            <form action="#" method="post">
                <div class="row">
                    <div class="col-12 col-lg-2">
                        <select name="select1" id="select1">
                            <option value="1">Thực đơn</option>
                            <option value="1">Món khai vị</option>
                            <option value="1">Món khai vị</option>
                            <option value="1">Món khai vị</option>
                            <option value="1">Món khai vị</option>
                        </select>
                    </div>
                    <div class="col-12 col-lg-2">
                        <select name="select1" id="select2">
                            <option value="1">Nguyên liệu</option>
                            <option value="1">Thịt heo</option>
                            <option value="1">Thịt heo</option>
                            <option value="1">Thịt heo</option>
                            <option value="1">Thịt heo</option>
                        </select>
                    </div>
                    <div class="col-12 col-lg-2">
                            <select name="select1" id="select2">
                                <option value="1">Ẩm thực</option>
                                <option value="1">Thịt heo</option>
                                <option value="1">Thịt heo</option>
                                <option value="1">Thịt heo</option>
                                <option value="1">Thịt heo</option>
                            </select>
                        </div>
                        <div class="col-12 col-lg-2">
                                <select name="select1" id="select2">
                                    <option value="1">Độ khó</option>
                                    <option value="1">Thịt heo</option>
                                    <option value="1">Thịt heo</option>
                                    <option value="1">Thịt heo</option>
                                    <option value="1">Thịt heo</option>
                                </select>
                            </div>
                            <div class="col-12 col-lg-2">
                                    <select name="select1" id="select2">
                                        <option value="1">Cách thực hiện</option>
                                        <option value="1">Thịt heo</option>
                                        <option value="1">Thịt heo</option>
                                        <option value="1">Thịt heo</option>
                                        <option value="1">Thịt heo</option>
                                    </select>
                                </div>

                    <div class="col-12 col-lg-2 text-right">
                        <button type="submit" class="btn delicious-btn">Tìm kiếm</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <section class="best-receipe-area">
            <div class="container">
                <div class="row">


                </div>

                <div class="row">
                    <!-- Single Best Receipe Area -->
                    @foreach ($datacongthuc as $item)
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="single-best-receipe-area mb-30">
                            <div class="recipe-image">
                            <img src="../public/img/{{ $item['anhgioithieu'] }}" alt="">
                                    <div class="middle">
                                            <a href="/loai/cong-thuc/{{ $item['congthuc_id']}}" class="btn delicious-btn">Xem chi tiết</a>
                                          </div>
                            </div>

                            <div class="receipe-content">
                                <a href="cong-thuc/{{ $item['congthuc_id']}}">
                                <h5>{{ $item['tieude'] }}</h5>
                                </a>
                                <p><i class="fa fa-clock-o" aria-hidden="true"></i> {{ $item['thoigianthuchien'] }} <i class="fa fa-bolt" aria-hidden="true"></i> {{ $item['capdo'] }} <i class="fa fa-eye" aria-hidden="true"></i> {{ $item['songuoixem'] }} </p>
                            </div>
                        </div>
                    </div>
                    @endforeach



            </div>
        </section>
</div>
@endsection

