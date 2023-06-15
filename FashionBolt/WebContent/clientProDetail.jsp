<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Au Register Forms by Colorlib</title>

    <!-- Icons font CSS-->
    <link href="cus_ordassert/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="cus_ordassert/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="cus_ordassert/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="cus_ordassert/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="cus_ordassert/css/main.css" rel="stylesheet" media="all">
</head>

<body>

    <div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Brand Product Details</h2>
                </div>
                <div class="card-body">
                    <form action="ReqcusProDetail.jsp" method="POST" autocomplete="off">
                        <div class="form-row m-b-55">
                            <div class="name">Brand Name</div>
                            <div class="value">
                                <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group-desc">
                                            <input class="input--style-5" type="text" name="brandname">
                                            <label class="label--desc">Product name</label>
                                        </div>
                                    </div>
                                    <!-- <div class="col-2">
                                        <div class="input-group-desc">
                                            <input class="input--style-5" type="text" name="last_name">
                                            <label class="label--desc">last name</label>
                                        </div>
                                    </div> -->
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Quantity</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="qun">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">MRP</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="mrp" maxlength="4">
                                </div>
                            </div>
                        </div>
                        
                                                <div class="form-row">
                            <div class="name">Total Price</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="totprice"  maxlength="6">
                                </div>
                            </div>
                        </div>
                        
                        
                        
                        
                           <div class="form-row m-b-55">
                            <div class="name">Manufacture Date</div>
                            <div class="value">
                                <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group-desc">
                                            <input class="input--style-5" type="date" name="manufdate">
                                            <label class="label--desc">Manufacture Date</label>
                                        </div>
                                    </div>
                                <div class="col-2">
                                        <div class="input-group-desc">
                                            <input class="input--style-5" type="date" name="expdat">
                                            <label class="label--desc">Upload Date</label>
                                        </div>
                                    </div> 
                                </div>
                            </div>
                      
                       
                        </div>
                        
                     <!--    
                        <div class="form-row m-b-55">
                            <div class="name">Manfacture-Date</div>
                            <div class="value">
                                <div class="row row-refine">
                                    <div class="col-3">
                                        <div class="input-group-desc">
                                            <input class="input--style-5" type="date" name="manufdate">
                                            <label class="label--desc">ManufactureDate</label>
                                        </div>
                                    </div>
                                    <br></br>
                                    <div class="col-9">
                                        <div class="input-group-desc">
                                            <input class="input--style-5" type="date" name="expdat">
                                            <label class="label--desc">Expdate</label>
                                        </div>
                                    </div> 
                                </div>
                            </div>
                        </div> -->
                        
                         <div class="form-row">
                            <div class="name">Gender</div>
                            <div class="value">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select name="gen">
                                            <option disabled="disabled" selected="selected">Choose </option>
                                            <option>Mens</option>
                                            <option>Womens</option>
                                            <option>Kids</option>
                                             <option>ALL</option>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        <div class="form-row">
                            <div class="name">Wear Material</div>
                            <div class="value">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select name="wearmate">
                                            <option disabled="disabled" selected="selected">Choose </option>
                                            <option>Synthetic materials</option>
                                            <option>Cotton</option>
                                            <option>Silk</option>
                                             <option>Cellulosic fibres/viscose </option>
                                            <option>Wool</option>
                                            <option>Leather</option>
                                            <option>Bast fibres</option>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                           <div class="form-row">
                            <div class="name">Wear Type</div>
                            <div class="value">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select name="weartype">
                                            <option disabled="disabled" selected="selected">Choose </option>
                                            <option>Jackets and coats</option>
                                            <option>casual shirts</option>
                                            <option>Suits</option>
                                             <option>T-shirts</option>
                                            <option>CasualWear & Skirts and dresses</option>
                                           
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        
                        
                        
                        
                        
                        <div class="form-row p-t-20">
                            <label class="label label--block">Sleeves</label>
                            <div class="p-t-15">
                                <label class="radio-container m-r-55">sleeves
                                    <input type="radio" checked="checked" name="sleeve">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container">Non-sleeves
                                    <input type="radio" name="sleeve">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>
                        <div>
                       
                            <button class="btn btn--radius-2 btn--red"  onclick="demo()">Update</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="cus_ordassert/vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="cus_ordassert/vendor/select2/select2.min.js"></script>
    <script src="cus_ordassert/vendor/datepicker/moment.min.js"></script>
    <script src="cus_ordassert/vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="cus_ordassert/js/global.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->