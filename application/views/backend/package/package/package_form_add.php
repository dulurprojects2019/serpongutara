<div class="content__inner">
    <header class="content__title">
        <a href="<?=site_url('list-paket')?>" type="button" class="btn btn-primary"><i class="zmdi zmdi-format-list-bulleted"></i> List Paket</a>

        <div class="actions">
            <a href="#" class="actions__item zmdi zmdi-trending-up"></a>
            <a href="#" class="actions__item zmdi zmdi-check-all"></a>

            <div class="dropdown actions__item">
                <i data-toggle="dropdown" class="zmdi zmdi-more-vert"></i>
                <div class="dropdown-menu dropdown-menu-right">
                    <a href="#" class="dropdown-item">Refresh</a>
                    <a href="#" class="dropdown-item">Manage Widgets</a>
                    <a href="#" class="dropdown-item">Settings</a>
                </div>
            </div>
        </div>
    </header>

    <div class="card">
        <div class="card-body">

            <form action="<?php echo site_url('package/add')?>" method="post" enctype="multipart/form-data">

                <div class="row">

                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Nama Paket<a style="color: red;">*</a></label>
                            <input type="text" name="inp_name"
                            <?php if (form_error('inp_name') == TRUE) {
                                echo 'class="form-control is-invalid"';
                            } ?>
                            class="form-control is-valid" placeholder="Enter Nama Paket ...">
                            <a style="color: red;"><?=form_error('inp_name')?></a>
                            <i class="form-group__bar"></i>
                        </div>
                    </div>

                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Harga Paket<a style="color: red;">*</a></label>
                            <input type="number" name="inp_price"
                            <?php if (form_error('inp_price') == TRUE) {
                                echo 'class="form-control is-invalid"';
                            } ?>
                            class="form-control is-valid" placeholder="Enter Harga Paket ...">
                            <a style="color: red;"><?=form_error('inp_price')?></a>
                            <i class="form-group__bar"></i>
                        </div>
                    </div>

                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Images Paket</label>
                            <input type="file" name="inp_images" class="form-control is-valid">
                            <a style="color: red;"><?=form_error('inp_images')?></a>
                            <i class="form-group__bar"></i>
                        </div>
                    </div>

                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Tags Paket<a style="color: red;">*</a></label>
                            <input type="text" name="inp_tags"
                            <?php if (form_error('inp_tags') == TRUE) {
                                echo 'class="form-control is-invalid"';
                            } ?>
                            class="form-control is-valid" placeholder="Enter Tags Paket ...">
                            <a style="color: red;"><?=form_error('inp_tags')?></a>
                            <i class="form-group__bar"></i>
                        </div>
                    </div>

                    <div class="card-body">
                        <div class="form-group">
                            <label>Description Paket</label>
                            <textarea id="editor1" name="inp_description" class="form-control is-valid" placeholder="Enter Deskripsi Paket ..."></textarea>
                            <i class="form-group__bar"></i> 
                        </div>
                    </div>

                     <div class="col-sm-6">
                        <div class="form-group">
                            <button type="Reset" class="btn btn-secondary"><i class="zmdi zmdi-refresh-sync"></i> Reset</button>
                            <button type="submit" class="btn btn-success"><i class="zmdi zmdi-mail-send"></i> Save</button>
                        </div>
                    </div>
                </div>

            </form>

        </div>
    </div>
</div>