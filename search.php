<?php

include('./autoload/Autoload.php');

$search = Input::get('search') ?? '';
$category = Input::get('category') ?? '';




$page = Input::get('page') ?? 1;
$pageSize = 9;
$offset = ($page - 1) * $pageSize;
$filter = Input::get('orderby') ?? null;
$baseUrl = '';

if ($filter != null) {

    switch ($filter) {

        case 'rating':
            $sql = "SELECT sanpham.*, danhmuc.tendanhmuc FROM sanpham  JOIN danhmuc ON sanpham.danhmuc_id = danhmuc.id  ORDER BY sanpham.danhgia DESC LIMIT $pageSize OFFSET $offset";
            break;

        case 'price':
            $sql = "SELECT sanpham.*, danhmuc.tendanhmuc FROM sanpham  JOIN danhmuc ON sanpham.danhmuc_id = danhmuc.id  ORDER BY sanpham.giaban ASC LIMIT $pageSize OFFSET $offset";
            break;

        case 'price-desc':
            $sql = "SELECT sanpham.*, danhmuc.tendanhmuc FROM sanpham  JOIN danhmuc ON sanpham.danhmuc_id = danhmuc.id  ORDER BY sanpham.giaban DESC LIMIT $pageSize OFFSET $offset";
            break;

        case 'popularity':
            $sql = "SELECT sanpham.*, danhmuc.tendanhmuc FROM sanpham  JOIN danhmuc ON sanpham.danhmuc_id = danhmuc.id  ORDER BY sanpham.luotmua DESC LIMIT $pageSize OFFSET $offset";
            break;

        case 'news':
            $sql = "SELECT sanpham.*, danhmuc.tendanhmuc FROM sanpham  JOIN danhmuc ON sanpham.danhmuc_id = danhmuc.id  ORDER BY sanpham.id DESC LIMIT $pageSize OFFSET $offset";
            break;

            case 'Apple iPhone 5S 32GB GM':
                $sql = "SELECT sanpham.*, danhmuc.tendanhmuc FROM sanpham  JOIN danhmuc ON sanpham.danhmuc_id = danhmuc.id  ORDER BY sanpham.id = 42  DESC LIMIT $pageSize OFFSET $offset";
                break;
        case 'Apple iPhone 6':
                $sql = "SELECT sanpham.*, danhmuc.tendanhmuc FROM sanpham  JOIN danhmuc ON sanpham.danhmuc_id = danhmuc.id  ORDER BY sanpham.id = 44  DESC LIMIT $pageSize OFFSET $offset";
                break;
        case 'Bluetooth Keyboard':
                $sql = "SELECT sanpham.*, danhmuc.tendanhmuc FROM sanpham  JOIN danhmuc ON sanpham.danhmuc_id = danhmuc.id  ORDER BY sanpham.id = 48  DESC LIMIT $pageSize OFFSET $offset";
                break;
        case 'Nokia 6 Dual Sim Tempered Blue':
                $sql = "SELECT sanpham.*, danhmuc.tendanhmuc FROM sanpham  JOIN danhmuc ON sanpham.danhmuc_id = danhmuc.id  ORDER BY sanpham.id = 50  DESC LIMIT $pageSize OFFSET $offset";
                break;
                      
        case 'Apple Magic Mouse':
                $sql = "SELECT sanpham.*, danhmuc.tendanhmuc FROM sanpham  JOIN danhmuc ON sanpham.danhmuc_id = danhmuc.id  ORDER BY sanpham.id = 56  DESC LIMIT $pageSize OFFSET $offset";
                break;
        case 'Samsung Gear Blue':
                $sql = "SELECT sanpham.*, danhmuc.tendanhmuc FROM sanpham  JOIN danhmuc ON sanpham.danhmuc_id = danhmuc.id  ORDER BY sanpham.id = 58 DESC LIMIT $pageSize OFFSET $offset";
                break;

        case 'Polaroid Cube+':
                $sql = "SELECT sanpham.*, danhmuc.tendanhmuc FROM sanpham  JOIN danhmuc ON sanpham.danhmuc_id = danhmuc.id  ORDER BY sanpham.id = 41 ASC LIMIT $pageSize OFFSET $offset";
                break;

        case 'Google Daydream VR':
                $sql = "SELECT sanpham.*, danhmuc.tendanhmuc FROM sanpham  JOIN danhmuc ON sanpham.danhmuc_id = danhmuc.id  ORDER BY sanpham.id = 33 DESC LIMIT $pageSize OFFSET $offset";
                break;

        case 'Xiaomi Mi Mix 2':
                $sql = "SELECT sanpham.*, danhmuc.tendanhmuc FROM sanpham  JOIN danhmuc ON sanpham.danhmuc_id = danhmuc.id  ORDER BY sanpham.id = 30 DESC LIMIT $pageSize OFFSET $offset";
                break;

        case 'OnePlus 5T':
                $sql = "SELECT sanpham.*, danhmuc.tendanhmuc FROM sanpham  JOIN danhmuc ON sanpham.danhmuc_id = danhmuc.id  ORDER BY sanpham.id = 31 DESC LIMIT $pageSize OFFSET $offset";
                break;

        case 'Polaroid Cube+':
                $sql = "SELECT sanpham.*, danhmuc.tendanhmuc FROM sanpham  JOIN danhmuc ON sanpham.danhmuc_id = danhmuc.id  ORDER BY sanpham.id = 33  DESC LIMIT $pageSize OFFSET $offset";
                break;
        case 'Sony Watch Series F':
                $sql = "SELECT sanpham.*, danhmuc.tendanhmuc FROM sanpham  JOIN danhmuc ON sanpham.danhmuc_id = danhmuc.id  ORDER BY sanpham.id = 49  DESC LIMIT $pageSize OFFSET $offset";
                break;
        case 'Asus Zenbook ux360ca':
                $sql = "SELECT sanpham.*, danhmuc.tendanhmuc FROM sanpham  JOIN danhmuc ON sanpham.danhmuc_id = danhmuc.id  ORDER BY sanpham.id = 57  DESC LIMIT $pageSize OFFSET $offset";
                break;
        case 'JBL Pulse 3':
                $sql = "SELECT sanpham.*, danhmuc.tendanhmuc FROM sanpham  JOIN danhmuc ON sanpham.danhmuc_id = danhmuc.id  ORDER BY sanpham.id = 34  DESC LIMIT $pageSize OFFSET $offset";
                break;
                        
        case 'Misfit Shine 2':
                $sql = "SELECT sanpham.*, danhmuc.tendanhmuc FROM sanpham  JOIN danhmuc ON sanpham.danhmuc_id = danhmuc.id  ORDER BY sanpham.id = 36  DESC LIMIT $pageSize OFFSET $offset";
                break;
        default:
            $sql = "SELECT sanpham.*, danhmuc.tendanhmuc FROM sanpham  JOIN danhmuc ON sanpham.danhmuc_id = danhmuc.id  ORDER BY sanpham.id DESC LIMIT $pageSize OFFSET $offset";
    }

    $products = $DB->query($sql);
    $baseUrl =  "shop.php?orderby=$filter";
} else {

    $sql = "SELECT sanpham.*, danhmuc.tendanhmuc FROM sanpham  JOIN danhmuc ON sanpham.danhmuc_id = danhmuc.id  ORDER BY sanpham.id DESC LIMIT $pageSize OFFSET $offset";
    $products = $DB->query($sql);
}

