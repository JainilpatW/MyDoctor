﻿
<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/DocMaster.Master" CodeBehind="DefaultPage.aspx.vb" Inherits="MyDoctor.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Section: intro -->
    <section id="intro" class="intro">
        <div class="intro-content">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="wow fadeInDown" data-wow-offset="0" data-wow-delay="0.1s">
                            <h2 class="h-ultra">MyDoctor medical group</h2>
                        </div>
                        <div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.1s">
                            <h4 class="h-light">Provide best quality healthcare for you</h4>
                        </div>
                        <div class="well well-trans">
                            <div class="wow fadeInRight" data-wow-delay="0.1s">

                                <ul class="lead-list">
                                    <li><span class="fa fa-check fa-2x icon-success"></span><span class="list"><strong>Affordable monthly premium packages</strong><br />
                                        A HOSPITAL ALONE SHOWS WHAT WAR IS </span></li>
                                    <li><span class="fa fa-check fa-2x icon-success"></span><span class="list"><strong>Choose your favourite doctor</strong><br />
                                        THE BEST DOCTOR GIVES THE LEAST MEDICINES</span></li>
                                    <li><span class="fa fa-check fa-2x icon-success"></span><span class="list"><strong>Only use friendly environment</strong><br />
                                        WHEN WE HEAL THE EARTH, WE HEAL OURSELVES</span></li>
                                </ul>
                            </div>
                        </div>


                    </div>
                    <div class="col-lg-6">
                        <div class="wow fadeInUp" data-wow-duration="2s" data-wow-delay="0.2s">
                            <img src="img/dummy/img-1.png" class="img-responsive" alt="" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- /Section: intro -->

    <!-- Section: boxes -->
    <section id="boxes" class="home-section paddingtop-80">

        <div class="container">
            <div class="row">
                <div class="col-sm-3 col-md-3">
                    <div class="wow fadeInUp" data-wow-delay="0.2s">
                        <div class="box text-center">

                            <i class="fa fa-check fa-3x circled bg-skin"></i>
                            <h4 class="h-bold">Make an appoinment</h4>
                            <p>
                               " OPPORTUNITY DOESN'T MAKE APPOINTMENT, YOU HAVE TO BE READY WHEN IT ARRIVES. "
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3 col-md-3">
                    <div class="wow fadeInUp" data-wow-delay="0.2s">
                        <div class="box text-center">

                            <i class="fa fa-list-alt fa-3x circled bg-skin"></i>
                            <h4 class="h-bold">Choose your package</h4>
                            <p>
                               " YOU CAN'T CHOOSE BETWEEN LOVE AND FRIENDSHIP. THEY'RE LIKE A PAKAGE: YOU EITHER GET BOTH OR YOU LOSE BOTH. "
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3 col-md-3">
                    <div class="wow fadeInUp" data-wow-delay="0.2s">
                        <div class="box text-center">
                            <i class="fa fa-user-md fa-3x circled bg-skin"></i>
                            <h4 class="h-bold">Help by specialist</h4>
                            <p>
                               " AGAIN IS A FACT OF LIFE. LOOKING YOUR AGE IS NOT. "
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3 col-md-3">
                    <div class="wow fadeInUp" data-wow-delay="0.2s">
                        <div class="box text-center">

                            <i class="fa fa-hospital-o fa-3x circled bg-skin"></i>
                            <h4 class="h-bold">Get diagnostic report</h4>
                            <p>
                               " EVERYTHING POSITIVE IS VERY POSITIVE EXCEPT FOR A DIAGNOSTIC REPORT. "
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </section>
    <!-- /Section: boxes -->

    <section id="callaction" class="home-section paddingtop-40">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="callaction bg-gray">
                        <div class="row">
                            <div class="col-md-8">
                                <div class="wow fadeInUp" data-wow-delay="0.1s">
                                    <div class="cta-text">
                                        <h3>In an emergency? Need help now?</h3>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="wow lightSpeedIn" data-wow-delay="0.1s">
                                    <div class="cta-btn">
                                        <a href="Patient_Appoinment.aspx" class="btn btn-skin btn-lg">Book an appoinment</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Section: services -->
    <section id="service" class="home-section nopadding paddingtop-60">

        <div class="container">

            <div class="row">
                <div class="col-sm-6 col-md-6">
                    <div class="wow fadeInUp" data-wow-delay="0.2s">
                        <img src="img/dummy/img-1.jpg" class="img-responsive" alt="" />
                    </div>
                </div>
                <div class="col-sm-3 col-md-3">

                    <div class="wow fadeInRight" data-wow-delay="0.1s">
                        <div class="service-box">
                            <div class="service-icon">
                                <span class="fa fa-stethoscope fa-3x"></span>
                            </div>
                            <div class="service-desc">
                                <h5 class="h-light">Medical checkup</h5>
                                <p>A CHECK UP CAN TELL YOUR "INSIDE" STORY.</p>
                            </div>
                        </div>
                    </div>

                    <div class="wow fadeInRight" data-wow-delay="0.2s">
                        <div class="service-box">
                            <div class="service-icon">
                                <span class="fa fa-wheelchair fa-3x"></span>
                            </div>
                            <div class="service-desc">
                                <h5 class="h-light">Nursing Services</h5>
                                <p>ALL NURSES ARE FRIENDLY</p>
                            </div>
                        </div>
                    </div>
                    <div class="wow fadeInRight" data-wow-delay="0.3s">
                        <div class="service-box">
                            <div class="service-icon">
                                <span class="fa fa-plus-square fa-3x"></span>
                            </div>
                            <div class="service-desc">
                                <h5 class="h-light">Pharmacy</h5>
                                <p>ALL MEDICINE HAVE BEEN APPLIED</p>
                            </div>
                        </div>
                    </div>


                </div>
                <div class="col-sm-3 col-md-3">

                    <div class="wow fadeInRight" data-wow-delay="0.1s">
                        <div class="service-box">
                            <div class="service-icon">
                                <span class="fa fa-h-square fa-3x"></span>
                            </div>
                            <div class="service-desc">
                                <h5 class="h-light">Humanistic therapy</h5>
                                <p>DOCTOR ARE AVAILABLE </p>
                            </div>
                        </div>
                    </div>

                    <div class="wow fadeInRight" data-wow-delay="0.2s">
                        <div class="service-box">
                            <div class="service-icon">
                                <span class="fa fa-filter fa-3x"></span>
                            </div>
                            <div class="service-desc">
                                <h5 class="h-light">Physiotherapy</h5>
                                <p>ALL SPECIALIST ARE THEIR</p>
                            </div>
                        </div>
                    </div>
                    <div class="wow fadeInRight" data-wow-delay="0.3s">
                        <div class="service-box">
                            <div class="service-icon">
                                <span class="fa fa-user-md fa-3x"></span>
                            </div>
                            <div class="service-desc">
                                <h5 class="h-light">Doctors</h5>
                                <p>DO NOT DISTURB</p>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </section>
    <!-- /Section: services -->

    <!-- Section: team -->
    <section id="doctor" class="home-section bg-gray paddingbot-60">
        <div class="container marginbot-50">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="wow fadeInDown" data-wow-delay="0.1s">
                        <div class="section-heading text-center">
                            <h2 class="h-bold">Doctors</h2>
                            <p>THE GOOD PHYSICIAN TREATS THE DISEASE; THE GREAT PHYSICIAN TREATS THE PATIENT WHO HAS THE DISEASE</p>
                        </div>
                    </div>
                    <div class="divider-short"></div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">

                    <div id="filters-container" class="cbp-l-filters-alignLeft">
                        <div data-filter="*" class="cbp-filter-item-active cbp-filter-item">
                            All (
                <div class="cbp-filter-counter"></div>
                            )
                        </div>
                        <div data-filter=".cardiologist" class="cbp-filter-item">
                            Cardiologist (
                <div class="cbp-filter-counter"></div>
                            )
                        </div>
                        <div data-filter=".psychiatrist" class="cbp-filter-item">
                            Psychiatrist (
                <div class="cbp-filter-counter"></div>
                            )
                        </div>
                        <div data-filter=".neurologist" class="cbp-filter-item">
                            Neurologist (
                <div class="cbp-filter-counter"></div>
                            )
                        </div>
                    </div>

                    

                    <div id="grid-container" class="cbp-l-grid-team">
                        <ul>
                            <li class="cbp-item psychiatrist">
                                <a href="doctors/member1.html" class="cbp-caption cbp-singlePage">
                                    <div class="cbp-caption-defaultWrap">
                                        <img src="img/team/Doctor.jpg" alt="" width="100%">
                                    </div>
                                    <%--<div class="cbp-caption-activeWrap">
                                        <div class="cbp-l-caption-alignCenter">
                                            <div class="cbp-l-caption-body">
                                                <div class="cbp-l-caption-text">VIEW PROFILE</div>
                                            </div>
                                        </div>
                                    </div>--%>
                                </a>
                                <a href="doctors/member1.html" class="cbp-singlePage cbp-l-grid-team-name">Dr.Bhavesh Patel</a>
                                <div class="cbp-l-grid-team-position">Psychiatrist(MBBS.MD)</div>
                            </li>

                            <li class="cbp-item psychiatrist">
                                <a href="doctors/member1.html" class="cbp-caption cbp-singlePage">
                                    <div class="cbp-caption-defaultWrap">
                                        <img src="img/team/Doctor.jpg" alt="" width="100%">
                                    </div>
                                    <%--<div class="cbp-caption-activeWrap">
                                        <div class="cbp-l-caption-alignCenter">
                                            <div class="cbp-l-caption-body">
                                                <div class="cbp-l-caption-text">VIEW PROFILE</div>
                                            </div>
                                        </div>
                                    </div>--%>
                                </a>
                                <a href="doctors/member1.html" class="cbp-singlePage cbp-l-grid-team-name">Dr.Ashwin Patel

                                </a>
                                <div class="cbp-l-grid-team-position">Psychiatrist(MBBS.MD)</div>
                            </li>

                            <li class="cbp-item psychiatrist">
                                <a href="doctors/member1.html" class="cbp-caption cbp-singlePage">
                                    <div class="cbp-caption-defaultWrap">
                                        <img src="img/team/Doctor.jpg" alt="" width="100%">
                                    </div>
                                    <%--<div class="cbp-caption-activeWrap">
                                        <div class="cbp-l-caption-alignCenter">
                                            <div class="cbp-l-caption-body">
                                                <div class="cbp-l-caption-text">VIEW PROFILE</div>
                                            </div>
                                        </div>
                                    </div>--%>
                                </a>
                                <a href="doctors/member1.html" class="cbp-singlePage cbp-l-grid-team-name">Dr.Rahul Yadav</a>
                                <div class="cbp-l-grid-team-position">Psychiatrist(MBBS.MD)</div>
                            </li>

                            <li class="cbp-item psychiatrist">
                                <a href="doctors/member1.html" class="cbp-caption cbp-singlePage">
                                    <div class="cbp-caption-defaultWrap">
                                        <img src="img/team/Doctor.jpg" alt="" width="100%">
                                    </div>
                                    <%--<div class="cbp-caption-activeWrap">
                                        <div class="cbp-l-caption-alignCenter">
                                            <div class="cbp-l-caption-body">
                                                <div class="cbp-l-caption-text">VIEW PROFILE</div>
                                            </div>
                                        </div>
                                    </div>--%>
                                </a>
                                <a href="doctors/member1.html" class="cbp-singlePage cbp-l-grid-team-name">Dr.Dilip Agrawal</a>
                                <div class="cbp-l-grid-team-position">Psychiatrist(MBBS)</div>
                            </li>

                            <li class="cbp-item cardiologist">
                                <a href="doctors/member2.html" class="cbp-caption cbp-singlePage">
                                    <div class="cbp-caption-defaultWrap">
                                        <img src="img/team/Doctor.jpg" alt="" width="100%">
                                    </div>
                                    <%--<div class="cbp-caption-activeWrap">
                                        <div class="cbp-l-caption-alignCenter">
                                            <div class="cbp-l-caption-body">
                                                <div class="cbp-l-caption-text">VIEW PROFILE</div>
                                            </div>
                                        </div>
                                    </div>--%>
                                </a>
                                <a href="doctors/member2.html" class="cbp-singlePage cbp-l-grid-team-name">Dr. Viren Vekariya</a>
                                <div class="cbp-l-grid-team-position">Cardiologist(MD,MS)</div>
                            </li>
                            <li class="cbp-item cardiologist">
                                <a href="doctors/member3.html" class="cbp-caption cbp-singlePage">
                                    <div class="cbp-caption-defaultWrap">
                                        <img src="img/team/Doctor.jpg" alt="" width="100%">
                                    </div>
                                    <%--<div class="cbp-caption-activeWrap">
                                        <div class="cbp-l-caption-alignCenter">
                                            <div class="cbp-l-caption-body">
                                                <div class="cbp-l-caption-text">VIEW PROFILE</div>
                                            </div>
                                        </div>
                                    </div>--%>
                                </a>
                                <a href="doctors/member3.html" class="cbp-singlePage cbp-l-grid-team-name">Dr. Parth Borad</a>
                                <div class="cbp-l-grid-team-position">Cardiologist(MD,MS)</div>
                            </li>

                            <li class="cbp-item cardiologist">
                                <a href="doctors/member3.html" class="cbp-caption cbp-singlePage">
                                    <div class="cbp-caption-defaultWrap">
                                        <img src="img/team/Doctor.jpg" alt="" width="100%">
                                    </div>
                                    <%--<div class="cbp-caption-activeWrap">
                                        <div class="cbp-l-caption-alignCenter">
                                            <div class="cbp-l-caption-body">
                                                <div class="cbp-l-caption-text">VIEW PROFILE</div>
                                            </div>
                                        </div>
                                    </div>--%>
                                </a>
                                <a href="doctors/member3.html" class="cbp-singlePage cbp-l-grid-team-name">Dr.Nitin Shah</a>
                                <div class="cbp-l-grid-team-position">Cardiologist(MD,MS)</div>
                            </li>

                            <li class="cbp-item cardiologist">
                                <a href="doctors/member3.html" class="cbp-caption cbp-singlePage">
                                    <div class="cbp-caption-defaultWrap">
                                        <img src="img/team/Doctor1.jpg" alt="" width="100%">
                                    </div>
                                    <%--<div class="cbp-caption-activeWrap">
                                        <div class="cbp-l-caption-alignCenter">
                                            <div class="cbp-l-caption-body">
                                                <div class="cbp-l-caption-text">VIEW PROFILE</div>
                                            </div>
                                        </div>
                                    </div>--%>
                                </a>
                                <a href="doctors/member3.html" class="cbp-singlePage cbp-l-grid-team-name">Dr.parvi H Patel</a>
                                <div class="cbp-l-grid-team-position">Cardiologist(MD)</div>
                            </li>

                            <li class="cbp-item neurologist">
                                <a href="doctors/member4.html" class="cbp-caption cbp-singlePage">
                                    <div class="cbp-caption-defaultWrap">
                                        <img src="img/team/Doctor.jpg" alt="" width="100%">
                                    </div>
                                    <%--<div class="cbp-caption-activeWrap">
                                        <div class="cbp-l-caption-alignCenter">
                                            <div class="cbp-l-caption-body">
                                                <div class="cbp-l-caption-text">VIEW PROFILE</div>
                                            </div>
                                        </div>
                                    </div>--%>
                                </a>
                                <a href="doctors/member4.html" class="cbp-singlePage cbp-l-grid-team-name">Dr. Bhavya Kyada</a>
                                <div class="cbp-l-grid-team-position">Neurologist(MBBS.MD)</div>
                            </li>

                            <li class="cbp-item neurologist">
                                <a href="doctors/member4.html" class="cbp-caption cbp-singlePage">
                                    <div class="cbp-caption-defaultWrap">
                                        <img src="img/team/Doctor.jpg" alt="" width="100%">
                                    </div>
                                    <%--<div class="cbp-caption-activeWrap">
                                        <div class="cbp-l-caption-alignCenter">
                                            <div class="cbp-l-caption-body">
                                                <div class="cbp-l-caption-text">VIEW PROFILE</div>
                                            </div>
                                        </div>
                                    </div>--%>
                                </a>
                                <a href="doctors/member4.html" class="cbp-singlePage cbp-l-grid-team-name">Dr.Nilesh Agrawal</a>
                                <div class="cbp-l-grid-team-position">Neurologist(MBBS.MD)</div>
                            </li>

                             <li class="cbp-item neurologist">
                                <a href="doctors/member4.html" class="cbp-caption cbp-singlePage">
                                    <div class="cbp-caption-defaultWrap">
                                        <img src="img/team/Doctor.jpg" alt="" width="100%">
                                    </div>
                                    <%--<div class="cbp-caption-activeWrap">
                                        <div class="cbp-l-caption-alignCenter">
                                            <div class="cbp-l-caption-body">
                                                <div class="cbp-l-caption-text">VIEW PROFILE</div>
                                            </div>
                                        </div>
                                    </div>--%>
                                </a>
                                <a href="doctors/member4.html" class="cbp-singlePage cbp-l-grid-team-name">Dr.Sandip Vaishya </a>
                                <div class="cbp-l-grid-team-position">Neurologist(MBBS.MD)</div>
                            </li>

                            <li class="cbp-item neurologist">
                                <a href="doctors/member4.html" class="cbp-caption cbp-singlePage">
                                    <div class="cbp-caption-defaultWrap">
                                        <img src="img/team/Doctor.jpg" alt="" width="100%">
                                    </div>
                                    <%--<div class="cbp-caption-activeWrap">
                                        <div class="cbp-l-caption-alignCenter">
                                            <div class="cbp-l-caption-body">
                                                <div class="cbp-l-caption-text">VIEW PROFILE</div>
                                            </div>
                                        </div>
                                    </div>--%>
                                </a>
                                <a href="doctors/member4.html" class="cbp-singlePage cbp-l-grid-team-name">Dr.Aditya Gupata</a>
                                <div class="cbp-l-grid-team-position">Neurologist(MBBS.MD)</div>
                            </li>

                            

                        </ul>
                    </div>
                </div>
            </div>
        </div>

    </section>
    <!-- /Section: team -->

    <!-- Section: works -->
    <section id="facilities" class="home-section paddingbot-60">
        <div class="container marginbot-50">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="wow fadeInDown" data-wow-delay="0.1s">
                        <div class="section-heading text-center">
                            <h2 class="h-bold">Our facilities</h2>
                            <p></p>
                        </div>
                    </div>
                    <div class="divider-short"></div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-md-12 col-lg-12">
                    <div class="wow bounceInUp" data-wow-delay="0.2s">
                        <div id="owl-works" class="owl-carousel">
                            <div class="item"><a href="img/photo/1.jpg" title="This is an image title" data-lightbox-gallery="gallery1" data-lightbox-hidpi="img/works/1@2x.jpg">
                                <img src="img/photo/1.jpg" class="img-responsive" alt="img"></a></div>
                            <div class="item"><a href="img/photo/2.jpg" title="This is an image title" data-lightbox-gallery="gallery1" data-lightbox-hidpi="img/works/2@2x.jpg">
                                <img src="img/photo/2.jpg" class="img-responsive " alt="img"></a></div>
                            <div class="item"><a href="img/photo/3.jpg" title="This is an image title" data-lightbox-gallery="gallery1" data-lightbox-hidpi="img/works/3@2x.jpg">
                                <img src="img/photo/3.jpg" class="img-responsive " alt="img"></a></div>
                            <div class="item"><a href="img/photo/4.jpg" title="This is an image title" data-lightbox-gallery="gallery1" data-lightbox-hidpi="img/works/4@2x.jpg">
                                <img src="img/photo/4.jpg" class="img-responsive " alt="img"></a></div>
                            <div class="item"><a href="img/photo/5.jpg" title="This is an image title" data-lightbox-gallery="gallery1" data-lightbox-hidpi="img/works/5@2x.jpg">
                                <img src="img/photo/5.jpg" class="img-responsive " alt="img"></a></div>
                            <div class="item"><a href="img/photo/6.jpg" title="This is an image title" data-lightbox-gallery="gallery1" data-lightbox-hidpi="img/works/6@2x.jpg">
                                <img src="img/photo/6.jpg" class="img-responsive " alt="img"></a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- /Section: works -->


  

    <!-- Section: pricing -->
    <section id="pricing" class="home-section bg-gray paddingbot-60">
        <div class="container marginbot-50">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="wow lightSpeedIn" data-wow-delay="0.1s">
                        <div class="section-heading text-center">
                            <h2 class="h-bold">Health packages</h2>
                            <p>Take charge of your health today with our specially designed health packages</p>
                        </div>
                    </div>
                    <div class="divider-short"></div>
                </div>
            </div>
        </div>

        <div class="container">

            <div class="row">

                <div class="col-sm-4 pricing-box">
                    <div class="wow bounceInUp" data-wow-delay="0.1s">
                        <div class="pricing-content general">
                            <h2>Basic Fit 1 Package</h2>
                            <h3>₹1500<span>/ one time</span></h3>
                            <ul>
                                <li>Anthropometry (BMI, WH Ratio) <i class="fa fa-check icon-success"></i></li>
                                <li>Post Examination Review <i class="fa fa-check icon-success"></i></li>
                                <li>General Screening – Basic <i class="fa fa-check icon-success"></i></li>
                                <li><del>Health Screening Report</del> <i class="fa fa-times icon-danger"></i></li>
                            </ul>

                            
                        </div>
                    </div>
                </div>

                <div class="col-sm-4 pricing-box featured-price">
                    <div class="wow bounceInUp" data-wow-delay="0.3s">
                        <div class="pricing-content featured">
                            <h2>Golden Glow Package</h2>
                            <h3>₹4500<span>/ one time</span></h3>
                            <ul>
                                <li>Anthropometry (BMI, WH Ratio) <i class="fa fa-check icon-success"></i></li>
                                <li>Post Examination Review <i class="fa fa-check icon-success"></i></li>
                                <li>General Screening – Basic <i class="fa fa-check icon-success"></i></li>
                                <li>Body Composition Analysis <i class="fa fa-check icon-success"></i></li>
                                <li>GR Assessment & Scoring <i class="fa fa-check icon-success"></i></li>
                            </ul>

                            
                        </div>
                    </div>
                </div>

                <div class="col-sm-4 pricing-box">
                    <div class="wow bounceInUp" data-wow-delay="0.2s">
                        <div class="pricing-content general last">
                            <h2>Basic Fit 2 Package</h2>
                            <h3>₹2500<span>/ one time</span></h3>
                            <ul>
                                <li>Anthropometry (BMI, WH Ratio) <i class="fa fa-check icon-success"></i></li>
                                <li>Post Examination Review <i class="fa fa-check icon-success"></i></li>
                                <li>General Screening – Regular <i class="fa fa-check icon-success"></i></li>
                                <li><del>Health Screening Report</del> <i class="fa fa-times icon-danger"></i></li>
                            </ul>

                            
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </section>
    <!-- /Section: pricing -->

    <section id="partner" class="home-section paddingbot-60">
        <div class="container marginbot-50">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="wow lightSpeedIn" data-wow-delay="0.1s">
                        <div class="section-heading text-center">
                            <h2 class="h-bold">Our partner</h2>
                            <p>Take charge of your health today with our specially designed health packages</p>
                        </div>
                    </div>
                    <div class="divider-short"></div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-md-3">
                    <div class="partner">
                        <a href="#">
                            <img src="img/dummy/partner-1.jpg" alt="" /></a>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3">
                    <div class="partner">
                        <a href="#">
                            <img src="img/dummy/partner-2.jpg" alt="" /></a>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3">
                    <div class="partner">
                        <a href="#">
                            <img src="img/dummy/partner-3.jpg" alt="" /></a>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3">
                    <div class="partner">
                        <a href="#">
                            <img src="img/dummy/partner-4.jpg" alt="" /></a>
                    </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
