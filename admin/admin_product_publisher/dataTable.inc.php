<?php
     // 1. Kết nối đến DB
    $connection = mysqli_connect('localhost', 'root', '', 'quanlybansach');

    mysqli_query($connection, "SET NAMES 'utf8'");
     // 2. Tạo câu truy vấn (Query): SELECT, INSERT, DELETE, UPDATE
    $sql = 'SELECT * FROM nhasanxuat';
    // 3. Thực thi câu truy vấn
    $result = mysqli_query($connection, $sql);
    // 4. Xử lý kết quả của câu truy vấn (SELECT)
    $i = 1;
    while ($row = mysqli_fetch_array($result)) {
        echo '
            <tr>
                <td>' . $row['IdNSX'] . '</td>
                <td>' . $row['TenNSX'] . '</td>
                <td>' . $row['Logo'] . '</td>
                <td>
                    <button id="btnRemove_'. $i .'" onclick="remove(this.id);" type="button"
                    class="btn btn-danger"><i class="fas fa-trash"></i></button>
                    <button id="btnUpdate_'. $i .'" type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalUpdateProduct"
                        onclick="load_formUpdate(this.id )">
                        <i class="fas fa-edit"></i>
                    </button>
                </td>
            </tr>
        ';
        $i += 1;
    }
    // 5. Đóng/ngắt kết nối
    mysqli_close($connection);
    ?>