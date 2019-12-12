<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Quản lý sản phẩm</title>

    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
  
    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../css/admin_product_detail.css">
    
    <script src="../js/admin_product_detail.js"></script>
    
</head>

<body>
   
    <div class="wrapper">
        <!-- Sidebar  -->
        <nav id="sidebar">
            <div class="sidebar-header">
                <label class="mr-5">BOOKSHOP</label>
                <button type="button" id="sidebarCollapse" class="btn btn-dark align-items-md-end">
                    <i class="fas fa-align-justify"></i>
                </button>
                <strong>BS</strong>
            </div>
            <ul class="list-unstyled components">
                <li >
                    <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                        <i class="fas fa-home"></i>
                        Home
                    </a>
                    <ul class="collapse list-unstyled" id="homeSubmenu">
                        <li>
                            <a href="home.html">Trang chủ</a>
                        </li>
                        <li>
                            <a href="product.html">Sản phẩm</a>
                        </li>
                    </ul>
                </li>
                <li class="active">
                    <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                        <i class="fas fa-copy"></i>
                        Sản phẩm
                    </a>
                    <ul class="collapse list-unstyled" id="pageSubmenu">
                        <li>
                            <a href="#">Chi tiết</a>
                        </li>
                        <li>
                            <a href="admin_product_category.php">Danh mục</a>
                        </li>
                        <li>
                            <a href="admin_product_publisher.php">Nhà sản xuẩt</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="admin_user.php">
                        <i class="fas fa-image"></i>
                        Tài khoản
                    </a>
                </li>
                <li>
                    <a href="admin_order.php">
                        <i class="fas fa-clipboard"></i>
                        Đơn đặt hàng
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fas fa-paper-plane"></i>
                        Contact
                    </a>
                </li>
                <li>
                    <a href="#"><i class="fas fa-sign-out-alt"></i> Đăng xuất</a>
                </li>
            </ul>
        </nav>

        <!-- Page Content  -->
        <div id="content">
            <nav class="navbar navbar-expand-md bg-light">
                <div class="container-fluid">
                     <!-- The Modal add -->
                    <div class="container-fluid">
                        <div class="modal fade" id="modalAdd" style="margin-top: 150px;">
                            <div class="modal-dialog modal-md">
                                <div class="modal-content">
            
                                    <!-- Modal Header -->
                                    <div class="modal-header">
                                        <h4 class="modal-title">Thêm thông tin sách</h4>
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    </div>
            
                                    <!-- Modal body -->
                                    <div class="modal-body">
                                        <div class="form-group">
                                            <label for="idBook">Mã sách:</label>
                                            <input type="text" class="form-control" id="idBook" name="idBook">
                                        </div>
                                        <div class="form-group">
                                            <label for="nameBook">Tên sách:</label>
                                            <input type="text" class="form-control" id="nameBook" name="nameBook">
                                        </div>
                                        <div class="form-group">
                                            <label for="nameAuthor">Tác giả:</label>
                                            <input type="text" class="form-control" id="nameAuthor" name="nameAuthor">
                                        </div>
                                        <div class="form-group">
                                            <label for="idCategory">Loại sách:</label>
                                            <input type="text" class="form-control" id="idCategory" name="idCategory">
                                        </div>
                                        <div class="form-group">
                                            <label for="imageBook">Hình ảnh:</label>
                                            <input type="text" class="form-control" id="imageBook" name="imageBook">
                                        </div>
                                        <div class="form-group">
                                            <label for="priceBook">Giá sản phẩm:</label>
                                            <input type="text" class="form-control" id="priceBook" name="priceBook">
                                        </div>
                                        <div class="form-group">
                                            <label for="dateGoodReceipt">Ngày nhập:</label>
                                            <input type="text" class="form-control" id="dateGoodReceipt" name="dateGoodReceipt">
                                        </div>
                                        <div class="form-group">
                                            <label for="quantityInStock">Số lượng tồn:</label> 
                                            <input type="text" class="form-control" id="quantityInStock" name="quantityInStock">
                                        </div>
                                        <div class="form-group">
                                            <label for="quantitySold">Số lượng bán:</label> 
                                            <input type="text" class="form-control" id="quantitySold" name="quantitySold">
                                        </div>
                                        <div class="form-group">
                                            <label for="views">Số lượt xem:</label>
                                            <input type="text" class="form-control" id="views" name="views">
                                        </div>
                                        <div class="form-group">
                                            <label for="description">Mô tả:</label>
                                            <input type="text" class="form-control" id="description" name="description">
                                        </div>
                                        <div class="form-group">
                                            <label for="idPublisher">Nhà xuất bản:</label>
                                            <input type="text" class="form-control" id="idPublisher" name="idPublisher">
                                        </div>
                                        <div class="form-group">
                                            <label for="origin">Xuất xứ:</label>
                                            <input type="text" class="form-control" id="origin" name="origin">
                                        </div>
                                    </div>
            
                                    <!-- Modal footer -->
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-success" onclick="addProduct();">Thêm sản phẩm</button>
                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Hủy thao tác</button>
                                    </div>
            
                                </div>
                            </div>
                        </div>
                        <!--Close the Modal add-->
                        <!-- The Modal update Product-->
                        <div class="modal fade" id="modalUpdate" style="margin-top: 150px;">
                            <div class="modal-dialog modal-md">
                                <div class="modal-content">
            
                                    <!-- Modal Header -->
                                    <div class="modal-header">
                                        <h4 class="modal-title">Cập nhật thông tin sản phẩm</h4>
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    </div>
            
                                    <!-- Modal body -->
                                    <div class="modal-body">
                                        <div class="form-group">
                                            <label for="update_idBook">Mã sản phẩm:</label>
                                            <input type="text" class="form-control" id="update_idBook" >
                                        </div>
                                        <div class="form-group">
                                            <label for="update_nameBook">Tên sản phẩm:</label>
                                            <input type="text" class="form-control" id="update_nameBook">
                                        </div>
                                        <div class="form-group">
                                            <label for="update_nameAuthor">Tên tác giả:</label>
                                            <input type="text" class="form-control" id="update_nameAuthor">
                                        </div>
                                        <div class="form-group">
                                            <label for="update_idCategory">Loại sách:</label>
                                            <input type="text" class="form-control" id="update_idCategory">
                                        </div>
                                        <div class="form-group">
                                            <label for="update_imageBook">Hình ảnh:</label>
                                            <input type="text" class="form-control" id="update_imageBook">
                                        </div>
                                        <div class="form-group">
                                            <label for="update_priceBook">Giá sản phẩm:</label>
                                            <input type="text" class="form-control" id="update_priceBook">
                                        </div>
                                        <div class="form-group">
                                            <label for="update_dateGoodReceipt">Ngày nhập:</label>
                                            <input type="text" class="form-control" id="update_dateGoodReceipt">
                                        </div>
                                        <div class="form-group">
                                            <label for="update_quantityInStock">Số lượng tồn:</label>
                                            <input type="text" class="form-control" id="update_quantityInStock">
                                        </div>
                                        <div class="form-group">
                                            <label for="update_quantitySold">Số lượng bán:</label>
                                            <input type="text" class="form-control" id="update_quantitySold">
                                        </div>
                                        <div class="form-group">
                                            <label for="update_views">Sô lượt xem:</label>
                                            <input type="text" class="form-control" id="update_views">
                                        </div>
                                        <div class="form-group">
                                            <label for="update_description">Mô tả:</label>
                                            <input type="textarea" class="form-control" id="update_description">
                                        </div>
                                        <div class="form-group">
                                            <label for="update_idPublisher">Nhà xuất bản:</label>
                                            <input type="text" class="form-control" id="update_idPublisher">
                                        </div>
                                        <div class="form-group">
                                            <label for="update_origin">Xuất xứ:</label>
                                            <input type="text" class="form-control" id="update_origin">
                                        </div>
                                    </div>
            
                                    <!-- Modal footer -->
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-success" onclick="updateTableProduct();">Cập nhật sản phẩm</button>
                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Hủy thao tác</button>
                                    </div>
            
                                </div>
                            </div>
                        </div>
                        <!--Close the Modal update Product-->
                        <!-- DataTable Product-->
                        <div class="card mb-5">
                            <div class="card-header">
                              <i class="fas fa-table"></i>
                              DANH SÁCH SẢN PHẨM
                              <button type="button" class="btn btn-success float-md-right" data-toggle="modal" data-target="#modalAdd">
                                <i class="fas fa-plus"></i>  Thêm</button>
                            </div>
                            <div class="card-body">
                            <br><br>
                              <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" cellspacing="0">
                                        <thead>
                                            <tr>
                                            <th >Mã sách</th>
                                            <th >Tên sách</th>
                                            <th >Tác giả</th>
                                            <th >Loại sách</th> 
                                            <th >Hình ảnh</th>
                                            <th >Giá</th>
                                            <th >Ngày nhập</th>
                                            <th >Số lượng tồn</th>
                                            <th >Số lượng bán</th>
                                            <th >Số lượt xem</th>
                                            <th >Mô tả</th>
                                            <th >Nhà xuất bản</th>
                                            <th >Xuất xứ</th>
                                            <th >Thao tác</th>
                                            </tr>
                                        </thead>
                                        <tbody id="myTable">
                                            <?php include '../admin/admin_product_detail/dataTable.inc.php';?>
                                        </tbody>
                                    </table>
                              </div>
                            </div>
                            <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                        </div>
                         <!-- DataTable Product-->
                         <!-- Footer -->
                        <footer class="sticky-footer">
                            <div class="container my-auto">
                                <div class="copyright text-center my-auto">
                                <span> Copyright © TTA</span>
                                </div>
                            </div>
                        </footer>
                        <!-- CLose Footer -->
                    </div>
                </div>
                
            </nav>

        </div>
    </div>
    <div class="overlay"></div>
    
    <!-- jQuery CDN - Slim version (=without AJAX) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
    <!-- jQuery Custom Scroller CDN -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="../js/jquery.dataTables.min.js"></script>
    <script src="../js/dataTables.bootstrap4.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
            });

             //pagination
            $('#dataTable').DataTable();

            $('#dataTable_filter').addClass(' float-right');
            
        });

        $(document).off('event', 'selector').on('event', 'selector', function() {
            // Your code
            $('#dataTable_lengt').remove();
            console.log((a));
        });
    </script>
</body>

</html>