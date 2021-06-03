<?php
require_once '../../autoload/Autoload.php';

if (!Auth::user()) {
    Redirect::url('admin/account/login.php');
}

$sql = "SELECT * FROM baiviet";
$data = $DB->query($sql);
foreach ($data as $key => $value) {
    $id = $value->danhmuc_id;
    $sql = "SELECT * FROM danhmuc_blog WHERE id = " . $id;
    $result = $DB->queryOne($sql);
    $data[$key] = (object) array_merge((array)$value, array( 'danhmuc' => $result ));
}

$title = "Danh mục bài viết";
require_once '../../layouts/admin/header.php';
?>

<div class="d-flex justify-content-between mb-4">
    <h4>Danh sách bài viết </h4>
    <a href="<?= url('admin/blog/create.php') ?>" class="btn btn-primary btn-sm">Thêm mới</a>
</div>

<table id="dtBasicExample" class="table table-striped table-bordered" cellspacing="0" width="100%">
    <thead>
        <tr>
            <th class="th-sm">#ID</th>
            <th class="th-sm">Tiêu đề</th>
            <th class="th-sm">Đoạn trích</th>
            <!-- <th class="th-sm ">Hình ảnh</th> -->
            <th class="th-sm ">Nội dung</th>
            <th class="th-sm ">Danh mục</th>
            <th class="th-sm text-center" colspan="2">Hành động</th>
        </tr>
    </thead>
    <tbody>
		<?php if (is_array($data)) : ?>
			<?php $i = 1 ?>
			<?php foreach ($data as $item) : ?>
				<tr>
					<td><?= $i ?></td>
					<td><?= $item->tieude ?></td>
                    <td class="text-center">
                        <p class="text-wrap" style="min-width:250px"><?= $item->doantrich ?></p>
                    </td>
					<!-- <td class="text-center"><img style="width:50px" src="<?= url($item->hinhanh) ?>"></td> -->
					<td class="text-center">
                        <p class="text-wrap" style="min-width: 250px">
                            <?= $item->noidung ?>
                        </p>
                    </td>
					<td class="text-center">
                        <?= $item->danhmuc->tendanhmuc;?>
                    </td>
					<td class="text-center" style="width:50px">
						<a href="<?= url("admin/product/update.php?id=$item->id") ?>">
							<b class='badge badge-warning status-Content'>Sửa</b>
						</a>
					</td>
					<td class="text-center" style="width:50px">
						<a href="#">
							<b class='badge badge-danger status-Content' type="button" data-toggle="modal" data-target="#exampleModal-<?= $item->id ?>">Xóa</b>
						</a>
					</td>
				</tr>
				<?php $i++ ?>
			<?php endforeach ?>
		<?php endif ?>
	</tbody>
</table>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Xóa danh mục</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                Bạn có muốn xóa danh mục không ?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                <button type="button" class="btn btn-primary">Xóa</button>
            </div>
        </div>
    </div>
</div>

<?php
    require_once '../../layouts/admin/footer.php';
?>

<script>
    $(document).ready(function() {
        $('#dtBasicExample').DataTable({
            "order": [
                [0, "asc"]
            ]
        }, );
        $('.dataTables_length').addClass('bs-select');
    });
</script>
<!-- FIXME: No data in table -->

<script>
    // change status contact while click show content
    let showContents = document.querySelectorAll('.show-Content');
    let statusContent = document.querySelectorAll('.status-Content');

    showContents.forEach(function(item, index) {
        item.addEventListener('click', function() {
            let idContact = this.dataset.target.slice(19);

            let url = "/admin/contact/update-status/" + idContact;

            fetch(url)
                .then(response => response.json())
                .then(data => {
                    statusContent[index].className = 'badge badge-success status-Content';
                    statusContent[index].innerText = 'Đã xem';
                })
                .catch(err => {
                    console.log(err);
                })
        })
    })
</script>