if ($search != null) {

    $sql = "SELECT sanpham.*, danhmuc.tendanhmuc FROM sanpham  JOIN danhmuc ON sanpham.danhmuc_id = danhmuc.id 
    WHERE sanpham.tensanpham LIKE '%$search%'
    ORDER BY sanpham.id DESC 
    LIMIT $pageSize OFFSET $offset";
}
if ($category != null) {

    $sql = "SELECT sanpham.*, danhmuc.tendanhmuc FROM sanpham  JOIN danhmuc ON sanpham.danhmuc_id = danhmuc.id 
    WHERE sanpham.tensanpham LIKE '%$search%' AND danhmuc.id = '$category'
    ORDER BY sanpham.id DESC 
    LIMIT $pageSize OFFSET $offset";
}

$baseUrl = "search.php?category=$category&search=$search";

$products = $DB->query($sql);

$categories = "SELECT * FROM danhmuc";


$productHot = $DB->query($sql);
$totalProduct = 0;
if (is_array($products)) {
    $totalProduct = count($products);
}
$paginateLink = pagination($totalProduct, $pageSize, $page, $baseUrl);

$title = "Kết quả ";
include('./layouts/page/header.php');



?>

<!-- Start Middle -->
<div id="middle">
    <div class="headline cmsmasters_color_scheme_default">
    </div>
    <div class="middle_inner">
        <div class="content_wrap r_sidebar">

            <!-- Start Content -->
            <div class="content entry">
                <div class="cmsmasters_woo_wrap_result">
                    <div class="woocommerce-notices-wrapper"></div>
                    <p class="woocommerce-result-count">
                        Hiển thị 1 &ndash; 9 of <?= $totalProduct ?> kết quả</p>
                    <form class="woocommerce-ordering" method="get">
                        <select name="orderby" class="orderby" aria-label="Shop order">
                            <option value="menu_order" selected='selected'>Lọc kết quả</option>
                            <option value="popularity">Bán chạy</option>
                            <option value="rating">Đánh giá cao</option>
                            <option value="news">Mới</option>
                            <option value="price">Giá thấp</option>
                            <option value="price-desc">Giá cao</option>
                        </select>
                        <input type="hidden" name="page" value="1" />
                    </form>
                </div>
                <ul class="products columns-3 cmsmasters_products">

                    <?php if (is_array($products)) : ?>
                        <?php foreach ($products as $item) : ?>
                            <li class="product type-product post-1631 status-publish first instock product_cat-cell-phones product_cat-xiaomi has-post-thumbnail shipping-taxable purchasable product-type-simple">
                                <article class="cmsmasters_product">
                                    <div class="cmsmasters_product_wrapper_border">
                                        <figure class="cmsmasters_product_img">
                                            <a href="product-detail.php?id=<?= $item->id ?>">
                                                <img width="540" height="540" src="<?= BASE_URL . '/' . $item->hinhanh ?> " class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="" srcset="https://devicer.cmsmasters.net/wp-content/uploads/2015/05/6-540x540.jpg 540w ' ?> " sizes="(max-width: 540px) 100vw, 540px" />
                                            </a>
                                        </figure>
                                        <div class="cmsmasters_product_inner">
                                            <header class="cmsmasters_product_header entry-header">
                                                <div class="cmsmasters_product_cat entry-meta">
                                                    <a href="<?= url('product-category.php?id=' . $item->danhmuc_id) ?>" class="cmsmasters_cat_color cmsmasters_cat_27" rel="category tag">
                                                        <?= $item->tendanhmuc ?>
                                                    </a>
                                                </div>
                                                <h3 class="cmsmasters_product_title entry-title">
                                                    <a href="<?= url('product-detail.php?id=' . $item->id) ?>">
                                                        <?= $item->tensanpham ?>
                                                    </a>
                                                </h3>
                                            </header>

                                            <div class="cmsmasters_product_info_wrap">
                                                <div class="cmsmasters_product_info">

                                                    <span class="woocommerce-Price-amount amount"><span><span class="woocommerce-Price-currencySymbol">


                                                            </span><?= number_format($item->giaban) . ' vnđ' ?></span>

                                                </div>

                                                <div class="cmsmasters_star_rating" itemscope itemtype="//schema.org/AggregateRating" title="Rated 5.00 out of 5">
                                                    <div class="cmsmasters_star_trans_wrap">
                                                        <span class="cmsmasters_theme_icon_star_empty cmsmasters_star"></span>
                                                        <span class="cmsmasters_theme_icon_star_empty cmsmasters_star"></span>
                                                        <span class="cmsmasters_theme_icon_star_empty cmsmasters_star"></span>
                                                        <span class="cmsmasters_theme_icon_star_empty cmsmasters_star"></span>
                                                        <span class="cmsmasters_theme_icon_star_empty cmsmasters_star"></span>
                                                    </div>
                                                    <div class="cmsmasters_star_color_wrap" data-width="width:100%">
                                                        <div class="cmsmasters_star_color_inner">
                                                            <?php for ($i = 1; $i <= $item->danhgia; $i++) : ?>
                                                                <span class="cmsmasters_theme_icon_star_full cmsmasters_star"></span>
                                                            <?php endfor ?>
                                                        </div>
                                                    </div>
                                                    <span class="rating dn"><strong itemprop="ratingValue"><?= $item->danhgia ?></strong>
                                                        out of 5</span>
                                                </div>
                                                <div class="cmsmasters_product_add_wrap">
                                                    <div class="cmsmasters_product_add_inner">
                                                        <a href="<?= url('add-cart.php?id=' . $item->id) ?>" data-product_id="1631" data-product_sku="" class="cmsmasters_product_button add_to_cart_button cmsmasters_add_to_cart_button product_type_simple ajax_add_to_cart" title="Add to Cart"><span>Add
                                                                to
                                                                Cart</span></a><a href="<?= url('add-cart.php?id=' . $item->id) ?>"" class=" cmsmasters_product_button added_to_cart wc-forward" title="View Cart"><span>View
                                                                Cart</span></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </article>
                            </li>
                        <?php endforeach ?>
                    <?php else : ?>
                        <h2>Không tìm thấy kết quả nào</h2>
                    <?php endif ?>

                </ul>
                <div class="cmsmasters_wrap_pagination">
                    <?= $paginateLink ?>
                    <!-- <ul class='page-numbers'>
                                                <li><span aria-current="page" class="page-numbers current">1</span></li>
                                                <li><a class="page-numbers" href="page/2/index.html">2</a></li>
                                                <li><a class="page-numbers" href="page/3/index.html">3</a></li>
                                                <li><a class="page-numbers" href="page/4/index.html">4</a></li>
                                                <li><a class="page-numbers" href="page/5/index.html">5</a></li>
                                                <li><a class="next page-numbers" href="page/2/index.html"><span class="cmsmasters_theme_icon_slide_next"></span></a></li>
                                        </ul> -->
                </div>
            </div>
            <!-- Finish Content -->


            <!-- Start Sidebar -->
            <div class="sidebar">
                <aside id="woocommerce_product_categories-2" class="widget woocommerce widget_product_categories">
                <form class="woocommerce-ordering" method="get">
                <select name="orderby" class="orderby" aria-label="Shop order">
                                                <option value="menu_order" selected='selected'>Danh mục sản phẩm</option>
                                                <option value="Apple iPhone 5S 32GB GM">Apple iPhone 5S 32GB GM</option>
                                                <option value="Apple iPhone 6">Apple iPhone 6</option>
                                                <option value="Bluetooth Keyboard">Bluetooth Keyboard</option>
                                                <option value="Nokia 6 Dual Sim Tempered Blue">Nokia 6 Dual Sim Tempered Blue</option>
                                                <option value="Apple Magic Mouse">Apple Magic Mouse</option>
                                                <option value="Samsung Gear Blue">Samsung Gear Blue</option>
                                                <option value="Polaroid Cube+">Polaroid Cube+</option>
                                                <option value="Google Daydream VR">Google Daydream VR</option>
                                                <option value="Xiaomi Mi Mix 2">Xiaomi Mi Mix 2</option>
                                                <option value="OnePlus 5T">OnePlus 5T</option>
                                                <option value="Polaroid Cube+">Polaroid Cube+</option>
                                                <option value="Sony Watch Series F">Sony Watch Series F</option>
                                                <option value="Asus Zenbook ux360ca">Asus Zenbook ux360ca</option>
                                                <option value="JBL Pulse 3">JBL Pulse 3</option>
                                                <option value="Misfit Shine 2">Misfit Shine 2</option>
                                        </select>
                </aside>
                <aside id="woocommerce_products-4" class="widget woocommerce widget_products">
                    <h3 class="widgettitle">Sản phẩm bán chạy</h3>
                    <ul class="product_list_widget">
                        <?php foreach ($productHot as $item) : ?>
                            <li>

                                <a href="<?= url('product-detail.php?id=' . $item->id) ?>">
                                    <img width="540" height="540" src="<?= BASE_URL . '/' . $item->hinhanh ?> " class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail" alt="Headphones" srcset="<?= BASE_URL . '/' . $item->hinhanh ?>" sizes="(max-width: 540px) 100vw, 540px" /> <span class="product-title"></span>
                                </a>
                                <div class="price"><span class="woocommerce-Price-amount amount"><span><span class="woocommerce-Price-currencySymbol">&#36;</span></span>55.00</span></div>
                                <div class="cmsmasters_star_rating" itemscope itemtype="//schema.org/AggregateRating" title="Rated 0 out of 5">
                                    <div class="cmsmasters_star_trans_wrap">
                                        <span class="cmsmasters_theme_icon_star_empty cmsmasters_star"></span>
                                        <span class="cmsmasters_theme_icon_star_empty cmsmasters_star"></span>
                                        <span class="cmsmasters_theme_icon_star_empty cmsmasters_star"></span>
                                        <span class="cmsmasters_theme_icon_star_empty cmsmasters_star"></span>
                                        <span class="cmsmasters_theme_icon_star_empty cmsmasters_star"></span>
                                    </div>
                                    <div class="cmsmasters_star_color_wrap" data-width="width:100%">
                                        <div class="cmsmasters_star_color_inner">
                                            <?php for ($i = 1; $i <= $item->danhgia; $i++) : ?>
                                                <span class="cmsmasters_theme_icon_star_full cmsmasters_star"></span>
                                            <?php endfor ?>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        <?php endforeach ?>
                    </ul>
                </aside>
            </div>
            <!-- Finish Sidebar -->


        </div>
    </div>
</div>
<!-- Finish Middle -->


<?php include('./layouts/page/footer.php') ?>