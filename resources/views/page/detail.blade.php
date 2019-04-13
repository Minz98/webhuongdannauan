@extends('master')
@section('tieudetrang')
Công thức     
@endsection
@section('content')
<div class="breadcumb-area bg-img bg-overlay" style="background-image: url(../public/img/{{ $datacongthuc[0]['anhgioithieu'] }});">
    <div class="container h-100">
        <div class="row h-100 align-items-center">
            <div class="col-12">
                <div class="breadcumb-text text-center">
                    <h2>Công thức làm: {{$datacongthuc[0]['tieude']}}</h2>
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

    <!-- Receipe Slider -->
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="receipe-slider owl-carousel">
                    @foreach ($dataanhcachlam as $item)
                    <img src="../public/img/{{$item}}" alt="" width="200px" height="300px">
                    @endforeach
                
                </div>
            </div>
        </div>
    </div>

    <!-- Receipe Content Area -->
    <div class="receipe-content-area">
        <div class="container">

            <div class="row">
                <div class="col-12 col-md-8">
                    <div class="receipe-headline my-5">
                      
                        <span>{{ date_format($datacongthuc[0]['created_at'],'d')}}/{{ date_format($datacongthuc[0]['created_at'],'m')}}/{{ date_format($datacongthuc[0]['created_at'],'y')}}</span>
                        <h2>{{$datacongthuc[0]['tieude']}}</h2>
                        <div class="receipe-duration">
                            <h6>Cấp độ: {{$datacongthuc[0]['capdo']}}</h6>
                            <h6>Thời gian chuẩn bị: {{$datacongthuc[0]['thoigianchuanbi']}}</h6>
                            <h6>Thời gian nấu: {{$datacongthuc[0]['thoigianthuchien']}}</h6>
                            <h6>Phần: {{$datacongthuc[0]['khauphan']}}</h6>
                        </div>
                    </div>
                </div>

               
            </div>

            <div class="row">
                <div class="col-12 col-lg-8">
                    <!-- Single Preparation Step -->
                    
                    @foreach ($datacachlam as $index=>$item)
                    <div class="single-preparation-step d-flex">
                            <h4>B{{$index++}}:  </h4>
                            <p>{{$item}}</p>
                        </div>
                    @endforeach
                    
                  
                </div>

                <!-- Ingredients -->
                <div class="col-12 col-lg-4">
                    <div class="ingredients">
                        <h4>Nguyên liệu</h4>
                     
                        @foreach ($datanguyenlieu as $item )
                        <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="customCheck1">
                                <label class="custom-control-label" for="customCheck1">{{ $item }}</label>
                            </div>
                        @endforeach
                        <!-- Custom Checkbox -->
                       

                        
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <div class="section-heading text-left">
                        <h3>Bình luận</h3>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <div class="contact-form-area">
                        <form action="#" method="post">
                            <div class="row">
                              
                               
                                <div class="col-12">
                                    <textarea name="message" class="form-control" id="message" cols="30" rows="10" placeholder="Nội dung"></textarea>
                                </div>
                                <div class="col-12">
                                    <button class="btn delicious-btn mt-30" type="submit">Gửi bình luận</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<section class="best-receipe-area">
    
        <div class="container">
            <div class="row">
            
                <div class="col-12">
                    <div class="section-heading1 text-left">
                        <h3>Món liên quan<span>Xem thêm</span></h3>  
                    </div>
                    
                </div>
            </div>

            <div class="row">
                    @foreach ($datamonlienquan as $item) 
                <!-- Single Best Receipe Area -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-best-receipe-area mb-30">
                        <div class="recipe-image">
                                <img src="../public/img/{{$item['anhgioithieu']}}" alt="">
                                <div class="middle">
                                        <a href="receipe-post.html" class="btn delicious-btn">Xem chi tiết</a>
                                      </div>
                        </div>
                       
                        <div class="receipe-content">
                            <a href="receipe-post.html">
                                <h5>{{$item['tieude']}}</h5>
                            </a>
                            <p><i class="fa fa-clock-o" aria-hidden="true"></i> {{$item['thoigianthuchien']}} <i class="fa fa-bolt" aria-hidden="true"></i> {{$item['capdo']}} <i class="fa fa-eye" aria-hidden="true"></i>{{$item['songuoixem']}} lượt xem </p>
                        </div>
                    </div>
                </div>
                @endforeach
            
        </div>
            
        </div>
    </section>
@endsection