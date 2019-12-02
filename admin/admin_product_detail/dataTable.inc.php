<?php
     // 1. Kết nối đến DB
    $connection = mysqli_connect('localhost', 'root', '', 'quanlybansach');

    mysqli_query($connection, "SET NAMES 'utf8'");
     // 2. Tạo câu truy vấn (Query): SELECT, INSERT, DELETE, UPDATE
    $sql = 'SELECT * FROM sach';
    // 3. Thực thi câu truy vấn
    $result = mysqli_query($connection, $sql);
    // 4. Xử lý kết quả của câu truy vấn (SELECT)
    while ($row = mysqli_fetch_array($result)) {
        echo '
            <tr>
                <td>' . $row['MaSach'] . '</td>
                <td>' . $row['TenSach'] . '</td>
                <td>' . $row['TacGia'] . '</td>
                <td>' . $row['LoaiSach'] . '</td>
                <td>' . $row['HinhAnhSach'] . '</td>
                <td>' . $row['Gia'] . '</td>
                <td>' . $row['NgayNhap'] . '</td>
                <td>' . $row['SoLuongTon'] . '</td>
                <td>' . $row['SoLuongBan'] . '</td>
                <td>' . $row['LuotXem'] . '</td>
                <td>' . $row['IdNhaSX'] . '</td>
                <td>' . $row['XuatXu'] . '</td>
                <td>
                    <button id="btnRemove_1" onclick="remove(this.id);" type="button"
                    class="btn btn-danger"><i class="fas fa-trash"></i></button>
                    <button id="btnUpdate_1" type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalUpdateProduct"
                        onclick="load_formUpdate(this.id )">
                        <i class="fas fa-edit"></i>
                    </button>
                </td>
            </tr>
        ';
    }
    // 5. Đóng/ngắt kết nối
    mysqli_close($connection);
    ?>