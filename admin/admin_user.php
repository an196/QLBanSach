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
                            <a href="admin_product_detail.php">Chi tiết</a>
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
                    <a href="#">
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
                    <a href="">
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
                     <!-- The Modal add Product-->
                    <div class="container-fluid">
                        <div class="modal fade" id="modalAddProduct" style="margin-top: 150px;">
                            <div class="modal-dialog modal-md">
                                <div class="modal-content">
            
                                    <!-- Modal Header -->
                                    <div class="modal-header">
                                        <h4 class="modal-title">Thông tin tài khoản</h4>
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    </div>
            
                                    <!-- Modal body -->
                                    <div class="modal-body">
                                        <div class="form-group">
                                            <label for="idUser">Mã tài khoản:</label>
                                            <input type="text" class="form-control" id="idUser" name="idUser">
                                        </div>
                                        <div class="form-group">
                                            <label for="nameDisplay">Tên hiển thị :</label>
                                            <input type="text" class="form-control" id="nameDisplay" name="nameDisplay">
                                        </div>
                                        <div class="form-group">
                                            <label for="nameUser">Tên đăng nhập:</label>
                                            <input type="text" class="form-control" id="nameUser" name="nameUser">
                                        </div>
                                        <div class="form-group">
                                            <label for="address">Địa chỉ:</label>
                                            <input type="text" class="form-control" id="address" name="address">
                                        </div>
                                        <div class="form-group">
                                            <label for="telephone">Điện thoại:</label>
                                            <input type="text" class="form-control" id="telephone" name="telephone">
                                        </div>
                                        <div class="form-group">
                                            <label for="email">Email:</label>
                                            <input type="text" class="form-control" id="email" name="email">
                                        </div>
                                        <div class="form-group">
                                            <label for="userType">Loại tài khoản:</label>
                                            <input type="text" class="form-control" id="userType" name="userType">
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
                        <!--Close the Modal add Product-->
                        <!-- The Modal update Product-->
                        <div class="modal fade" id="modalUpdateProduct" style="margin-top: 150px;">
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
                                            <label for="update_idUser">Mã tài khoản:</label>
                                            <input type="text" class="form-control" id="update_idUser" >
                                        </div>
                                        <div class="form-group">
                                            <label for="update_nameDisplay">Tên hiển thị:</label>
                                            <input type="text" class="form-control" id="update_nameDisplay">
                                        </div>
                                        <div class="form-group">
                                            <label for="update_nameUser">Tên đăng nhập:</label>
                                            <input type="text" class="form-control" id="update_nameUser">
                                        </div>
                                        <div class="form-group">
                                            <label for="update_address">Địa chỉ:</label>
                                            <input type="text" class="form-control" id="update_address">
                                        </div>
                                        <div class="form-group">
                                            <label for="update_telephone">Điện thoại:</label>
                                            <input type="text" class="form-control" id="update_telephone">
                                        </div>
                                        <div class="form-group">
                                            <label for="update_email">Email:</label>
                                            <input type="text" class="form-control" id="update_email">
                                        </div>
                                        <div class="form-group">
                                            <label for="update_userType">Loại tài khoản:</label>
                                            <input type="text" class="form-control" id="update_userType">
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
                              DANH SÁCH TÀI KHOẢN
                              <button type="button" class="btn btn-success float-md-right" data-toggle="modal" data-target="#modalAddProduct">
                                <i class="fas fa-plus"></i>  Thêm</button>
                            </div>
                            <div class="card-body">
                            <br><br>
                              <div class="table-responsive col-md-12  d-flex flex-column">
                                    <table class="table table-bordered w-100" id="dataTable" cellspacing="0">
                                        <thead>
                                            <tr>
                                            <th class="w-5">Mã</th>
                                            <th class="w-10">Tên hiển thị</th>
                                            <th class="w-20">Tên đăng nhập</th>
                                            <th class="w-20">Địa chỉ</th>
                                            <th class="w-10">Điện thoại</th>
                                            <th class="w-20">Email</th>
                                            <th class="w-5">Loại Tài khoản</th>
                                            <th class="w-10">Thao tác</th>
                                            </tr>
                                        </thead>
                                        <tbody id="myTable">
                                            <?php include '../admin/admin_user/dataTable.inc.php';?>
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