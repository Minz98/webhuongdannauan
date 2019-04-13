 <!-- ##### Hero Area Start ##### -->
 <section class="hero-area">

     <div class="hero-slides owl-carousel">
            @foreach ($dataslide as $item)
            <div class="single-hero-slide bg-img" style="background-image: url('public/img/slide-img/{{ $item['anh'] }}')">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
                            <div class="hero-slides-content" data-animation="fadeInUp" data-delay="100ms">
                                <h2 data-animation="fadeInUp" data-delay="300ms">{{ $item['tenslide'] }}</h2>
                                <p data-animation="fadeInUp" data-delay="700ms">{{ $item['mota'] }}</p>
                                <a href="#" class="btn delicious-btn" data-animation="fadeInUp" data-delay="1000ms">Xem công thức</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach

        </div>


    </section>
    <!-- ##### Hero Area End ##### -->
